-- Mirrors CoreRPG ActionHealthD20.getDamageModEffectKey(s1, s2):
--   s2 == ""  -> "IGNORE" .. s1   (e.g. IGNORERESIST)
--   s1 == ""  -> "MAKE"   .. s2   (e.g. MAKEABSORB)
--   else      -> s1 .. "TO" .. s2 (e.g. IMMUNETORESIST)
function getTag()
    local s1 = mod_from.getStringValue()
    local s2 = mod_to.getStringValue()
    if s1 == "" and s2 == "" then
        return ""
    end
    if s2 == "" then
        return "IGNORE" .. s1
    elseif s1 == "" then
        return "MAKE" .. s2
    end
    return s1 .. "TO" .. s2
end

function createEffectString()
    local tag = getTag()
    if tag == "" then
        return ""
    end
    local effectString = tag
    local damageType = damage_types.getStringValue()
    if damageType ~= "" then
        effectString = effectString .. ": " .. damageType
    end
    return effectString
end
