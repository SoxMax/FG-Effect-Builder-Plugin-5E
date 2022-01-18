function createEffectString()
    local effectString = parentcontrol.window.advantage.getStringValue() .. "CHK"
    if not skill.isEmpty() then
        effectString = effectString .. ": " .. skill.getValue()
    end

    return effectString
end
