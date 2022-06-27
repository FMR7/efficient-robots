local efficiency = settings.startup["efficient-robots-efficiency"].value
local defaultEnergyPerTick = 0.05
local defaultEnergyPerMove = 5

if (efficiency > 0) then
    local energyPerTick = defaultEnergyPerTick - (defaultEnergyPerTick * efficiency / 100)
    local energyPerMove = defaultEnergyPerMove - (defaultEnergyPerMove * efficiency / 100)

    data.raw["logistic-robot"]["logistic-robot"].energy_per_tick = energyPerTick .. "kJ"
    data.raw["logistic-robot"]["logistic-robot"].energy_per_move = energyPerMove .. "kJ"
    data.raw["construction-robot"]["construction-robot"].energy_per_tick = energyPerTick .. "kJ"
    data.raw["construction-robot"]["construction-robot"].energy_per_move = energyPerMove .. "kJ"
end
