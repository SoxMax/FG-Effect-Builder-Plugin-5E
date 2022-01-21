function createEffectString()
    local effectString = advantage.getStringValue() .. "CHK"
    if not ability.isEmpty() then
        effectString = effectString .. ": " .. ability.getValue()
    end

    return effectString
end
