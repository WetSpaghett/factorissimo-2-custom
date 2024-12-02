if not mods["space-age"] then return end

local F = "__factorissimo-3-wetspaghett-version__"
local pf = "p-q-"

data:extend{{
    name = "factory-upgrade-greenhouse",
    type = "technology",
    icon = F .. "/graphics/technology/factory-upgrade-greenhouse.png",
    icon_size = 256,
    prerequisites = {"factory-architecture-t3", "factory-interior-upgrade-lights"},
    effects = {},
    unit = {
        count = 2000,
        ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}},
        time = 60
    },
    order = pf .. "a-d",
}}

for _, tower in pairs(data.raw["agricultural-tower"]) do
    tower.surface_conditions = tower.surface_conditions or {}
    table.insert(tower.surface_conditions, {
        property = "solar-power",
        min = 25
    })
end
