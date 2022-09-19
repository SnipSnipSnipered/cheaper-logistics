--Logistics
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

--Transport belts
--Fast belt
    data.raw["recipe"]["fast-transport-belt"].ingredients =
    {
        {"iron-gear-wheel", 6},
        {"transport-belt", 2},
    }
    data.raw["recipe"]["fast-transport-belt"].result_count = 2

--Express belt
    data.raw["recipe"]["express-transport-belt"].ingredients =
    {
        {"iron-gear-wheel", 12},
        {"fast-transport-belt", 2},
        {type="fluid", name="lubricant", amount=40},
    }
    data.raw["recipe"]["express-transport-belt"].result_count = 2

--Check for startup setting that makes the undergrounds require their previous tier
if settings.startup["underground-requires-previous"].value == true then
    --Fast underground belt
    data.raw["recipe"]["fast-underground-belt"].ingredients =
    {
        {"fast-transport-belt", 7},
        {"underground-belt", 2},
    }
    --Express underground belt
    data.raw["recipe"]["express-underground-belt"].ingredients =
    {
        {"express-transport-belt", 9},
        {"fast-underground-belt", 2},
        {type="fluid", name="lubricant", amount=80},
    }
else
    --Fast underground belt
    data.raw["recipe"]["fast-underground-belt"].ingredients =
    {
        {"fast-transport-belt", 7},
        {"iron-plate", 4},
    }
    --Express underground belt
    data.raw["recipe"]["express-underground-belt"].ingredients =
    {
        {"express-transport-belt", 9},
        {"iron-plate", 4},
        {type="fluid", name="lubricant", amount=80},
    }
end

--Check for startup setting that makes the splitters require their previous tier
if settings.startup["splitters-requires-previous"].value == true then
    --Fast splitter
    data.raw["recipe"]["fast-splitter"].ingredients = 
    {
        {"splitter", 2},
        {"iron-gear-wheel", 4},
        {"electronic-circuit", 4},
    }
    --Express splitter
    data.raw["recipe"]["express-splitter"].ingredients =
    {
        {"fast-splitter", 2},
        {"iron-gear-wheel", 10},
        {"advanced-circuit", 5},
        {type="fluid", name="lubricant", amount=80},
    }
else
    --Fast splitter
    data.raw["recipe"]["fast-splitter"].ingredients = 
    {
        {"fast-transport-belt", 2},
        {"iron-gear-wheel", 4},
        {"electronic-circuit", 4},
    }
    --Express splitter
    data.raw["recipe"]["express-splitter"].ingredients =
    {
        {"express-transport-belt", 2},
        {"iron-gear-wheel", 10},
        {"advanced-circuit", 5},
        {type="fluid", name="lubricant", amount=80},
    }
end
