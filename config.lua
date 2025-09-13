Config = {}

---------------------------------
-- settings
---------------------------------
Config.Keybind = 'G' -- keybind prompt to open shop

---------------------------------
-- shop items

-- amount: default stock (remove to enable unlimited stock)
-- buyPrice: enables selling items to shop
-- maxStock: limits how much items players can sell to shop
-- minQuality: minimum quality that can be sold to shop (default 1)
-- restock: amount of items to be restocked per restock cycle

-- example: { name = 'bread', amount = 50, price = 0.10, buyPrice = 0.05, maxStock = 100, minQuality = 50, restock = 10 },
---------------------------------
Config.Products = {
    ['normal'] = {
        { name = 'bread', price = 0.10 },
        { name = 'water', price = 0.10 },
        { name = 'apple', price = 0.05 },
        { name = 'carrot', price = 0.05 },
        { name = 'coffee', price = 0.15 },
        { name = 'p_baitcheese01x', price = 0.25 },
        { name = 'bandana', price = 2.50 },
        -- itens raros de sobrevivência (estoque ilimitado)
        { name = 'antidote', price = 6.00 },
        { name = 'zombie_vaccine', price = 25.00 },
    },
    ['weapons'] = {
        { name = 'weapon_revolver_cattleman',            price = 50 },
        { name = 'weapon_revolver_doubleaction',         price = 127 },
        { name = 'weapon_revolver_doubleaction_gambler', price = 190 },
        { name = 'weapon_revolver_lemat',                price = 317 },
        { name = 'weapon_revolver_navy',                 price = 275 },
        { name = 'weapon_revolver_schofield',            price = 192 },
        { name = 'weapon_pistol_mauser',                 price = 600 },
        { name = 'weapon_pistol_semiauto',               price = 537 },
        { name = 'weapon_pistol_volcanic',               price = 270 },
        { name = 'weapon_rifle_boltaction',              price = 216 },
        { name = 'weapon_rifle_elephant',                price = 580 },
        { name = 'weapon_rifle_springfield',             price = 156 },
        { name = 'weapon_rifle_varmint',                 price = 72 },
        { name = 'weapon_repeater_carbine',              price = 90 },
        { name = 'weapon_repeater_evans',                price = 300 },
        { name = 'weapon_repeater_winchester',           price = 243 },
        { name = 'weapon_repeater_henry',                price = 348 },
        { name = 'weapon_sniperrifle_rollingblock',      price = 411 },
        { name = 'weapon_sniperrifle_carcano',           price = 456 },
        { name = 'weapon_shotgun_doublebarrel',          price = 180 },
        { name = 'weapon_shotgun_pump',                  price = 220 },
        { name = 'weapon_shotgun_semiauto',              price = 350 },
        { name = 'weapon_bow',                           price = 85 },
        { name = 'weapon_melee_knife',                   price = 15 },
        { name = 'weapon_melee_knife_jawbone',           price = 25 },
        { name = 'weapon_melee_knife_trader',            price = 35 },
        { name = 'weapon_melee_knife_horror',            price = 45 },
        { name = 'weapon_melee_knife_rustic',            price = 20 },
        { name = 'weapon_melee_machete',                 price = 40 },
        { name = 'weapon_melee_machete_horror',          price = 55 },
        { name = 'weapon_melee_machete_collector',       price = 65 },
        { name = 'weapon_melee_hatchet',                 price = 30 },
        { name = 'weapon_melee_hatchet_hunter',          price = 45 },
        { name = 'weapon_melee_hatchet_double_bit',      price = 55 },
        { name = 'weapon_melee_cleaver',                 price = 25 },
        { name = 'weapon_lasso',                         price = 20 },
        { name = 'weapon_lasso_reinforced',              price = 35 },
        { name = 'weapon_throwing_knives',               price = 50 },
        { name = 'weapon_tomahawk',                      price = 60 },
        { name = 'weapon_melee_torch',                   price = 5 },
        { name = 'weapon_melee_lantern',                 price = 8 },
        { name = 'weapon_melee_davy_lantern',            price = 12 },
        { name = 'ammo_box_revolver',                    price = 10 },
        { name = 'ammo_box_pistol',                      price = 10 },
        { name = 'ammo_box_rifle',                       price = 10 },
        { name = 'ammo_box_repeater',                    price = 10 },
        { name = 'ammo_box_shotgun',                     price = 10 },
        { name = 'ammo_box_rifle_elephant',              price = 10 },
        { name = 'ammo_box_varmint',                     price = 8 },
        { name = 'ammo_box_varmint_tranquilizer',        price = 15 },
        { name = 'ammo_arrow',                           price = 5 },
        { name = 'ammo_arrow_small_game',                price = 7 },
        { name = 'ammo_arrow_fire',                      price = 12 },
        { name = 'ammo_arrow_poison',                    price = 15 },
        { name = 'ammo_arrow_dynamite',                  price = 25 },
        { name = 'ammo_throwing_knives',                 price = 8 },
        { name = 'ammo_tomahawk',                        price = 12 },
        { name = 'ammo_hatchet',                         price = 10 },
    },
    ['armoury'] = {
        { name = 'weapon_revolver_cattleman',  price = 0 },
        { name = 'weapon_repeater_winchester', price = 0 },
        { name = 'ammo_box_revolver',          price = 0 },
        { name = 'ammo_box_repeater',          price = 0 },
    },
    ['prison'] = {
        { name = 'bread', price = 0.10 },
        { name = 'water', price = 0.10 },
    },
    ['medic'] = {
        { name = 'bandage',  price = 0 },
        { name = 'firstaid', price = 0 }
    },
}

---------------------------------
-- shop locations and blips

-- persistentStock (true/false): enables stock to persist over server restart
---------------------------------
Config.StoreLocations = {
    ---------------------------------
    -- general store
    ---------------------------------
    {
        label = 'Rhodes General Store',
        name = 'gen-rhodes',
        products = 'normal',
        shopcoords = vector3(1328.99, -1293.28, 77.02 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Valentine General Store',
        name = 'gen-valentine',
        products = 'normal',
        shopcoords = vector3(-322.433, 803.797, 117.882 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Strawberry General Store',
        name = 'gen-strawberry',
        products = 'normal',
        shopcoords = vector3(-1791.49, -386.87, 160.33 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Annesburg General Store',
        name = 'gen-annesburg',
        products = 'normal',
        shopcoords = vector3(2931.35, 1365.94, 45.19 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Saint Denis General Store',
        name = 'gen-stdenis',
        products = 'normal',
        shopcoords = vector3(2859.81, -1200.37, 49.59 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Tumbleweed General Store',
        name = 'gen-tumbleweed',
        products = 'normal',
        shopcoords = vector3(-5487.613, -2938.54, -0.38 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Armadillo General Store',
        name = 'gen-armadillo',
        products = 'normal',
        shopcoords = vector3(-3685.56, -2622.59, -13.43 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Blackwater General Store',
        name = 'gen-blackwater',
        products = 'normal',
        shopcoords = vector3(-785.18, -1323.83, 43.88 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Van Horn General Store',
        name = 'gen-vanhorn',
        products = 'normal',
        shopcoords = vector3(3027.03, 561.00, 44.72 -0.8),
        blipsprite = 'blip_shop_store',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    ---------------------------------
    -- gunsmith
    ---------------------------------
    {
        label = 'Valentine Gunsmith',
        name = 'wep-valentine',
        products = 'weapons',
        shopcoords = vector3(-281.24, 780.71, 119.53),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Tumbleweed Gunsmith',
        name = 'wep-tumbleweed',
        products = 'weapons',
        shopcoords = vector3(-5508.18, -2964.27, -0.63),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Saint Denis Gunsmith',
        name = 'wep-stdenis',
        products = 'weapons',
        shopcoords = vector3(2716.42, -1285.42, 49.63),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Rhodes Gunsmith',
        name = 'wep-rhodes',
        products = 'weapons',
        shopcoords = vector3(1322.75, -1321.47, 77.89),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },
    {
        label = 'Annesburg Gunsmith',
        name = 'wep-annesburg',
        products = 'weapons',
        shopcoords = vector3(2946.50, 1319.53, 44.82),
        blipsprite = 'blip_shop_gunsmith',
        blipscale = 0.2,
        showblip = true,
        persistentStock = false,
    },

}
