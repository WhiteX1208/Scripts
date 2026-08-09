repeat wait() until game:IsLoaded()
local ScriptUrl = "https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/BloxFruits.luau"
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Night Hub",
    Text = "New Link Script Copied to your clipboard!"
    Duration = 5,
})
setclipboard([[loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/BloxFruits.luau"))()]])
return loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/BloxFruits.luau"))()
