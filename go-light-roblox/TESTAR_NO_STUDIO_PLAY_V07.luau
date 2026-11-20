-- GO Light v0.7 -- teste manual para Command Bar do Roblox Studio (Server durante Play)
local Workspace=game:GetService("Workspace")
local ReplicatedStorage=game:GetService("ReplicatedStorage")
local gameFolder=Workspace:FindFirstChild("GO_Light_Prototype")
local net=ReplicatedStorage:FindFirstChild("GO_Light_Network")
local state=net and net:FindFirstChild("MatchState")
local ball=gameFolder and gameFolder:FindFirstChild("Bola_GO")
local n=0
if gameFolder then
    for _,child in ipairs(gameFolder:GetChildren()) do
        if child:IsA("Model") and child.Name:sub(1,7)=="GO_NPC_" then n+=1 end
    end
end
local checks={
    {"arena",gameFolder~=nil},
    {"rede",net~=nil and net:FindFirstChild("Action")~=nil},
    {"estado",state~=nil and state:GetAttribute("MatchID")~=nil},
    {"bola fisica",ball~=nil and ball:IsA("BasePart")},
    {"9 NPC",n==9},
    {"fase valida",state~=nil and ({PLAY=true,GOAL=true,OUT=true,KICKOFF=true,HALF=true,END=true})[state:GetAttribute("Phase")]==true},
    {"chute carregado",state~=nil and state:GetAttribute("ChargedShotsBlue")~=nil},
    {"desarme",state~=nil and state:GetAttribute("TacklesBlue")~=nil},
}
local fails=0
for _,check in ipairs(checks) do
    print((check[2] and "[PASS] " or "[FAIL] ")..check[1])
    if not check[2] then fails+=1 end
end
print(string.format("[GO Light v0.7] %d/%d verificacoes. Isto NAO valida gameplay visual nem malha R32.",#checks-fails,#checks))
