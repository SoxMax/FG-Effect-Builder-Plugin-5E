function createEffectString()
    local effectString = parentcontrol.window.advantage.getStringValue() .. "SAV"
    if not save.isEmpty() then
        effectString = effectString .. ": " .. save.getStringValue()
    end

    return effectString
end
