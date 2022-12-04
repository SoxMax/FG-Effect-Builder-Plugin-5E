local index = 0
local emptyField = nil
local fields = {}
local fieldWidth = 100

local function createField()
    index = index + 1
    local newField = createControl("subwindow_eb_damage_type", "damage_type_" .. index)
    fields[newField] = true
    return newField
end

local function getFieldWidth(field)
    return field.getSize()
    -- return field.getSize() + field.anchored[1].left[1].offset[1]
end

function onInit()
    emptyField = createField()
    fieldWidth = getFieldWidth(emptyField)
end

function damageFieldUpdated(updatedField)
    if updatedField == emptyField then
        if updatedField.getStringValue() ~= "" then
            emptyField = createField()
            local width = getSize()
            parentcontrol.setAnchoredWidth(width + fieldWidth)
        end
    elseif updatedField.getStringValue() == "" then
        emptyField.destroy()
        fields[emptyField] = nil
        emptyField = updatedField
        local width = getSize()
        parentcontrol.setAnchoredWidth(width - fieldWidth)
    end
    getFieldWidth(emptyField)
end

function getStringValue()
    local fieldList = {}
    for field in pairs(fields) do
        local fieldValue = field.getStringValue()
        if fieldValue ~= "" then
            table.insert(fieldList, fieldValue)
        end
    end
    return table.concat(fieldList, ",")
end
