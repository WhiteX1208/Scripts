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
require(game:GetService("ReplicatedStorage").Notification).new("<Color=Green>🛠️ Fixed Can't Attack<Color=/>"):Display()
loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/1e48209f4880ab89"))()
