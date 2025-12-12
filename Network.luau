local a=getgenv()
local b
if not b then
b={}
local c={
connections={
insert=function(c,d)
c[#c+1]=d
end,
clear=function(c)
for d=1,#c do
local e=c[d]
if type(e)~="function"then
e:Disconnect()
table.remove(c,table.find(c,e))
end
end
end
},
remotes={
insert=function(c,d)
c[#c+1]=d
end
}
}
b.cache=c
function b.Retrieve(d,e,f)
local g=d.cache.remotes[e]
if not g then
if typeof(e)~="Instance"or not e then
g=game:FindFirstChild(e,true)
else
g=e
end
end
if g then
if g:IsA"RemoteEvent"then
d.cache.connections:insert(g.OnClientEvent:Connect(f))
d.cache.remotes[e]=g
elseif g:IsA"RemoteFunction"then
g.OnClientInvoke=f
d.cache.connections:insert(g.OnClientInvoke)
d.cache.remotes[e]=g
else
warn"Unable to Connect Network"
end
else
warn"Unable to Indentify Remote Network"
end
end
function b.Send(d,e,...)
local f,g=pcall(function(...)
local f=d.cache.remotes[e]
if not f then
if typeof(e)=="Instance"then
f=e
else
f=game:FindFirstChild(e,true)
end
end
if f then
if f:IsA"RemoteEvent"then
d.cache.remotes[e]=f
f:FireServer(...)
else
if f:IsA"RemoteFunction"then
d.cache.remotes[e]=f
return f:InvokeServer(...)
end
error"Unable to Connect Network"
end
else
error"Unable to Identify Remote Network"
end
end,...)
if not f then
warn("Error in Send function:",g)
end
return g
end
end
a.network=b
return b
