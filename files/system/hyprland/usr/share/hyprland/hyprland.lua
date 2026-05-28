hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "auto"
})

local terminal = "kitty"
local file_manager = "thunar"
local menu = "wofi --show drun"
local lock_command = "loginctl lock-session"

hl.on("hyprland.start", function()
    hl.exec_cmd("dbus-update-activation-environment --all")
    hl.exec_cmd("/usr/bin/gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("exec /usr/libexec/pam_kwallet_init")
    hl.exec_cmd("waybar & /usr/libexec/xfce-polkit & nm-applet")
    hl.exec_cmd("swayidle -w -C /usr/share/swayidle/config")
end)

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 20,

        border_size = 2,

        ["col.active_border"] = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
        ["col.inactive_border"] = "rgba(595959aa)",

        resize_on_border = false,
        allow_tearing = false,

	layout = "dwindle",
    },

    decoration = {
        rounding = 10,
	active_opacity = 1.0,
	inactive_opacity = 1.0,

	shadow = {
            enabled = true,
	    range = 4,
	    render_power = 3,
	    color = "rgba(1a1a1aee)",
	},

	blur = {
            enabled = true,
	    size = 3,
	    passes = 1,
	    vibrancy = 0.1696,
	},
    },

    animations = {
        enabled = true,
    },

    dwindle = {
        preserve_split = true,
    },

    master = {
        new_status = "master"
    },

    misc = {
        force_default_wallpaper = -1,
	disable_hyprland_logo = false
    },

    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll = false,
        }
    },
})

hl.bind("SUPER + Q", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + M", hl.dsp.exit())
hl.bind("SUPER + E", hl.dsp.exec_cmd(file_manager))
hl.bind("SUPER + V", hl.dsp.window.float())
hl.bind("SUPER + R", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + P", hl.dsp.window.pseudo())
hl.bind("SUPER + J", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + F", hl.dsp.window.fullscreen())
hl.bind("SUPER + L", hl.dsp.exec_cmd(lock_command))

hl.bind("SUPER + LEFT", hl.dsp.focus({direction = "l"}))
hl.bind("SUPER + RIGHT", hl.dsp.focus({direction = "r"}))
hl.bind("SUPER + UP", hl.dsp.focus({direction = "u"}))
hl.bind("SUPER + DOWN", hl.dsp.focus({direction = "d"}))

hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }))

hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 10%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

hl.window_rule({
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    match = { class = "^$", title = "^$", xwayland = 1 },
    float = 1,
    fullscreen = 0,
    pin = 0,
})

