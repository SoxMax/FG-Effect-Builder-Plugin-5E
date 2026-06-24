function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. number_value.getValue()
    local damageType = damage_types.getStringValue()
    if damageType ~= "" then
        effectString = effectString .. " " .. damageType
    end
    return effectString
end
