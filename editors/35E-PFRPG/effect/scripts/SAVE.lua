function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. effect_modifier.getValue()
    local save_type = save_type.getStringValue()
    if save_type ~= "" then
        effectString = effectString .. " " .. effect.getStringValue()
    end
    return effectString
end
