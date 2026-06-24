function createEffectString()
    local base = parentcontrol.window.effect.getStringValue() .. ": "
    if size_mode.getStringValue() == "Step" then
        local sign = "+"
        if plus_minus.getStringValue() == "-" then
            sign = "-"
        end
        return base .. sign .. steps.getValue()
    end
    return base .. size.getValue()
end
