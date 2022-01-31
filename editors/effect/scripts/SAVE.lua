function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. dice_value.getStringValue()
    if not save.isEmpty() then
        effectString = effectString .. " " .. save.getStringValue()
    end
    return effectString
end
