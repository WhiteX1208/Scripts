local NIG_1, NIG_2 = pcall(function()
    return http_request({
        Url = "https://minhnghia.pythonanywhere.com/totalexecute",
        Method = "POST"
    })
    end)
    if NIG_1 then
        print("SUCCESS!")
    else
        print(NIG_2)
    end
require(game:GetService("ReplicatedStorage").Notification).new("<Color=Green>Api Online 🟢!<Color=/>"):Display()
require(game:GetService("ReplicatedStorage").Notification).new("<Color=Green>Because Api Encode Changed then script will not work, please wait 5 - 7 minutes and try again<Color=/>"):Display()
require(game:GetService("ReplicatedStorage").Notification).new("<Color=Green>🛠️ If Fast Attack Not Work, Input '/console' in chat and send output message to @_luongminhnghia<Color=/>"):Display()
loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/4a8cd337b8f08a9c"))()
