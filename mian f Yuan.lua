local Icons = {
    ["lucide"] = loadstring(game:HttpGetAsync("https://raw.github.com/520-Ghost/-/main/lucide.lua"))(),
    ["craft"] = loadstring(game:HttpGetAsync("https://raw.github.com/520-Ghost/-/main/craft.lua"))(),      
}

local IconModule = {
    IconsType = "lucide" 
}

function IconModule.SetIconsType(iconType)
    IconModule.IconsType = iconType
end

function IconModule.Icon(Icon, Type)
    local iconType = Icons[Type or IconModule.IconsType]
    
    if iconType.Icons[Icon] then
        return { iconType.Spritesheets[tostring(iconType.Icons[Icon].Image)], iconType.Icons[Icon] }
    end
    return nil
end

return IconModule