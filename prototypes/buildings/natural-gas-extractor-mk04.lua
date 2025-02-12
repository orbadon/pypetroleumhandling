--[[
  RECIPE {
    type = "recipe",
    name = "natural-gas-extractor-mk04",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"electric-mining-drill", 4},
        {"steel-plate", 30},
        {"electronic-circuit", 10},
        {"engine-unit", 10},
    },
    results = {
        {"natural-gas-extractor-mk04", 1}
    }
}:add_unlock("oil-machines-mk04")
]]--

ITEM {
    type = "item",
    name = "natural-gas-extractor-mk04",
    icon = "__base__/graphics/icons/pumpjack.png",
    icon_size = 32,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk04",
    order = "a",
    place_result = "pumpjack",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "natural-gas-extractor-mk04",
    icon = "__base__/graphics/icons/pumpjack.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "natural-gas-seep-mk04"},
    resource_categories = {"natural-gas"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      emissions_per_second_per_watt = 10 / 90000,
      usage_priority = "secondary-input"
    },
    output_fluid_box =
    {
      base_area = 1,
      base_level = 1,
      pipe_covers = DATA.Pipes.covers(false, true, true, true),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      }
    },
    energy_usage = "1000kW",
    mining_speed = 4,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 2
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_render_layer = "lower-object-above-shadow",
    base_picture =
    {
      sheets =
      {
          {
            filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          },
          {
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/natural-gas-pumpjack/hr-pumpjack-base-mask-2.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5,
            tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
          },
          {
            filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-base-shadow.png",
            width = 220,
            height = 220,
            scale = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(6, 0.5)
          }
        }
      },
    animations =
    {
      north =
      {
        layers =
        {
          {
            priority = "high",
              filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead.png",
              animation_speed = 0.5,
              scale = 0.5,
              line_length = 8,
              width = 206,
              height = 202,
              frame_count = 40,
              shift = util.by_pixel(-4, -24)
          },
          {
            priority = "high",
            filename = "__pypetroleumhandlinggraphics__/graphics/entity/natural-gas-pumpjack/hr-pumpjack-horsehead-mask.png",
              animation_speed = 0.5,
              scale = 0.5,
              line_length = 8,
              width = 206,
              height = 202,
              frame_count = 40,
              shift = util.by_pixel(-4, -24),
              tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
          },
          {
            priority = "high",
              filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead-shadow.png",
              animation_speed = 0.5,
              draw_as_shadow = true,
              line_length = 8,
              width = 309,
              height = 82,
              frame_count = 40,
              scale = 0.5,
              shift = util.by_pixel(17.75, 14.5)
          }
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5
    },
    fast_replaceable_group = "pumpjack",
  }
