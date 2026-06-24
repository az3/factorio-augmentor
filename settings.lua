data:extend({
    {
        type = "double-setting",
        name = "augmentor-base-quality",
        setting_type = "startup",
        minimum_value = 1,
        maximum_value = 100,
        default_value = 10,
        order = "a"
    },
    {
        type = "double-setting",
        name = "augmentor-base-crafting-speed",
        setting_type = "startup",
        minimum_value = 1,
        maximum_value = 20,
        default_value = 10,
        order = "b"
    },
    {
        type = "double-setting",
        name = "augmentor-result-chance",
        setting_type = "startup",
        minimum_value = 1,
        maximum_value = 100,
        default_value = 90,
        order = "c"
    },
    {
        type = "bool-setting",
        name = "augmentor-module-ban",
        setting_type = "startup",
        default_value = false,
        order = "d"
    }
})
