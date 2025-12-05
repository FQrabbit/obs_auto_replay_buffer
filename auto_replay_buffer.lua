obs = obslua

local enable_auto_start = true
local delay_seconds = 8  
local timer_activated = false  

function script_description()
    return [[
自动启用回放缓存功能

功能：OBS启动时自动开启回放缓存，可自定义延迟时间

使用前请确保：
1. 已在OBS"设置-输出-回放缓存"中配置缓存路径
2. 回放缓存功能可手动正常启用

作者: FQrabbit
版本: 1.3
Github: https://github.com/FQrabbit/obs_auto_replay_buffer
    ]]
end

function script_load(settings)
    enable_auto_start = obs.obs_data_get_bool(settings, "enable_auto_start")
    delay_seconds = obs.obs_data_get_int(settings, "delay_seconds") or 5

    if enable_auto_start and not timer_activated then
        timer_activated = true  

        obs.timer_add(function()
            local replay_buffer_enabled = obs.obs_frontend_replay_buffer_active()

            if not replay_buffer_enabled then
                obs.obs_frontend_replay_buffer_start()
                obs.script_log(obs.LOG_INFO, "OBS启动时已自动启用回放缓存")
            else
                obs.script_log(obs.LOG_INFO, "OBS启动时回放缓存已启用")
            end

            obs.remove_current_callback()
        end, delay_seconds * 1000)
    end
end

function script_properties()
    local props = obs.obs_properties_create()

    local auto_start_prop = obs.obs_properties_add_bool(
        props, 
        "enable_auto_start", 
        "自动启用回放缓存"
    )
    obs.obs_property_set_long_description(
        auto_start_prop, 
        "OBS启动后是否自动开启回放缓存功能"
    )

    local delay_prop = obs.obs_properties_add_int_slider(
        props, 
        "delay_seconds", 
        "延迟时间（秒）", 
        1, 30, 1
    )
    obs.obs_property_set_long_description(
        delay_prop, 
        "OBS启动后等待多久再自动启用回放缓存（建议根据电脑性能调整）"
    )

    return props
end

function script_defaults(settings)
    obs.obs_data_set_default_bool(settings, "enable_auto_start", true)
    obs.obs_data_set_default_int(settings, "delay_seconds", 8)
end

function script_update(settings)
    enable_auto_start = obs.obs_data_get_bool(settings, "enable_auto_start")
    delay_seconds = obs.obs_data_get_int(settings, "delay_seconds") or 8

    timer_activated = false
end

function script_save(settings)
end
