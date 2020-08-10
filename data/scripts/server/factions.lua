

local OldinitializePlayer = initializePlayer
function initializePlayer(player)
    OldinitializePlayer(player)
    local money = 500000
    local resources = 200000

    player:receive(money, resources, resources, resources)
end