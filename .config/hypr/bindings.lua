-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

hl.unbind("SUPER + SPACE")
o.bind("SUPER + SPACE", "Apps menu", "omarchy-menu toggle apps")
hl.unbind("SUPER + ALT + SPACE")
o.bind("SUPER + ALT + SPACE", "Omarchy menu", "omarchy-menu toggle")

-- Application bindings
o.bind("SUPER + B", "Browser", "zen-browser")

-- -- If your web app url contains #, type it as ## to prevent hyprland treating it as a comment
-- o.bind("SUPER + SHIFT + A", "ChatGPT", 'omarchy-launch-webapp "https://chatgpt.com"')
-- o.bind("SUPER + SHIFT + C", "Calendar", 'omarchy-launch-webapp "https://app.hey.com/calendar/weeks/"')
-- o.bind("SUPER + SHIFT + E", "Email", 'omarchy-launch-webapp "https://app.hey.com"')
-- o.bind("SUPER + SHIFT + Y", "YouTube", 'omarchy-launch-webapp "https://youtube.com/"')
-- o.bind("SUPER + SHIFT + ALT + G", "WhatsApp", 'omarchy-launch-or-focus-webapp WhatsApp "https://web.whatsapp.com/"')

-- Change default Keybinds Menu
hl.unbind("SUPER + K")
o.bind("SUPER + ALT + K", "Show Key Bindings", "omarchy-menu-keybindings")

-- Kill active rebind
hl.unbind("SUPER + W")
hl.bind("SUPER + Q", hl.dsp.window.close(), { desc = "Kill active window" })

-- Move focus current workspace (vim keybinds)
hl.bind("SUPER + H", hl.dsp.focus({ direction = "left" }))
hl.unbind("SUPER + L") -- Remove toggle workspace
hl.bind("SUPER + L", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "up" }))
hl.unbind("SUPER + J") -- Remove default hyprland implementation
hl.bind("SUPER + J", hl.dsp.focus({ direction = "down" }))

-- Move window with vim keys (same as SUPER + SHIFT + arrows)
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Navigate workspaces (in use) with SUPER + arrows
hl.bind("SUPER + left", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + right", hl.dsp.focus({ workspace = "e+1" }))

-- Screenshot with editing (another way to toggle it)
hl.unbind("SUPER + SHIFT + S")
o.bind("SUPER + SHIFT + S", "Screenshot with editing", "omarchy capture screenshot")

-- Overwrite existing bindings, like putting Omarchy Menu on Super + Space
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu")
