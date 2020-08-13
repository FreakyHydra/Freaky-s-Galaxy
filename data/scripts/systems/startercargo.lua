package.path = package.path .. ";data/scripts/systems/?.lua"
package.path = package.path .. ";data/scripts/lib/?.lua"
include ("basesystem")
include ("utility")
include ("randomext")

-- optimization so that energy requirement doesn't have to be read every frame
FixedEnergyRequirement = true

function getBonuses(seed, rarity, permanent)
    return 2500
end

function onInstalled(seed, rarity, permanent)
    local flat = getBonuses(seed, rarity, permanent)

    addAbsoluteBias(StatsBonuses.CargoHold, flat)
end

function onUninstalled(seed, rarity, permanent)

end

function getName(seed, rarity)
    return "Expanded Cargohold T2500"%_t
end

function getIcon(seed, rarity)
    return "data/textures/icons/crate.png"
end

function getEnergy(seed, rarity, permanent)
    return 0
end

function getPrice(seed, rarity)
    return 0
end

function getTooltipLines(seed, rarity, permanent)
    local texts = {}
    local flat = getBonuses(seed, rarity, permanent)

    table.insert(texts, {ltext = "Cargo Hold"%_t, rtext = string.format("%+i", flat), icon = "data/textures/icons/crate.png", boosted = permanent})
    return texts
end

function getDescriptionLines(seed, rarity, permanent)
    return
    {
        {ltext = "Compressing ores using a Quantum Press"%_t, lcolor = ColorRGB(1, 0.5, 0.5)}
    }
end
