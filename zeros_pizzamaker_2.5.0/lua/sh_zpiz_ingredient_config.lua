zpiz = zpiz or {}
zpiz.config = zpiz.config or {}

zpiz.config.Ingredient = {
    // How many ingredients can each player spawn
    Limit = 10,

    // How long until the ingredient despawn, -1 disables this function
    Despawn = 60
}

// This Sets up our Fridge Shop and also the available Ingredients for Pizza
zpiz.config.Ingredients = {}
local function AddIngredient(data) return table.insert(zpiz.config.Ingredients,data) end

ZPIZ_ING_DOUGH = AddIngredient({
    name = "Masa",
    model = "models/zerochain/props_pizza/zpiz_pizzadough.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_dough.png", "smooth"),
    desc = "La masa",
    price = 15
})

ZPIZ_ING_TOMATO = AddIngredient({
    name = "Salsa de tomate",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_tomato.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_tomato.png", "smooth"),
    desc = "La Salsa Base",
    price = 10,
    color = Color(200, 0, 0)
})

ZPIZ_ING_CHEESE = AddIngredient({
    name = "Queso",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_cheese.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_cheese.png", "smooth"),
    desc = "Un poco de queso maloliente",
    price = 15,
    color = Color(252, 223, 118)
})

ZPIZ_ING_SPINAT = AddIngredient({
    name = "Espinaca",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_spinat.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_spinat.png", "smooth"),
    desc = "Podría ser espinacas, no sé",
    price = 15,
    color = Color(139, 164, 60)
})

ZPIZ_ING_SALAMI = AddIngredient({
    name = "Salami",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_salami.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_salami.png", "smooth"),
    desc = "Digamos que es Salami, okay",
    price = 75,
    color = Color(131, 23, 29)
})

ZPIZ_ING_OLIVES = AddIngredient({
    name = "Aceitunas",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_olives.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_olive.png", "smooth"),
    desc = "¡Unas aceitunas frescas!",
    price = 10,
    color = Color(156, 155, 34)
})

ZPIZ_ING_EGGPLANT = AddIngredient({
    name = "Berenjena",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_eggplant.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_eggplant.png", "smooth"),
    desc = "Berenjena",
    price = 80,
    color = Color(90, 14, 94)
})

ZPIZ_ING_CHILLI = AddIngredient({
    name = "Chilli",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_chilli.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_chilli.png", "smooth"),
    desc = "So Hot!",
    price = 75,
    color = Color(255, 57, 57)
})

ZPIZ_ING_PICKLE = AddIngredient({
    name = "Pepinillo",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_pickle.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_pickle.png", "smooth"),
    desc = "¡Es un pepinillo!",
    price = 25,
    color = Color(25, 31, 19)
})

ZPIZ_ING_MUSHROOM = AddIngredient({
    name = "Hongo",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_mushroom.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_mushroom.png", "smooth"),
    desc = "Un hongo",
    price = 15,
    color = Color(249, 220, 178)
})

ZPIZ_ING_PINEAPPLE = AddIngredient({
    name = "Piña",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_pineapple.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_pineapple.png", "smooth"),
    desc = "Gay",
    price = 80,
    color = Color(238, 175, 74)
})

ZPIZ_ING_EGG = AddIngredient({
    name = "Huevo",
    model = "models/props_phx/misc/egg.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_egg.png", "smooth"),
    desc = "Un huevo",
    price = 50,
    color = Color(229, 229, 229)
})

ZPIZ_ING_BACON = AddIngredient({
    name = "Tocino",
    model = "models/zerochain/props_pizza/zpizmak_ingredient_bacon.mdl",
    icon = Material("materials/zerochain/zpizmak/ui/icons/zpizmak_bacon.png", "smooth"),
    desc = "¡Tocino! ¡Tocino! ¡Tocino!",
    price = 75,
    color = Color(118, 29, 33)
})
