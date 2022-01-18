function createEffectString()
    local effectString = parentcontrol.window.advantage.getStringValue() .. "CHK"
    if not ability.isEmpty() then
        effectString = effectString .. ": " .. ability.getStringValue()
    end

    return effectString
end
