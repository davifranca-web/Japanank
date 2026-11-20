-- GO Light Roblox v0.10 - Smoke test de elenco.
-- Cole na Command Bar do Roblox Studio (Server, durante Play).
-- Somente LEITURA: nao altera moedas, elenco nem DataStore.
local players=game:GetService("Players")
local network=game:GetService("ReplicatedStorage"):FindFirstChild("GO_Light_Network")
local club=network and network:FindFirstChild("GO_ClubProfiles")
local action=network and network:FindFirstChild("ClubAction")
local state=network and network:FindFirstChild("MatchState")
local p=players:GetPlayers()[1]
local profile=p and club and club:FindFirstChild(tostring(p.UserId))
local checks={
  {"rede da partida",network~=nil},
  {"evento de clube",action~=nil and action:IsA("RemoteEvent")},
  {"pasta de elencos",club~=nil},
  {"jogador de teste",p~=nil},
  {"perfil de equipe",profile~=nil},
  {"moedas no servidor",profile~=nil and typeof(profile:GetAttribute("Credits"))=="number"},
  {"dez titulares",profile~=nil and profile:GetAttribute("SlotId10")~=nil},
  {"estado do save",profile~=nil and profile:GetAttribute("SaveStatus")~=nil},
  {"fase da partida",state~=nil and state:GetAttribute("Phase")~=nil},
}
local ids={}
local unique=true
if profile then
  for i=1,10 do
    local id=profile:GetAttribute("SlotId"..i)
    if id==nil or ids[id] then unique=false end
    ids[id]=true
  end
else unique=false end
table.insert(checks,{"sem duplicatas na escala",unique})
local passed=0
for _,entry in ipairs(checks) do
    print((entry[2] and "[PASS] " or "[FAIL] ")..entry[1])
    if entry[2] then passed+=1 end
end
print(string.format("GO v0.10 estrutural: %d/%d; ainda verifique UI, partida, save e render em Play.",passed,#checks))
