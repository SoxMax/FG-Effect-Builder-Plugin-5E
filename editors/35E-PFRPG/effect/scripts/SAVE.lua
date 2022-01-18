function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. StringManager.convertDiceToString(effect_dice.getDice(), effect_modifier.getValue())
    if not abilities.isEmpty() then
        effectString = effectString .. " " .. abilities.getStringValue()
    end
    return effectString
end
