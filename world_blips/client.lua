Citizen.CreateThread(function()
    -- Load the textures
    RequestStreamedTextureDict("world_blips", 1)
    while not HasStreamedTextureDictLoaded("world_blips") do
        Wait(0)
    end

    -- Add the Observatory blip
    local blip = AddBlipForCoord(-422.399750,1135.010986,325.854462)
    SetBlipSprite(blip, 378)
    SetBlipColour(blip, 3)

    -- Add all the cool info to the blip
    exports['blip_info']:SetBlipInfoTitle(blip, "Observatory", false)
    exports['blip_info']:SetBlipInfoImage(blip, "world_blips", "observatory")
    exports['blip_info']:AddBlipInfoText(blip, "Rating", "85%")
    exports['blip_info']:AddBlipInfoName(blip, "Created by", "Rockstar")
    exports['blip_info']:AddBlipInfoText(blip, "Rank", "25")
    exports['blip_info']:AddBlipInfoText(blip, "Players", "4 - 8")
    exports['blip_info']:AddBlipInfoText(blip, "Teams", "2")
    exports['blip_info']:AddBlipInfoIcon(blip, "Type", "Team Deathmatch", 4, 9, false)
    exports['blip_info']:AddBlipInfoText(blip, "Area", "Galileo Observatory")
    exports['blip_info']:AddBlipInfoHeader(blip, "") -- Empty header adds the header line
    exports['blip_info']:AddBlipInfoText(blip, "See if your stars are in alignment with this deathmatch at the Galileo Observatory. Great for tourists or folks taking a break from cruising young bucks in the Gal...")
end)
