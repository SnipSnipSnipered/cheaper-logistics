--Logistics
data.raw["recipe"]["transport-belt"].ingredients =
{
    {"iron-plate", 1},
    {"iron-gear-wheel", 1},
}

data.raw["recipe"]["underground-belt"].ingredients =
{
    {"transport-belt", 5},
    {"iron-plate", 4},
}

data.raw["recipe"]["splitter"].ingredients = 
{
    {"transport-belt", 2},
    {"electronic-circuit", 2},
    {"iron-plate", 2},
}

--Fast logistics
data.raw["recipe"]["fast-transport-belt"].ingredients =
{
    {"iron-gear-wheel", 6},
    {"transport-belt", 2},
}
data.raw["recipe"]["fast-transport-belt"].result_count = 2

data.raw["recipe"]["fast-underground-belt"].ingredients =
{
    {"fast-transport-belt", 7},
    {"iron-plate", 4},
}

data.raw["recipe"]["fast-splitter"].ingredients = 
{
    {"fast-transport-belt", 2},
    {"iron-gear-wheel", 4},
    {"electronic-circuit", 4},
}

--Express logistics
data.raw["recipe"]["express-transport-belt"].ingredients =
{
    {"iron-gear-wheel", 12},
    {"fast-transport-belt", 2},
    {type="fluid", name="lubricant", amount=40},
}
data.raw["recipe"]["express-transport-belt"].result_count = 2

data.raw["recipe"]["express-underground-belt"].ingredients =
{
    {"express-transport-belt", 9},
    {"iron-plate", 4},
    {type="fluid", name="lubricant", amount=80},
}

data.raw["recipe"]["express-splitter"].ingredients =
{
    {"express-transport-belt", 2},
    {"iron-gear-wheel", 10},
    {"advanced-circuit", 5},
    {type="fluid", name="lubricant", amount=80},
}

table.insert(data.raw["technology"]["stone-wall"].effects =
{
    data.raw["wall"]["stone-wall"].resistances = 
    {
        type = "explosion",
        percent = 100
    }
}
)