-- GO Light v0.8 - executar na Command Bar SERVER enquanto o Roblox Studio Play estiver ativo.
local w=game:GetService("Workspace")
local rs=game:GetService("ReplicatedStorage")
local stadium=w:FindFirstChild("GO_Light_Prototype")
local network=rs:FindFirstChild("GO_Light_Network")
local state=network and network:FindFirstChild("MatchState")
local ball=stadium and stadium:FindFirstChild("Bola_GO")
local bots=0
if stadium then
  for _,object in ipairs(stadium:GetChildren()) do
    if object:IsA("Model") and object.Name:sub(1,7)=="GO_NPC_" then bots+=1 end
  end
end
local checks={
 {"arena",stadium~=nil},
 {"rede",network~=nil and network:FindFirstChild("Action")~=nil},
 {"estado",state~=nil and state:GetAttribute("MatchID")~=nil},
 {"bola",ball~=nil and ball:IsA("BasePart")},
 {"nove NPCs",bots==9},
 {"fase",state~=nil and ({PLAY=true,GOAL=true,OUT=true,KICKOFF=true,HALF=true,END=true})[state:GetAttribute("Phase")]==true},
 {"chute carregado",state~=nil and state:GetAttribute("ChargedShotsBlue")~=nil},
 {"desarme",state~=nil and state:GetAttribute("TacklesBlue")~=nil},
 {"dominio",state~=nil and state:GetAttribute("ControlTeam")~=nil},
 {"conducoes",state~=nil and state:GetAttribute("DribblesBlue")~=nil},
 {"roubadas",state~=nil and state:GetAttribute("StealsRed")~=nil},
}
local failed=0
for _,check in ipairs(checks) do
 print((check[2] and "[PASS] " or "[FAIL] ")..check[1])
 if not check[2] then failed+=1 end
end
print(string.format("[GO Light v0.8] %d/%d checagens estruturais. Partida, fisica, rendering e malha R32 ainda exigem teste manual.",#checks-failed,#checks))
