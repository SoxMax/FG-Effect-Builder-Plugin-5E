function createEffectString()
    local tag = parentcontrol.window.effect.getStringValue() .. turn_timing.getStringValue()
    return tag .. ": " .. dice_value.getStringValue()
end
