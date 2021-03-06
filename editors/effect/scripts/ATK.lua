function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. dice_value.getStringValue()
    local descriptors = {}
    local effectRange = effect_range.getStringValue()
    if effectRange ~= "" then
        table.insert(descriptors, effectRange)
    end
    if effect_opportunity.getValue() > 0 then
        table.insert(descriptors, "opportunity")
    end

    if next(descriptors) then
        effectString = effectString .. " " .. table.concat(descriptors, ",")
    end

    return effectString
end
