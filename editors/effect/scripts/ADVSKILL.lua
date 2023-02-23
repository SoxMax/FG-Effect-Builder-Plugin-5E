function createEffectString()
    local effectString = advantage.getStringValue() .. "SKILL"
    if not skill.isEmpty() then
        effectString = effectString .. ": " .. skill.getValue()
    end

    return effectString
end
