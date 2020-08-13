

local OldinitializePlayer = initializePlayer
function initializePlayer(player)
    OldinitializePlayer(player)
    local money = 500000
    local resources = 200000

    player:receive(money, resources, resources, resources)

    local cargoupgrade = SystemUpgradeTemplate("data/scripts/systems/startercargo.lua", Rarity(RarityType.Exotic), Random():createSeed())
    player:getInventory():add(cargoupgrade, false)
end