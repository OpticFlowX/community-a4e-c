name = "Community A-4E III: Forever Free"
countries = {
    "ABH",  --Abkhazia
    "ARG",  --Argentina
    "AUS",  --Australia
    "AUT",  --Austria
    "BLR",  --Belarus
    "BEL",  --Belgium
    "BGR",  --Bulgaria
    "CAN",  --Canada
    "CHL",  --Chile
    "CHN",  --China
    "HRV",  --Croatia
    "CZE",  --Czech Republic
    "DEN",  --Denmark
    "EGY",  --Egypt
    "FIN",  --Finland
    "FRA",  --France
    "GRG",  --Georgia
    "GER",  --Germany
    "GRC",  --Greece
    "HUN",  --Hungary
    "IND",  --India
    "INS",  --Insurgents
    "IRN",  --Iran
    "IRQ",  --Iraq
    "ISR",  --Israel
    "ITA",  --Italy
    "JPN",  --Japan
    "KAZ",  --Kazakhstan
    "NETH", --Netherlands
    "PRK",  --North Korea
    "NOR",  --Norway
    "PAK",  --Pakistan
    "POL",  --Poland
    "ROU",  --Romania
    "RUS",  --Russia
    "SAU",  --Saudi Arabia
    "SRB",  --Serbia
    "SVK",  --Slovakia
    "KOR",  --South Korea
    "RSO",  --South Ossetia
    "SPN",  --Spain
    "SWE",  --Sweden
    "SUI",  --Switzerland
    "SYR",  --Syria
    "TUR",  --Turkey
    "UK",   --UK
    "UKR",  --Ukraine
    "USA",  --USA
    "AUSAF" --USAF Aggressors
}

livery =
{
  {"Top", 0, "community-a4e3-top", true};
  {"Top", ROUGHNESS_METALLIC, "community-a4e3-top_RoughMet", true};
  {"Bottom", 0, "community-a4e3-bot", true};
  {"Bottom", ROUGHNESS_METALLIC, "community-a4e3-bot_RoughMet", true};
  {"Gear and metal", 0, "community-a4e3-bot", true};
  {"Cockpit", 0, "community-a4e-bot", true};
  --{"Front",	0, "fus_front", true};
  --{"cockpitWheelHardpoints", 0, "details1cockpitwheelshardpoints", true};
  --{"Gear Bay", 0, "details1cockpitwheelshardpoints", true};

  -- flaps, used on most liveries
  {"flaps_001", 0, "a4e_bort_white_smooth", true};
  {"flaps_010", 0, "empty", true};
  {"flaps_100", 0, "empty", true};

  -- three digit, smaller nose numbers, used on most liveries
  {"nose_001", 0, "empty", true};
  {"nose_010", 0, "empty", true};
  {"nose_100", 0, "empty", true};

  -- two digit top-of-tail, used on most USMC liveries
  {"tail_aggressor_001", 0, "a4e_bort_white_smooth", true};
  {"tail_aggressor_010", 0, "empty", true};

  -- three digit top-of-rudder, used on most USN liveries
  {"rudder_001", 0, "empty", true};
  {"rudder_010", 0, "empty", true};
  {"rudder_100", 0, "empty", true};

  -- wing bort used on most USN liveries
  {"wing_001", 0, "empty", true};
  {"wing_010", 0, "empty", true};
  {"wing_100", 0, "empty", true};

  -- 2-digit large nose numbers, used on USN/USMC aggressors
  {"nose_aggressor_001", 0, "a4e_bort_red-white_smooth", true};
  {"nose_aggressor_010", 0, "empty", true};

  -- 3-digit large tail numbers, used on some USN/USMC aggressors
  {"tail_001", 0, "empty", true};
  {"tail_010", 0, "empty", true};
  {"tail_100", 0, "empty", true};

  -- custom fuel tanks: 150 gallon
  {"fuel_150_a4e", 0, "uvMapsFuelTank_DFT150_DFT300_community_a4e", true};

  -- custom fuel tank: 300 gallon left/right
  {"fuel_300lr_a4e", 0, "uvMapsFuelTank_DFT150_DFT300_community_a4e", true};

  -- custom fuel tank: 300 gallon center
  {"fuel_300c_a4e", 0, "uvMapsFuelTank_DFT150_DFT300_community_a4e", true};
}