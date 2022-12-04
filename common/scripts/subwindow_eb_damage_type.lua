function getStringValue()
    if not damage_type.isEmpty() then
        return negator.getStringValue() .. damage_type.getValue()
    end
    return ""
end

function damageFieldUpdated()
    parentcontrol.window.damageFieldUpdated(parentcontrol)
end
