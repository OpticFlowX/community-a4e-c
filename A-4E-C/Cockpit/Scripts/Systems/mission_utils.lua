
dofile(LockOn_Options.common_script_path.."tools.lua")
dofile(LockOn_Options.script_path.."utils.lua")

function find_mobile_tacan_and_icls()
    local tacan_to_id = {}
    local icls_to_id = {}

    

    for i,v in ipairs(mission.coalition.blue.country) do
        
        if v.ship then
            local groups = v.ship.group
            append_beacons_to_id(groups, tacan_to_id, icls_to_id)
        end

        if v.plane then
            local groups = v.plane.group
            append_beacons_to_id(groups, tacan_to_id, icls_to_id)
        end

        if v.vehicle then
            local groups = v.vehicle.group
            append_beacons_to_id(groups, tacan_to_id, icls_to_id)
        end

    end

    for i,v in ipairs(mission.coalition.red.country) do
        
        if v.ship then
            local groups = v.ship.group
            append_beacons_to_id(groups, tacan_to_id, icls_to_id)
        end

        if v.plane then
            local groups = v.plane.group
            append_beacons_to_id(groups, tacan_to_id, icls_to_id)
        end

        if v.vehicle then
            local groups = v.vehicle.group
            append_beacons_to_id(groups, tacan_to_id, icls_to_id)
        end

    end

    return tacan_to_id, icls_to_id
end

function addDashes(name)
    local number = name:sub(-2)
    print_message_to_user(tostring(number))

    local callsign = name:sub(1, -3)
    print_message_to_user(tostring(callsign))

    callsign = callsign .. number:sub(1,1) .. "-" .. number:sub(2,2)
    print_message_to_user(tostring(callsign))
    return callsign
end

function append_beacons_to_id(groups, tacan_to_id, icls_to_id)
    for key,value in ipairs(groups) do
        local points = value["route"]["points"]

        --local tacan_value, callsign, override_id 
        
        local group_beacon_data = search_waypoints_for_beacons(points)
        local unit_id = value["units"][1]["unitId"]

        for i,unit in ipairs(group_beacon_data) do
            local unit_id_to_use = unit_id
            if unit.unitid then
                unit_id_to_use = unit.unitid
            end

            local name = find_name_by_id(value["units"], unit_id_to_use)

            local table_to_use = tacan_to_id

            if unit.type == "icls" then
                append_group_beacon_data(icls_to_id, unit.channel, unit_id_to_use, name, unit.callsign)
            else
                append_group_beacon_data(tacan_to_id, unit.channel, unit_id_to_use, name, unit.callsign)
            end
        end
    end
end

function append_group_beacon_data(t, channel, unit_id, name, callsign)
    if t[channel] == nil then
        t[channel] = {}
        t[channel][1] = { id = unit_id, name = name, callsign = callsign }
    else
        local len = #t[channel]
        t[channel][len+1] = { id = unit_id, name = name, callsign = callsign }
    end
end


function find_name_by_id(units, unit_id)
    name = units[1]["name"]

    for i,v in ipairs(units) do
        if v["unitId"] == unit_id then
            name = v["name"]
            break
        end
    end

    return name
end

function search_waypoints_for_beacons(points)

    local group_beacon_data = {}

    for wpt_num,waypoint in ipairs(points) do
        
        if waypoint["task"] and waypoint["task"]["params"] then

            local params = waypoint["task"]["params"]

            if params["tasks"] then

                local tasks = params["tasks"]
                

                for task_num, task in ipairs(tasks) do

                    if task["params"] and task["params"]["action"] then
                        local action = task["params"]["action"]

                        if action["id"] == "ActivateBeacon" then
                            group_beacon_data[#group_beacon_data + 1 ] = {
                                channel = action["params"]["channel"],
                                callsign = action["params"]["callsign"],
                                unitid = action["params"]["unitId"],
                                type = "tacan"
                            }
                        elseif action["id"] == "ActivateICLS" then
                            group_beacon_data[#group_beacon_data + 1] = {
                                channel = action["params"]["channel"],
                                callsign = "",
                                uintid = action["params"]["unitId"],
                                type = "icls"
                            }
                        end
                    end
                end
            end
        end
    end
    
    return group_beacon_data
end

function recursively_search_value(table, search_value)
    local i,v = next(table, nil)

    while i do
        if v == search_value then
            return i,v
        end

        i,v = next(table, i)
    end

    return nil, nil

end