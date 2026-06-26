function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": "
    local descriptors = {}
    if not damage_type.isEmpty() then
        table.insert(descriptors, damage_type.getValue())
    end
    local actionType = action_type.getStringValue()
    if actionType ~= "" then
        table.insert(descriptors, actionType)
    end
    return effectString .. table.concat(descriptors, ",")
end
