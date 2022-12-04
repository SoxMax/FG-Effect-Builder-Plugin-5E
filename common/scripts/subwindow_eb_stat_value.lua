function getStringValue()
    local valueString = stat_value.getStringValue()
    if valueString ~= "" then
        local sign = multiply_divide.getStringValue()
        local factor_value = factor.getValue()
        if sign == "x" and factor_value >= 2 then
            valueString = factor_value .. valueString
        elseif sign == "/" and factor_value >= 2 then
            if factor_value == 2 then
                valueString = "H" .. valueString
            elseif factor_value == 3 then
                valueString = "T" .. valueString
            elseif factor_value == 4 then
                valueString = "Q" .. valueString
            end
        end
        valueString = "[" .. plus_minus.getStringValue() .. valueString .."]"
    end
    return valueString
end

function onTagValueChanged(tagControl)
    local otherTagControl = stat_value
    if otherTagControl == tagControl then
        otherTagControl = class_value
    end
    if tagControl.getStringValue() ~= "" and otherTagControl.getStringValue() ~= "" then
        otherTagControl.setStringValue("")
    end
end
