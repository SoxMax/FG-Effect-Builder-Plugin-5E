function onInit()
    super.onInit()
    local labels = {}
    local values = {}
    for class,classLabel in pairs(DataCommon.class_valuetoname) do
        table.insert(labels, classLabel)
        table.insert(values, class:upper())
    end
    self.initialize(table.concat(labels, "|"), table.concat(values, "|"), "None", nil, "")
end
