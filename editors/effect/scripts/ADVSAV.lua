function createEffectString()
    local effectString = advantage.getStringValue() .. "SAV"
    if not save.isEmpty() then
        effectString = effectString .. ": " .. save.getValue()
    end

    return effectString
end
