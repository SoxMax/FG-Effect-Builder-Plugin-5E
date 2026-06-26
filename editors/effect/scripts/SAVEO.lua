function createEffectString()
    local tag = parentcontrol.window.effect.getStringValue() .. turn_timing.getStringValue()
    local effectString = tag .. ": " .. number_value.getValue()
    if not save.isEmpty() then
        effectString = effectString .. " " .. save.getValue()
    end
    return effectString
end
