function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. StringManager.convertDiceToString(effect_dice.getDice(), effect_modifier.getValue())
    if not save.isEmpty() then
        effectString = effectString .. " " .. save.getStringValue()
    end
    return effectString
end
