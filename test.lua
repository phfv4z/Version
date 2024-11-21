getgenv().Team = "Marines"

repeat wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");

if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if getgenv().Team == "Marines" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Marines"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                       b:Fire() 
                    end
                    v.Function()
                end 
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                       b:Fire() 
                    end
                    v.Function()
                end 
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end
--Functions Sea--
if game.PlaceId == 2753915549 then
    First_Sea = true
elseif game.PlaceId == 4442272183 then
    Second_Sea = true
elseif game.PlaceId == 7449423635 then
    Third_Sea = true
else
    game.Players.LocalPlayer:Kick("[Sea Hub] Only Support BF")
end 
-- Functions Main
--[[Farm Level Function]]--
local Q = require(game.ReplicatedStorage.Quests)
    local R = {"BartiloQuest", "Trainees", "MarineQuest", "CitizenQuest"}
    local function S()
        local T = game.Players.LocalPlayer.Data.Level.Value
        local min = 0
        if T >= 1450 and game.PlaceId == 4442272183 then
            Mob1 = "Water Fighter"
            Mob2 = "ForgottenQuest"
            Mob3 = 2
        elseif T >= 700 and game.PlaceId == 2753915549 then
            Mob1 = "Galley Captain"
            Mob2 = "FountainQuest"
            Mob3 = 2
        else
            for r, v in pairs(Q) do
                for M, N in pairs(v) do
                    local U = N.LevelReq
                    for O, P in pairs(N.Task) do
                        if T >= U and U >= min and N.Task[O] > 1 and not table.find(R, tostring(r)) then
                            min = U
                            Mob1 = tostring(O)
                            Mob2 = r
                            Mob3 = M
                        end
                    end
                end
            end
        end
    end
    function CFrameQuest()
        local GuideModule = require(game.ReplicatedStorage.GuideModule)
        for list,NPCListC in pairs(GuideModule["Data"]["NPCList"]) do
            if NPCListC["NPCName"] == GuideModule["Data"]["LastClosestNPC"] then
                return list["CFrame"]
            end
        end
    end
    local Q = require(game.ReplicatedStorage.Quests)
    local a3 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))
    function CheckDataQuest()
        for r, v in next, a3.Data do
            if r == "QuestData" then
                return true
            end
        end
        return false
    end
    function CheckNameMobDoubleQuest()
        local a
        if CheckDataQuest() then
            for r, v in next, a3.Data.QuestData.Task do
                a = r
            end
        end
        return a
    end
    function CheckDoubleQuestSkidcuaYMF()
        S()
        local a5 = {}
        if game.Players.LocalPlayer.Data.Level.Value >= 10 and CheckDataQuest() and CheckNameMobDoubleQuest() == Mob1 and #CheckNameMobDoubleQuest() > 2 then
            for r, v in pairs(Q) do
                for M, N in pairs(v) do
                    for O, P in pairs(N.Task) do
                        if tostring(O) == Mob1 then
                            for a6, a7 in next, v do
                                for a8, a9 in next, a7.Task do
                                    if a8 ~= Mob1 and a9 > 1 then
                                        if a7.LevelReq <= game.Players.LocalPlayer.Data.Level.Value then
                                            a5["Name"] = tostring(a8)
                                            a5["Mob2"] = r
                                            a5["ID"] = a6
                                        else
                                            a5["Name"] = Mob1
                                            a5["Mob2"] = Mob2
                                            a5["ID"] = Mob3
                                        end
                                        return a5
                                    end
                                end
                            end
                        end
                    end
                end
            end
        else
            a5["Name"] = Mob1
            a5["Mob2"] = Mob2
            a5["ID"] = Mob3
            return a5
        end
        a5["Name"] = Mob1
        a5["Mob2"] = Mob2
        a5["ID"] = Mob3
        return a5
    end
    function MobLevel1OrMobLevel2()
        local aa = {}
        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if not table.find(aa, v.Name) and v:IsA("Model") and v.Name ~= "PirateBasic" and not string.find(v.Name, "Brigade") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                table.insert(aa, v.Name)
            end
        end
        for r, v in pairs(aa) do
            local ab = v
            v = tostring(v:gsub(" %pLv. %d+%p", ""))
            if tostring(v) == CheckNameMobDoubleQuest() then
                return tostring(ab)
            end
        end
        return false
    end

    function TpEntrance(P)
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", P)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        wait(0.5)
    end

    local statusTween = ""
    function WaitHRP(q0) 
        if not q0 then 
            return 
        end
        return q0.Character:WaitForChild("HumanoidRootPart", 9) 
    end

    local tween
    function topos(Pos)
        if game.Players.LocalPlayer.Character.Humanoid.Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if not Pos then 
                return 
            end
            if Distance <= 350 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 9)
            game.Players.LocalPlayer.Character:WaitForChild("Head", 9)
            if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Hold") then
                local Hold = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
                Hold.Name = "Hold"
                Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                Hold.Velocity = Vector3.new(0, 0, 0)
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Hold"):Destroy()
            end
            if not game.Players.LocalPlayer.Character:FindFirstChild("PartTele") then
                local PartTele = Instance.new("Part", game.Players.LocalPlayer.Character) -- Create part
                PartTele.Size = Vector3.new(10,1,10)
                PartTele.Name = "PartTele"
                PartTele.Anchored = true
                PartTele.Transparency = 1
                PartTele.CanCollide = false
                PartTele.CFrame = WaitHRP(game.Players.LocalPlayer).CFrame 
                PartTele:GetPropertyChangedSignal("CFrame"):Connect(function()
                    task.wait(0.01)
                    local hrp = WaitHRP(game.Players.LocalPlayer)
                    if hrp then
                        hrp.CFrame = PartTele.CFrame
                    end
                end)
            end
            if tween then
                tween:Cancel()
            end
            tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.PartTele, TweenInfo.new(Distance / TweenSpeed, Enum.EasingStyle.Linear),{CFrame = Pos})
            tween:Play()
            tween.Completed:Wait()
        end
    end

    function CheckAcientOneStatus()
        if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
            return "You have yet to achieve greatness"
        end
        local v227 = nil
        local v228 = nil
        local v229 = nil
        v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
        if v229 == 1 then
            return "Required Train More"
        elseif v229 == 2 or v229 == 4 or v229 == 7 then
            return "Can Buy Gear With " .. v227 .. " Fragments"
        elseif v229 == 3 then
            return "Required Train More"
        elseif v229 == 5 then
            return "You Are Done Your Race."
        elseif v229 == 6 then
            return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
        end
        if v229 ~= 8 then
            if v229 == 0 then
                return "Ready For Trial"
            else
                return "You have yet to achieve greatness"
            end
        end
        return "Remaining " .. 10 - v228 .. " training sessions."
    end

-- Functions Official
--[[Library Gui]]--

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Sea Hub" .. "Version 3"
    SubTitle = "by phfv4z",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 380),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

function Notify(content, dura)
    content = tostring(content)
    Fluent:Notify({
        Title = "Sea Hub - Notification",
        Content = content,
        SubContent = "",
        Duration = dura
    })
end

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "" }),
    Sub = Window:AddTab({ Title = "Sub Tab", Icon = ""}),
    Necessary = Window:AddTab({ Title = "Necessary Tab", Icon = ""}),
    Status = Window:AddTab({ Title = "Status Tab", Icon = ""}),
    RaceV4 = Window:AddTab({ Title = "Race V4", Icon = ""}),
    Other = Window:AddTab({ Title = "Other", Icon = ""}),
    SeaEvent = Window:AddTab({ Title = "Sea Event", Icon = ""}),
}

local FarmLevel = Tabs.Main:AddToggle("FarmLevel", {Title = "Auto Level", Default = false })

FarmLevel:OnChanged(function(Value)
    AutoFarmLv = Value
end)

function GetRandomTween(ck)
    local RandomL,R2 = math.random(30,100), math.random(10,40)
    return ck * CFrame.new(RandomL, 30, R2)
end

function RemoveLevelTitle(v)
    return tostring(tostring(v):gsub(" %pLv. %d+%p", ""):gsub(" %pRaid Boss%p", ""):gsub(" %pBoss%p", ""))
end 

plr = game.Players.LocalPlayer
if game.Workspace:FindFirstChild("MobSpawns") then
    for i, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "MobSpawns" then
            v:Destroy()
        end
    end
end
local CreateFoldermmb = Instance.new("Folder")
CreateFoldermmb.Parent = game.Workspace
CreateFoldermmb.Name = "MobSpawns"
function RemoveLevelTitle(v)
    return tostring(tostring(v):gsub(" %pLv. %d+%p", ""):gsub(" %pRaid Boss%p", ""):gsub(" %pBoss%p", ""))
end 
task.spawn(
    function()
        while task.wait() do 
            pcall(function()
                for i,v in pairs(game.workspace.MobSpawns:GetChildren()) do  
                    v.Name = RemoveLevelTitle(v.Name)
                end
            end)
            task.wait(50)
        end
    end
)
function MobDepTrai()
    MobDepTraiTable = {}
    for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        table.insert(MobDepTraiTable, v)
    end
    local tablefoldermmb = {}
    for i, v in next, require(game:GetService("ReplicatedStorage").Quests) do
        for i1, v1 in next, v do
            for i2, v2 in next, v1.Task do
                if v2 > 1 then
                    table.insert(tablefoldermmb, i2)
                end
            end
        end
    end
    for i, v in pairs(getnilinstances()) do
        if table.find(tablefoldermmb, RemoveLevelTitle(v.Name)) then
            table.insert(MobDepTraiTable, v)
        end
    end
    return MobDepTraiTable
end
local MobSpawnList = MobDepTrai()
function ReloadFolderMob()
    for i, v in next, game.Workspace.MobSpawns:GetChildren() do
        v:Destroy()
    end
    for i, v in pairs(MobSpawnList) do
        if v then
            if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                MobNew = Instance.new("Part")
                MobNew.CFrame = v.HumanoidRootPart.CFrame
                MobNew.Name = v.Name
                MobNew.Parent = game.Workspace.MobSpawns
            elseif v:IsA("Part") then
                MobNew = v:Clone()
                MobNew.Parent = game.Workspace.MobSpawns
            end
        end
    end
end
ReloadFolderMob()
function CheckMobSpawns(ic)
    for _,MobSpawnsFolder in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if MobSpawnsFolder.Name == ic then
            return MobSpawnsFolder
        end
    end
end

function GetMobSpawnList(a)
    a = RemoveLevelTitle(a)
    k = {}
    for i, v in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if v.Name == a then
            table.insert(k, v)
        end
    end
    return k
end

function Buso()
    if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
        local rel = game.ReplicatedStorage
        rel.Remotes.CommF_:InvokeServer("Buso")
    end
end
--//ken
function Ken()
    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
end
--- Equip 
function equip(tooltip)
    local player, character = game.Players.LocalPlayer, game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item.ToolTip == tooltip then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not humanoid:IsDescendantOf(item) then
                humanoid:UnequipTools()
                humanoid:EquipTool(item)
                return true
            end
        end
    end
    return false
end

function ResetTP(Pos)
    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
        if (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
            for i = 1,3 do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            end
            task.wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        end
    else
        topos(Pos)
    end
end

function GetTpNearest(Pos)
    pcall(function ()
        if (Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2800 then
            TpEntrance(Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125))
        else
            ResetTP(Pos)
        end
    end)
end

function VelocityEnemys(enemy)
    local humanoid = enemy.HumanoidRootPart or enemy:WaitForChild('HumanoidRootPart')
    if not humanoid then return end    
    humanoid.ChildAdded:Connect(function(child)
        if child:IsA("BodyVelocity") or child:IsA("BodyPosition") then
            child.MaxForce = Vector3.new(0, 0, 0)
            child.P = 0 
        elseif child:IsA("BodyGyro") then 
            child.P = 0 
            child.MaxTorque = Vector3.new(0, 0, 0)
        end
    end)
end
game.workspace.Characters.ChildAdded:Connect(loadplr)
function TweenObject(TweenCFrame,obj,ts)
    if not ts then ts = 350 end
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new((TweenCFrame.Position -obj.Position).Magnitude /ts,Enum.EasingStyle.Linear)
    tween= tween_s:Create(obj,info,{CFrame=TweenCFrame})
    tween:Play() 
end	

function AddHitbox(numberRadius)
    local CRV = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
    CRV.activeController.hitboxMagnitude = numberRadius
end

function Bring(nameMob,BringC,DistanceF,radius)
    inputed = nameMob
    inputed2 = DistanceF
    inputed3 = radius
    inputed4 = BringC
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v.Name == inputed and DetectingPart(v) and v.Humanoid.Health > 0 and inputed2.Magnitude <= inputed3 then
            VelocityEnemys(v)
            TweenObject(inputed4, v.HumanoidRootPart, 5000)
            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
            v.Humanoid.JumpPower = 0
            v.Humanoid.WalkSpeed = 0
            v.Humanoid:ChangeState(14)
            v.HumanoidRootPart.CanCollide = false
            v.Head.CanCollide = false
            if v.Humanoid:FindFirstChild("Animator") then
                v.Humanoid.Animator:Destroy()
            end
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
    end
end

function CheckEnemies(k, replicated)
    if not replicated then
        replicated = false
    end
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        if type(k) == "table" then
            if table.find(k, v.Name) and DetectingPart(v) and v.Humanoid.Health > 0 then
                return v
            end
        else
            if v.Name == k and DetectingPart(v) and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    if replicated then
        for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
            if type(k) == "table" then
                if table.find(k, v.Name) then
                    return v
                end
            else
                if v.Name == k then
                    return v
                end
            end
        end
    end
end

function DetectingPart(v1)
    return v1 and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid")
end

local KillMonster = function(mob,bringmobvalue,value)
    if CheckEnemies(mob) then
        local v = CheckEnemies(mob)
        task.spawn(function()
            if bringmobvalue == true then
                Bring(v.Name,v.HumanoidRootPart.CFrame,(v.HumanoidRootPart.Position - v.HumanoidRootPart.Position), 350)
            end
        end)
        if DetectingPart(v) and v.Humanoid.Health > 0 then
            repeat task.wait()
                Buso()
                equip("Melee")
                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
            until value or v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
        end
    end
end

function GetQuest()
    local Distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest().Position).Magnitude
    if Distance <= 20 then
        game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("StartQuest", tostring(CheckDoubleQuestSkidcuaYMF().Mob2), CheckDoubleQuestSkidcuaYMF().ID)
    else
        topos(CFrameQuest())
    end
end

function CheckBossCake()
    for _,Boss in pairs(game.Workspace.Enemies:GetChildren()) do
        if Boss.Name == "Cake Prince" or Boss.Name == "Dough King" and DetectingPart(Boss) and Boss.Humanoid.Health > 0 then
            return Boss
        end
    end
    for _,Boss in pairs(game.ReplicatedStorage:GetChildren()) do
        if Boss.Name == "Cake Prince" or Boss.Name == "Dough King" then
            return Boss
        end
    end
end

function sendkey(bt)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, bt, false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, bt, true, game)
end

function GetMob()
    local tablegetmob = {}
    for i,v in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if not table.find(tablegetmob, v.Name) then
            table.insert(tablegetmob, v.Name)
        end
    end
    if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
        for i, v in pairs(tablegetmob) do
            local b = v
            v = RemoveLevelTitle(v)
            if v == CheckNameMobDoubleQuest() then
                return b
            end
        end
    else
        return CheckNameMobDoubleQuest()
    end
end

spawn(function ()
    while task.wait() do
        if AutoFarmLv == true then
            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                if not MobLevel1OrMobLevel2() then
                    for i, v in pairs(GetMobSpawnList(GetMob())) do
                        pcall(function()
                            if not MobLevel1OrMobLevel2() and AutoFarmLv then
                                topos(GetRandomTween(v.CFrame))
                            end
                        end)
                    end
                else
                    pcall(function()
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == MobLevel1OrMobLevel2() and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                repeat task.wait()
                                    KillMonster(v.Name, true, AutoFarmLv == false)
                                until not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or not AutoFarmLv
                            end
                        end
                    end)
                end
            else
                GetQuest()
            end
        end
    end
end)

if Third_Sea then
    local AutoFarmBone = Tabs.Main:AddToggle("AutoFarmBone", {Title = "Auto Bone", Default = false })

    AutoFarmBone:OnChanged(function(Value)
        AutoFarmBone = Value
    end)

    task.spawn(function()
        while task.wait() do
            if AutoFarmBone then
                local table_BoneMobs = {"Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy"}
                if CheckEnemies(table_BoneMobs) then
                    local v = CheckEnemies(table_BoneMobs)
                    if v and DetectingPart(v) and v.Humanoid.Health > 0 then
                        pcall(function()
                            repeat task.wait()
                                KillMonster(v.Name, true, AutoFarmBone == false)
                            until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or AutoFarmBone == false
                        end)
                    end
                else
                    if (CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                        GetTpNearest(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                    else
                        topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                    end
                end
            end
        end
    end)

    local AutoFarmKata = Tabs.Main:AddToggle("AutoFarmKata", {Title = "Auto Dough", Default = false })

    AutoFarmKata:OnChanged(function(Value)
        AutoFarmKata = Value
    end)

    task.spawn(function()
        while task.wait() do
            if AutoFarmKata == true then
                local table_CakeMobs = {"Cookie Crafter","Cake Guard","Baking Staff","Head Baker"}
                local table_CakePrinceBosses = {"Dough King","Cake Prince"}
                if CheckBossCake() then
                    if (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1700 then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Map.CakeLoaf.BigMirror.Main.TouchInterest, 0)
                    else
                        local v = CheckBossCake()
                        pcall(function()
                            repeat task.wait()
                                KillMonster(v.Name, false, AutoFarmKata == false)
                            until not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or AutoFarmKata == false
                        end)
                    end
                elseif CheckEnemies(table_CakeMobs) then
                    local v = CheckEnemies(table_CakeMobs)
                    pcall(function()
                        repeat task.wait()
                            KillMonster(v.Name, true, AutoFarmKata == false)
                        until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or AutoFarmKata == false
                    end)
                else
                    if (CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                        GetTpNearest(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                    else
                        topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                    end
                end
            end
        end
    end)
end

local TurnV3 = Tabs.Settings:AddToggle("TurnV3", {Title = "Auto Turn on V3", Default = false })

TurnV3:OnChanged(function(Value)
    TurnOnV3 = Value
end)

local TurnV4 = Tabs.Settings:AddToggle("TurnV4", {Title = "Auto Turn on V4", Default = false })

TurnV4:OnChanged(function(Value)
    TurnOnV4 = Value
end)

spawn(function ()
    while wait() do
        if TurnOnV3 then
            sendkey("T")
        end
        if TurnOnV4 then
            if game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and not game.Players.LocalPlayer.Character.RaceTransformed.Value then
                sendkey("Y")
            end
        end
    end
end)

local RandomSuprise = Tabs.Settings:AddToggle("RandomSuprise", {Title = "Auto Turn on V4", Default = false })

RandomSuprise:OnChanged(function(Value)
    RandomSuprise = Value
end)

task.spawn(function()
    while task.wait() do
        if RandomSuprise then
            for i = 1,10 do
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
            end
        end
    end
end)

Tabs.Settings:AddParagraph({
    Title = "Setting Functions",
    Content = ""
})

local TSP = Tabs.Settings:AddSlider("TSP", {
    Title = "Tween Speed",
    Description = "",
    Default = 300,
    Min = 250,
    Max = 400,
    Rounding = 1,
    Callback = function(Value)
        TweenSpeed = Value
    end
})

TSP:OnChanged(function(Value)
    TweenSpeed = Value
end)

local OpenDimension = Tabs.Settings:AddToggle("OpenDimension", {Title = "Auto Open Dimension Cake Prince", Default = false })

OpenDimension:OnChanged(function(Value)
    OpenDimension = Value
end)

task.spawn(function()
    while wait() do
        if OpenDimension then
            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true):find("open the portal now") then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
            end
        end
    end
end)    
--Function Tab Sub--
--[[Sea Hub - Sub Functions]]--

local SoulReaper = Tabs.Sub:AddToggle("AutoSR", {Title = "Auto Soul Repear", Default = false })

SoulReaper:OnChanged(function(Value)
    AutoSR = Value
end)

function CheckItemBPCRBPCR(name)
    chbp = {game.Players.LocalPlayer.Character,game.Players.LocalPlayer.Backpack}
    for i, v in pairs(chbp) do
        if v:FindFirstChild(name) then
            return v:FindFirstChild(name)
        end
    end
end

function GetDistance(Pos1, Pos2)
    if not Pos2 then
        Pos2 = game.Players.LocalPlayer.Character.HumanoidRootPart
    end
    if not Pos1 then return end
    return (Pos1.Position - Pos2.Position).Magnitude
end

task.spawn(function()
    while task.wait() do
        if AutoSR == true then
            if CheckEnemies("Soul Reaper") then
                local v = CheckEnemies("Soul Reaper")
                repeat task.wait()
                    KillMonster(v.Name, false, AutoSR == false)
                until not v or v.Humanoid.Health <= 0 or AutoSR == false
            else
                if CheckItemBPCRBPCR("Hallow Essence") then
                    topos(CFrame.new(-8930.6083984375, 144.92068481445312, 6066.2236328125))
                    if GetDistance(CFrame.new(-8930.6083984375, 144.92068481445312, 6066.2236328125)) <= 20 then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game.Workspace.Map["Haunted Castle"].Detection.TouchInterest, 0)
                    end
                end
            end
        end
    end
end) 

local AutoRipIndra = Tabs.Sub:AddToggle("AutoRipIndra", {Title = "Auto Rip Indra [Sea 3]", Default = false })

AutoRipIndra:OnChanged(function(Value)
    AutoRipIndra = Value
end)

task.spawn(function()
    while task.wait() do
        if AutoRipIndra then
            local v = CheckEnemies("rip _indra True Form")
            if Third_Sea then
                repeat task.wait()
                    KillMonster(v.Name, false, AutoRipIndra == false)
                until not v or v.Humanoid.Health <= 0 or AutoRipIndra == false
            else
                if CheckItemBPCRBPCR("God's Chalice") then
                    TpEntrance(Vector3.new(-5069.121, 314.541, -3000.467))
                    wait(2)
                    equipitem("God's Chalice")
                    topos(game:GetService("Workspace").Map["Boat Castle"].Summoner.Detection.CFrame)
                end
            end
        end
    end
end)

local SoulGuitar = Tabs.Sub:AddToggle("SoulGuitar", {Title = "Auto Soul Guitar", Default = false })

SoulGuitar:OnChanged(function(Value)
    SoulGuitar = Value
end)

function Auto_Quest_SG()
    if not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check") then
        if game.Lighting.Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" and (game.Lighting.ClockTime > 16 or game.Lighting.ClockTime < 5) then
            if game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-8654.314453125, 140.9499053955078, 6167.5283203125)) > 50 then
                topos(CFrame.new(-8654.314453125, 140.9499053955078, 6167.5283203125))
            end
            game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("gravestoneEvent", 2)
            game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("gravestoneEvent", 2, true)
        else
            Notify("Not Full Moon", 5)
        end
    else
        if game.Players.LocalPlayer.PlayerGui.Main.Dialogue.Visible then
            game.VirtualUser:Button1Down(Vector2.new(0, 0))
            game.VirtualUser:Button1Down(Vector2.new(0, 0))
        end
        if not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check").Swamp then
            if (CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875).Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                topos(CFrame.new(-10171.7607421875, 138.62667846679688, 6008.0654296875))
            else
                if CheckEnemies(RemoveLevelTitle("Living Zombie [Lv. 2000]")) then
                    v = CheckEnemies(RemoveLevelTitle("Living Zombie [Lv. 2000]"))
                    repeat task.wait()
                        KillMonster(v.Name, true, SoulGuitar == false)
                        AddHitbox(500)
                    until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or SoulGuitar == false
                end
            end
            return
        elseif not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check").Gravestones then
            if game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-8761.4765625, 142.10487365722656, 6086.07861328125)) > 50 then
                topos(CFrame.new(-8761.4765625, 142.10487365722656, 6086.07861328125))
            else
                local ClickSigns = {
                    game.workspace.Map["Haunted Castle"].Placard1.Right.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard2.Right.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard3.Left.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard4.Right.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard5.Left.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard6.Left.ClickDetector,
                    game.workspace.Map["Haunted Castle"].Placard7.Left.ClickDetector
                }
                for i, v in pairs(ClickSigns) do
                    fireclickdetector(v)
                end
            end 
        elseif not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check").Ghost then
            if game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-9755.6591796875, 271.0661315917969, 6290.61474609375)) > 50 then
                topos(CFrame.new(-9755.6591796875, 271.0661315917969, 6290.61474609375))
            end
            game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Ghost")
            task.wait(5)
        elseif not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check").Trophies then
            if game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-9530.0126953125, 6.104853630065918, 6054.83349609375)) > 50 then
                topos(CFrame.new(-9530.0126953125, 6.104853630065918, 6054.83349609375))
            end
            local BlankTablets = {
                "Segment6",
                "Segment2",
                "Segment8",
                "Segment9",
                "Segment5"
            }
            local Tablet = game.workspace.Map["Haunted Castle"].Tablet
            for i, v in pairs(BlankTablets) do
                local x = Tablet[v]
                if x.Line.Position.X ~= 0 then
                    repeat task.wait()
                        fireclickdetector(x.ClickDetector)
                    until x.Line.Position.X == 0
                end
            end
            local Trophy = {
                ["Segment1"] = "Trophy1",
                ["Segment3"] = "Trophy2",
                ["Segment4"] = "Trophy3",
                ["Segment7"] = "Trophy4",
                ["Segment10"] = "Trophy5",
            }

            for i, v in pairs(Trophy) do
                local x = game.workspace.Map["Haunted Castle"].Trophies.Quest[v].Handle.CFrame
                x = tostring(x)
                x = x:split(", ")[4]
                local c = "180"
                if x == "1" or x == "-1" then
                    c = "90"
                end
                if not string.find(tostring(Tablet[i].Line.Rotation.Z), c) then
                    repeat task.wait()
                        fireclickdetector(Tablet[i].ClickDetector)
                    until string.find(tostring(Tablet[i].Line.Rotation.Z), c)
                    print(i, c)
                end
            end         
        elseif not game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check").Pipes then
            local Pipes = {
                ["Part1"] = "Really black",
                ["Part2"] = "Really black",
                ["Part3"] = "Dusty Rose",
                ["Part4"] = "Storm blue",
                ["Part5"] = "Really black",
                ["Part6"] = "Parsley green",
                ["Part7"] = "Really black",
                ["Part8"] = "Dusty Rose",
                ["Part9"] = "Really black",
                ["Part10"] = "Storm blue",
            }   
            for i, v in pairs(Pipes) do
                local x = game.workspace.Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model[i]
                if x.BrickColor.Name ~= v then
                    repeat task.wait()
                        fireclickdetector(x.ClickDetector)
                    until x.BrickColor.Name == v
                end
            end
        end
    end
end

function checkcountitem(x,xx)
    for i,v in next,game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
        if v.Name == x and v.Count >= xx then
            return true
        end
    end
    return false
end

function Auto_Get_SG()
    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true) == "[You already own this item.]" then
        Notify("You already own this item!", 5)
        task.wait(5)
        return
    end
    if game.Players.LocalPlayer.Data.Fragments.Value < 5000 then
        Notify("Not Enough Fragments", 5)
        task.wait(2)
        return
    end
    if checkcountitem("Dark Fragment",1) and checkcountitem("Ectoplasm",250) and checkcountitem("Bones",500) then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy")
        return 
    end
end

task.spawn(function ()
    while task.wait() do
        if SoulGuitar then
            if not CheckItemBPCRBPCR("Soul Guitar") then
                if game.PlaceId == 7449423635 then 
                    Auto_Quest_SG()
                end
            else
                Auto_Get_SG()
            end
        end
    end
end)

-- local StartGood = true
-- function QuestGood3()
--     for v50, v51 in pairs(getnilinstances()) do
--         if v51.Name:match("Luxury Boat Dealer") then
--             plr.Character.HumanoidRootPart.CFrame = v51.HumanoidRootPart.CFrame
--             local args = {
--                 [1] = "CDKQuest",
--                 [2] = "BoatQuest",
--                 [3] = workspace.NPCs:FindFirstChild("Luxury Boat Dealer")
--             }
--             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
--         end;
--     end;
-- end

-- function DetectMobRaidCastle()
--     for i, v in pairs(game.workspace.Enemies:GetChildren()) do
--         if v:FindFirstChild("HumanoidRootPart")
--         and (v.HumanoidRootPart.Position - Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)).magnitude <= 1000
--         and not string.find(v.Name, "Boss") and v.Humanoid.Health > 0 then
--             return v 
--         end
--     end
-- end

-- function GetNameQuestHaze()
--     for _,QuestHazeF in pairs(game.Players.LocalPlayer.QuestHaze:GetChildren()) do
--         if QuestHazeF.Value > 0 then
--             return QuestHazeF.Name
--         end
--     end
-- end
-- function CheckHazeESP()
--     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
--         if v:IsA("Model") and DetectingPart(v) and v:FindFirstChild("HazeESP") and v.Humanoid.Health > 0 then
--             v.HazeESP.Size = Vector3.new(30, 30, 30)
--             return v
--         end
--     end
--     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
--         if v.Name == GetNameQuestHaze() then
--             if v:IsA("Model") and DetectingPart(v) and v.Humanoid.Health > 0 then
--                 return v
--             end 
--         end
--     end
-- end
-- function GetQuestCDK(nameQ)
--     if NameQ == "Good" then
--         game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
--     elseif NameQ == "Evil" then
--         game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil")
--     end  
-- end

-- function TorchDimension(DimensionName) 
--     DimensionName = DimensionName == "Yama" and "HellDimension" or "HeavenlyDimension" 
--     if game.workspace.Map:FindFirstChild(DimensionName) then 
--         v3 = game.workspace.Map:FindFirstChild(DimensionName):GetChildren()
--         for i, v in pairs(v3) do
--             if string.find(v.Name, "Torch") then
--                 if v.ProximityPrompt.Enabled == true then
--                     return v
--                 end
--             end
--         end
--     end
-- end  

-- function Func1()
--     Mobs = game.workspace.Enemies:GetChildren()
--     if #Mobs <= 0 then 
--         return 
--     else
--         for _,MobsFolder in pairs(Mobs) do 
--             if MobsFolder:FindFirstChild("Humanoid") and MobsFolder.Humanoid.Health > 0 and MobsFolder:FindFirstChild("HumanoidRootPart") then 
--                 return MobsFolder 
--             end
--         end
--     end
-- end   

-- CursedDualKatana = function()
--     QuestGood = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good").Good
--     QuestEvil = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good").Evil
--     if not CheckItemBPCR("Yama") or not CheckItemBPCR("Tushita") then
--         Notify("You Don't have enough swords", 5)
--     end
--     if CheckItemBPCR("Yama") and CheckItemBPCR("Tushita") then
--         if CheckItemBPCR("Yama").Mastery < 350 and CheckItemBPCR("Tushita").Mastery < 350 then
--             Notify("Not Enough Mastery")
--             return
--         else
--             local CurrentPedestal
--             if not CheckItemBPCRBPCR("Tushita") and not CheckItemBPCRBPCR("Yama") then
--                 game.ReplicatedStorage.Remotes.CommF_:InvokeServer("LoadItem","Tushita")
--             elseif QuestGood == 4 then
--                 game.ReplicatedStorage.Remotes.CommF_:InvokeServer("LoadItem","Yama")
--             end
--             if QuestGood < 4 then
--                 getgenv.StartDoingQuest = true
--             end
--             if QuestGood == 4 and QuestEvil == 3 then
--                 CurrentPedestal = "Pedestal2"
--             elseif QuestGood == 3 and QuestEvil == 4 then
--                 CurrentPedestal = "Pedestal1"
--             end
--             if CurrentPedestal then
--                 if (game.Workspace.Map.Turtle.Cursed[CurrentPedestal].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 10 then
--                     fireproximityprompt(game.Workspace.Map.Turtle.Cursed[CurrentPedestal].ProximityPrompt)
--                 else
--                     topos(game.Workspace.Map.Turtle.Cursed[CurrentPedestal].CFrame)
--                 end
--             end
--             if game.Players.LocalPlayer.PlayerGui.Main.Dialogue.Visible then
--                 game.VirtualUser:Button1Down(Vector2.new(0, 0))
--                 game.VirtualUser:Button1Down(Vector2.new(0, 0))
--             end
--             if getgenv.StartDoingQuest then
--                 if QuestGood == -3 then
--                     GetQuestCDK("Good")
--                     for _,nilinstance in pairs(getnilinstances()) do
--                         if nilinstance.Name:match("Luxury Boat Dealer") then
--                             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = nilinstance.HumanoidRootPart.CFrame
--                             local args = {[1] = "CDKQuest", [2] = "BoatQuest", [3] = game.Workspace.NPCs:FindFirstChild("Luxury Boat Dealer")}
--                             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
--                         end
--                     end
--                 elseif QuestGood == -4 then
--                     GetQuestCDK("Good")
--                     if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)).magnitude > 1000 then
--                         TpEntrance(Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125))
--                     else
--                         if DetectMobRaidCastle() then
--                             local v = DetectMobRaidCastle()
--                             repeat task.wait()
--                                 KillMonster(v.Name, true, AutoCdk == false)
--                             until not v or v.Humanoid.Health <= 0 
--                         end
--                     end
--                 elseif QuestGood == -5 then
--                     GetQuestCDK("Good")
--                     local CreamPos = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
--                     if GetDistance(game.Workspace["_WorldOrigin"].Locations["Heavenly Dimension"].Position) < 2000 then
--                         if game.Workspace.Map.HeavenlyDimension.Exit.BrickColor == BrickColor.new("Cloudy grey") then 
--                             InstantTeleport(game.Workspace.Map.HeavenlyDimension.Exit.CFrame)
--                             topos(game.Workspace.Map.HeavenlyDimension.Exit.CFrame)
--                         else
--                             if Func1() then			
--                                 repeat wait()
--                                     KillAura()
--                                 until not Func1() or AutoCdk == false
--                             else
--                                 if TorchDimension("Tushita") then 
--                                     topos(TorchDimension("Tushita").CFrame)  
--                                     wait(.5)
--                                     fireproximityprompt(TorchDimension("Tushita").ProximityPrompt)
--                                 end
--                             end
--                         end
--                     else
--                         if CheckEnemies("Cake Queen") then
--                             local v = CheckEnemies("Cake Queen")
--                             repeat wait()
--                                 KillMonster(v.Name, true, AutoCdk == false)
--                             until AutoCdk == false or game.Workspace.Map:FindFirstChild("HeavenlyDimension") 
--                         else
--                             if GetDistance(CreamPos) > 2000 then
--                                 topos(CreamPos)
--                             else
--                                 local tick1 = tick()
--                                 repeat task.wait() until tick1-tick() >= 5
--                                 HopUI(Func_Settings["Hop Delay"], "Not Found Cake Queen")
--                             end
--                         end
--                     end
--                 end
--             else
--                 if QuestEvil == -3 then
--                     GetQuestCDK("Evil")
--                     local Mons
--                     for _,EnemiesFolder in pairs(game.Workspace.Enemies:GetChildren()) do
--                         if EnemiesFolder:IsA("Model") and EnemiesFolder.Name == "Marine Commodore" and DetectingPart(EnemiesFolder) then
--                             Mons = EnemiesFolder
--                         end
--                     end
--                     if not Mons then
--                         for _,EnemySpawnsFolder in pairs(game.Workspace["_WorldOrigin"].EnemySpawns:GetChildren()) do
--                             if v.Name == "Marine Commodore" then
--                                 topos(v.CFrame * CFrame.new(0,20,0))
--                             end
--                         end
--                     else
--                         repeat task.wait()
--                             topos(Mons.HumanoidRootPart.CFrame)
--                         until game.Players.LocalPlayer.Character.Humanoid.Health <= 0
--                     end
--                 elseif QuestEvil == -4 then
--                     GetQuestCDK("Evil")
--                     CurrentHaze = CheckHazeESP()
--                     if CurrentHaze then
--                         repeat wait()
--                             KillMonster(CurrentHaze.Name, true, AutoCdk == false)
--                         until CheckItemBPCR("Cursed Dual Katana") or AutoCdk == false
--                     else
--                         NameQHaze = GetNameQuestHaze()
--                         for _,MobSpawnsFolder in pairs(game.Workspace.MobSpawns:GetChildren()) do
--                             if (typeof(NameQHaze) == "string" and string.find(MobSpawnsFolder.Name, NameQHaze) or (typeof(NameQHaze) == "table" and table.find(NameQHaze, MobSpawnsFolder.Name))) then
--                                 repeat wait()
--                                     topos(MobSpawnsFolder.CFrame * CFrame.new(0,20,0))
--                                 until not GetNameQuestHaze() or AutoCdk == false
--                             end
--                         end
--                     end
--                     if GetNameQuestHaze() <= 0 then
--                         game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
--                     end
--                 elseif QuestEvil == -5 then
--                     GetQuestCDK("Evil")
--                     if GetDistance(game.Workspace["_WorldOrigin"].Locations["Hell Dimension"].Position) < 2000 then
--                         if game.Workspace.Map.HellDimension.Exit.BrickColor == BrickColor.new("Olivine") then
--                             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.HellDimension.Exit.CFrame
--                             topos(game.Workspace.Map.HellDimension.Exit.CFrame)
--                         else
--                             StatusLabel = "Doing Auto Cursed Dual Katana, Quest 3 [Yama], Successing Dimension"
--                             local v = Func1()
--                             if v then			
--                                 repeat wait()
--                                     KillAura()
--                                 until not Func1() or AutoCdk == false
--                             else
--                                 if TorchDimension("Yama") then 
--                                     topos(TorchDimension("Yama").CFrame)  
--                                     wait(.5)
--                                     fireproximityprompt(TorchDimension("Yama").ProximityPrompt)
--                                 end
--                             end
--                         end
--                     else
--                         if not CheckEnemies("Soul Reaper") then
--                             if not CheckItemBPCRBPCR("Hallow Essence") then
--                                 for i = 1,11 do
--                                     game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
--                                 end
--                             elseif CheckItemBPCRBPCR("Hallow Essence") then
--                                 if GetDistance(CFrame.new(-8930.6083984375, 144.92068481445312, 6066.2236328125)) > 30 then
--                                     topos(CFrame.new(-8930.6083984375, 144.92068481445312, 6066.2236328125))
--                                     if GetDistance(CFrame.new(-8930.6083984375, 144.92068481445312, 6066.2236328125)) <= 20 then
--                                         firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game.Workspace.Map["Haunted Castle"].Detection.TouchInterest, 0)
--                                     end
--                                 else
--                                     equipitem("Hallow Essence")
--                                 end
--                             end
--                         else
--                             -- wait
--                         end
--                     end
--                 end
--             end
--         end
--     elseif CheckItemBPCR("Cursed Dual Katana") then
--         Notify("You're Already have CDK", 5)
--     end
-- end

-- local AutoCDK = Tabs.Sub:AddToggle("AutoCDK", {Title = "Auto Cursel Dual Katana [Sea 3]", Default = false })

-- AutoCDK:OnChanged(function(Value)
--     AutoCDK = Value
-- end)

-- task.spawn(function()
--     while task.wait() do
--         if AutoCdk then
--             CursedDualKatana()
--         end
--     end
-- end) 
local AutoPullLever = Tabs.Sub:AddToggle("AutoPullLever", {Title = "Auto Pull Lever [Sea 3]", Default = false })

AutoPullLever:OnChanged(function(Value)
    AutoPullLever = Value
end)

function TweenTempleLegit()
    TweenTemple()
    AllNPCS = getnilinstances()
    for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        table.insert(AllNPCS, v)
    end
    for r, v in pairs(AllNPCS) do
        if v.Name == "Mysterious Force" then
            TempleMysteriousNPC1 = v
        end
        if v.Name == "Mysterious Force3" then
            TempleMysteriousNPC2 = v
        end
    end
    topos(TempleMysteriousNPC2.HumanoidRootPart.CFrame)
    wait(0.5)
    if (TempleMysteriousNPC2.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "TeleportBack")
    end
    if (TempleMysteriousNPC1.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15 then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Teleport")
    end
end

task.spawn(function()
    while task.wait() do
        if AutoPullLever then
            if not CheckItemBPCRBPCR("Mirror Fractal") or not CheckItemBPCRBPCR("Valkyrie Helm") then
                Notify("Not Enough Items", 10)
            elseif CheckItemBPCRBPCR("Mirror Fractal") and CheckItemBPCRBPCR("Valkyrie Helm") then
                local check_lever = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor")
                local check = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Check")
                if check == 1 then
                    Notify("Begin", 2)
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Begin")
                elseif check == 2 then
                    Notify("Tween to Temple", 2)
                    TweenTempleLegit()
                elseif check == 3 then
                    Notify("Coutinue", 5)
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaceV4Progress", "Continue")
                elseif not check_lever or not game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") and check_mirage() then
                    if GetBlueGear() then
                        pcall(function()
                            HighestPointRealCFrame = tweento_highestpoint().CFrame * CFrame.new(0, 211.88, 0)
                        end)
                        BlueGear = getBlueGear()
                        if BlueGear and not BlueGear.CanCollide and BlueGear.Transparency ~= 1 then
                            repeat
                                wait()
                                TweentoBlueGear()
                            until not getBlueGear() or getBlueGear().Transparency == 1
                        end
                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then
                            Notify("You're have blue gear")
                        elseif BlueGear and BlueGear.Transparency == 1 then
                            if HighestPointRealCFrame and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HighestPointRealCFrame.Position).Magnitude > 10 then
                                topos(HighestPointRealCFrame)
                            elseif HighestPointRealCFrame and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HighestPointRealCFrame.Position).Magnitude <= 10 then
                                while wait() do
                                    MoveCamtoMoon()
                                    wait(.1)
                                    game:service("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                                    task.wait()
                                    game:service("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                                    task.wait(1.5)
                                end
                            end
                        end
                    end
                elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then
                    GATCAN()
                end
            else
                wait()
            end
        end
    end
end)

local AutoCyborg = Tabs.Sub:AddToggle("AutoCyborg", {Title = "Auto Cyborg [Sea 2]", Default = false })

AutoCyborg:OnChanged(function(Value)
    AutoCyborg = Value
end)

function BuyChipLaw()
    v354 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
    if v354 == 1 then
        return true
    end
    if v354 == 0 then
        return false
    end
    if v354 == 2 then
        return true
    end
end

task.spawn(function()
    while task.wait() do
        if AutoCyborg then
            Check_Cyborg = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Check")
            Buy_Cyborg =  game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy")
            if Check_Cyborg == 2 then
                break
            end
            if not Check_Cyborg then
                if not game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector.CanCollide then
                    return Buy_Cyborg
                else
                    if CheckItemBPCRBPCR("Core Brain") then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                    else
                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckBlockPart") then
                        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckBlockPart") then
                            if CheckEnemies(RemoveLevelTitle("Order [Lv. 1250] [Raid Boss]")) then
                                local v = CheckEnemies(RemoveLevelTitle("Order [Lv. 1250] [Raid Boss]"))
                                KillMonster(v.Name, false, AutoCyborg == false)
                            else
                                if not CheckItemBPCRBPCR("Microchip") and game.Players.LocalPlayer.Data.Fragments.Value >= 1000 then
                                    BuyChipLaw()
                                elseif CheckItemBPCRBPCR("Microchip") then
                                    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                                end
                            end
                        else
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end
    end
end)

local AutoSaber = Tabs.Sub:AddToggle("AutoSaber", {Title = "Auto Saber [Sea 1]", Default = false })

AutoSaber:OnChanged(function(Value)
    AutoSaber = Value
end)

function doorcup()
    return workspace.Map.Desert.Burn.Part.CanCollide == false
end
function saberdoor()
    for r, v in next, game:GetService("Workspace").Map.Jungle.Final:GetChildren() do
        if v:IsA("Part") and not v.CanCollide then
            return true
        end
    end
end

function DoorTouch()
    for r, v in next, game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren() do
        if v:IsA("Model") then
            if v.Button:FindFirstChild("TouchInterest") then
                return v
            end
        end
    end
end

function equipitem(m)
    if not m then
        return
    end
    ToolSe = m
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local bi = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(bi)
    end
end

task.spawn(function()
    while task.wait() do
        if AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
            if CheckItemBPCRBPCR("Saber") then
                AutoSaber:Set(false)
                Notify("You're Already have Saber Sword", 5)
            end
            if not saberdoor() then
                if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.CanCollide then 
                    if DoorTouch() then
                        pcall(function ()
                            topos(DoorTouch().Button.CFrame)
                            Notify("Touching Plate...", 3)
                        end)
                    end
                else
                    if doorcup() then
                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") ~= 0 and  game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") ~= 1 then
                            if not CheckItemBPCRBPCR("Cup") then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(1112.46521,4.92147732,4364.55469,-0.743286014,-4.82822775e-11,-0.668973804,4.62103383e-10,1,-5.85609283e-10,0.668973804,-7.444102e-10,-0.743286014).Position).Magnitude < 5 then
                                    topos(CFrame.new(1113.66992,7.5484705,4365.27832,-0.78613919,-2.19578524e-08,-0.618049502,1.02977182e-09,1,-3.68374984e-08,0.618049502,-2.95958493e-08,-0.78613919))
                                    firetouchinterest(game:GetService("Workspace").Map.Desert.Cup,game.Players.LocalPlayer.Character.HumanoidRootPart,0)
                                    firetouchinterest(game:GetService("Workspace").Map.Desert.Cup,game.Players.LocalPlayer.Character.HumanoidRootPart,1)
                                    return
                                end
                                topos(CFrame.new(1112.46521,4.92147732,4364.55469,-0.743286014,-4.82822775e-11,-0.668973804,4.62103383e-10,1,-5.85609283e-10,0.668973804,-7.444102e-10,-0.743286014))
                            else
                                equipitem("Cup")
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup") and game:GetService("Players").LocalPlayer.Backpack.Cup.Handle:FindFirstChild("TouchInterest") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup")and game:GetService("Players").LocalPlayer.Character.Cup.Handle:FindFirstChild("TouchInterest") then
                                    topos(CFrame.new(1395.77307,37.4733238,-1324.34631,-0.999978602,-6.53588605e-09,0.00654155109,-6.57083277e-09,1,-5.32077493e-09,-0.00654155109,-5.3636442e-09,-0.999978602))
                                elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Cup") and not game:GetService("Players").LocalPlayer.Backpack.Cup.Handle:FindFirstChild("TouchInterest") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cup") and not game:GetService("Players").LocalPlayer.Character.Cup.Handle:FindFirstChild("TouchInterest") then
                                    if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(1457.8768310547, 88.377502441406, -1390.6892089844)).Magnitude > 8 then
                                        topos(CFrame.new(1457.8768310547, 88.377502441406, -1390.6892089844))
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                                    end
                                end
                            end
                        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
                            if CheckEnemies(RemoveLevelTitle("Mob Leader [Lv. 120] [Boss]")) then
                                v = CheckEnemies(RemoveLevelTitle("Mob Leader [Lv. 120] [Boss]"))
                                repeat task.wait()
                                    KillMonster(v.Name, false, AutoSaber == false)
                                until not v or v.Humanoid.Health <= 0 or AutoSaber == false
                            else
                                topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559)) 
                            end
                        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
                            if not CheckItemBPCRBPCR("Relic") then
                                if(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-CFrame.new(-1404.07996,29.8520069,5.26677656,0.888123989,-4.0340602e-09,0.459603906,7.5884703e-09,1,-5.8864642e-09,-0.459603906,8.71560069e-09,0.888123989)).Magnitude>8 then 
                                    topos(CFrame.new(-1404.07996,29.8520069,5.26677656,0.888123989,-4.0340602e-09,0.459603906,7.5884703e-09,1,-5.8864642e-09,-0.459603906,8.71560069e-09,0.888123989))
                                else
                                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                                end
                            else
                                equipitem("Relic")
                                topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
                            end
                        end
                    else
                        if not CheckItemBPCRBPCR("Torch") then
                            topos(game:GetService("Workspace").Map.Jungle.Torch.CFrame)
                        else
                            equipitem("Torch")
                            if(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-CFrame.new(1115.23499,4.92147732,4349.36963,-0.670654476,-2.18307523e-08,0.74176991,-9.06980624e-09,1,2.1230365e-08,-0.74176991,7.51052998e-09,-0.670654476).Position).Magnitude<5 then 
                                topos(CFrame.new(1114.59863,4.92147732,4350.64258,-0.508235395,1.00975717e-09,0.861218214,7.77848985e-09,1,3.41788708e-09,-0.861218214,8.43606784e-09,-0.508235395))
                                firetouchinterest(game.Players.LocalPlayer.Character.Torch.Handle,game:GetService("Workspace").Map.Desert.Burn.Fire,0)
                                firetouchinterest(game.Players.LocalPlayer.Character.Torch.Handle,game:GetService("Workspace").Map.Desert.Burn.Fire,1)
                                return
                            end
                            topos(CFrame.new(1115.23499,4.92147732,4349.36963,-0.670654476,-2.18307523e-08,0.74176991,-9.06980624e-09,1,2.1230365e-08,-0.74176991,7.51052998e-09,-0.670654476))
                        end
                    end
                end
            else
                if CheckEnemies(RemoveLevelTitle("Saber Expert [Lv. 200] [Boss]")) then
                    v = CheckEnemies(RemoveLevelTitle("Saber Expert [Lv. 200] [Boss]"))
                    repeat task.wait()
                        KillMonster(v.Name, false, AutoSaber == false)
                        wait(5)
                        Notify("Completed Got Saber Sword!!", 5)
                    until not v or v.Humanoid.Health <= 0 or AutoSaber == false
                    if v.Humanoid.Health <= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                    end
                end
            end
        end
    end
end)

--Function Tab Necessary--
--[[Sea Hub - Necessary Functions]]--
function IsIslandRaid(cu)
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. cu) then
        min = 4500
        for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. cu and
                    (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min
             then
                min = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            end
        end
        for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            if
                v.Name == "Island " .. cu and
                    (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min
             then
                return v
            end
        end
    end
end

function getNextIsland()
    for r, v in pairs({5, 4, 3, 2, 1}) do
        if IsIslandRaid(v) and (IsIslandRaid(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
            return IsIslandRaid(v)
        end
    end
end

function CheckIsRaiding()
    checkraid1 = game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true
    checkraid2 = getNextIsland()
    if checkraid1 then
        return checkraid1
    end
    return checkraid2
end

function GetNameRaid()
    local table_GetNameRaid = {}
    local Rc = require(game:GetService("ReplicatedStorage").Raids).raids
    local Rb = require(game:GetService("ReplicatedStorage").Raids).advancedRaids
    for _,RaidName in pairs({Rc, Rb}) do
        for _,RaidName2 in pairs(RaidName) do
            if RaidName2 ~= " " and RaidName2 ~= "" then
                table.insert(table_GetNameRaid, RaidName2)
            end
        end
    end
    return table_GetNameRaid
end

function Kill_Aura()
    for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
            repeat wait(.1)
                v.Humanoid.Health = 0
                v.HumanoidRootPart.CanCollide = false
                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
            until not v or not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0
        end
    end
end

function Start_Raid()
    pcall(function ()
        if Second_Sea then
            fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif Third_Sea then
            fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end        
    end)
end

if Second_Sea or Third_Sea then 
    local SelectRaid = Tabs.Necessary:AddDropdown("SelectRaid", {
        Title = "Select Raid",
        Values = GetNameRaid(),
        Multi = false,
        Default = 1,
    })

    SelectRaid:OnChanged(function(Value)
        SelectRaid = Value
    end)

    local AutoFullyRaid = Tabs.Necessary:AddToggle("AutoFullyRaid", {Title = "Auto Raid [Fully]", Default = false })

    AutoFullyRaid:OnChanged(function(Value)
        AutoFullyRaid = Value
    end)

    task.spawn(function()
        while task.wait() do
            if AutoFullyRaid then
                if CheckItemBPCRBPCR("Special Microchip") then
                    Start_Raid()
                elseif getNextIsland() and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    topos(getNextIsland().CFrame * CFrame.new(0,60,0))
                    Kill_Aura()
                else
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", SelectRaid)
                end
            end
        end
    end)
end

-- Function Tab V4--
--[[Sea Hub - V4 Functions]]--

function TweenTemple()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586))
end

function CheckTemple()
    local CFRAMETEMPLE =CFrame.new(28734.3945,14888.2324,-109.071777,-0.650207579,4.1780531e-08,-0.759756625,1.97876595e-08,1,3.80575109e-08,0.759756625,9.71147784e-09,-0.650207579)
        if (CFRAMETEMPLE.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
        TweenTemple()
    end
    if (CFRAMETEMPLE.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
        TweenTemple()
    end
end

function GATCAN()
    local bn = CFrame.new(28576.4688, 14939.2832, 76.5164413, -1, 0, 0, 0, 0.707134247, -0.707079291, -0, -0.707079291, -0.707134247)
    local bo = CFrame.new(28576.4688, 14935.9512, 75.469101, -1, -4.22219593e-08, 1.13133396e-08, 0, -0.258819044, -0.965925813, 4.37113883e-08, -0.965925813, 0.258819044)
    local bp = 0.2
    if game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z > bo.Z + bp or game:GetService("Workspace").Map["Temple of Time"].Lever.Lever.CFrame.Z < bo.Z - bp then
        CheckTemple()
        topos(game:GetService("Workspace").Map["Temple of Time"].Lever.Part.CFrame)
        for r, v in pairs(game:GetService("Workspace").Map["Temple of Time"].Lever:GetDescendants()) do
            if v.Name == "ProximityPrompt" then
                fireproximityprompt(v)
            end
        end
    end
end

Tabs.RaceV4:AddButton({
    Title = "Auto TP Temple of Time & Lever",
    Description = "",
    Callback = function()
        GATCAN()
    end
})

tableRaceDoor = {}
for r, v in pairs(game.Workspace:GetDescendants()) do
    if string.find(v.Name, "Corridor") then
        tableRaceDoor[v.Name] = v.Door.Door.RightDoor.Union.CFrame
    end
end

function TweentoCurrentRaceDoor()
    a = tableRaceDoor[game.Players.LocalPlayer.Data.Race.Value .. "Corridor"]
    TempleOfTimeCFrame = CFrame.new(28734.3945,14888.2324,-109.071777,-0.650207579,4.1780531e-08,-0.759756625,1.97876595e-08,1,3.80575109e-08,0.759756625,9.71147784e-09,-0.650207579)
        if (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
            repeat wait()
                if(TempleOfTimeCFrame.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>2000 then
                    TweenTemple()
                end
            until (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
            repeat wait()
                if(TempleOfTimeCFrame.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>2000 then
                    TweenTemple()
                end
            until (TempleOfTimeCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
            topos(a)
            if(TempleOfTimeCFrame.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude<=2000 then
            topos(a)
        end
    end
end
Tabs.RaceV4:AddButton({
    Title = "Teleport to Race Door",
    Description = "",
    Callback = function()
        TweentoCurrentRaceDoor()
    end
})

function GetPlayersTrial()
    local MidPos = CFrame.new(28718.068359375, 14887.5625, -60.5482177734375)
    for _,CharactersFolder in pairs(game.Workspace.Characters:GetChildren()) do
        if DetectingPart(CharactersFolder) and CharactersFolder.Name ~= game.Players.LocalPlayer.Name and GetDistance(v.HumanoidRootPart, CFrame.new(28718.068359375, 14887.5625, -60.5482177734375)) <= 250 then
            return CharactersFolder
        end
    end
end

Tabs.RaceV4:AddParagraph({
    Title = "For Players Only",
    Content = ""
})

function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

local AutoKillPly = Tabs.RaceV4:AddToggle("AutoKillPly", {Title = "Auto Kill Players After Complete Trial", Default = false })

AutoKillPly:OnChanged(function(Value)
    AutoKillPly = Value
end)

task.spawn(function ()
    while task.wait() do
        if AutoKillPly then
            if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                if GetPlayersTrial() then
                    topos(GetPlayersTrial().CFrame * CFrame.new(0,4,4))
                    Click()
                end
            end
        end
    end
end)

local Race = {"Human", "Ghoul", "Skypiea", "Fishman", "Mink", "Cyborg"}

local SelectRace = Tabs.RaceV4:AddDropdown("SelectRace", {
    Title = "Select Race to Trial",
    Values = Race,
    Multi = false,
    Default = 1,
})

SelectRace:OnChanged(function(Value)
    SelectRaceTrial = Value
end)

local BypassTrialV4 = Tabs.RaceV4:AddToggle("BypassTrialV4", {Title = "Bypass Trial Race V4 [Selected]", Default = false })

BypassTrialV4:OnChanged(function(Value)
    BypassTrialV4 = Value
end)

CFrameCyborg = CFrame.new(-20021.8691,10090.4893,-16.37994,-0.976144373,6.71342875e-08,-0.217122361,8.46145412e-08,1,-7.1212007e-08,0.217122361,-8.78849065e-08,-0.976144373)
function FishmanTrial()
    if not game.Workspace.Map:FindFirstChild("FishmanTrial") then
        Notify("Not Found Trial", 5)
    end
    FishmanPlace = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Trial of Water")
    if FishmanPlace then
        for i,v in next, game.Workspace.SeaBeasts:GetChildren() do
            if string.find(v.Name, "SeaBeast") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - FishmanTrial.Position).Magnitude <= 1500 then
                if v.Health.Value > 0 then
                    return v
                end
            end
        end
    end
end

function TeleportSeabeast(c5)
    local a = Vector3.new(0, c5:FindFirstChild("HumanoidRootPart").Position.Y, 0)
    local ab = Vector3.new(0, game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y, 0)
    if (a - ab).Magnitude <= 175 then
        topos(c5.HumanoidRootPart.CFrame * CFrame.new(0, 300, 50))
    else
        topos(CFrame.new(c5.HumanoidRootPart.Position.X,game:GetService("Workspace").Map["WaterBase-Plane"].Position.Y+200,c5.HumanoidRootPart.Position.Z))
    end
end

task.spawn(function()
    while task.wait() do
        if BypassTrialV4 then
            pcall(function()
                if SelectRaceTrial == "Human" or SelectRaceTrial == "Ghoul" then
                    Kill_Aura()
                elseif SelectRaceTrial == "Skypiea" then
                    local part = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
                    if (part.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                        wait(.5)
                        topos(part.CFrame)
                    end
                elseif SelectRaceTrial == "Cyborg" then
                    if (CFrameCyborg.Position -  game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                        topos(CFrameCyborg)
                        wait(1)
                    end
                elseif SelectRaceTrial == "Mink" then
                    local part_mink = game:GetService("Workspace").StartPoint
                    if (part_mink.Position -  game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                        topos(part_mink.CFrame)
                    end
                elseif SelectRaceTrial == "Fishman" then
                    pcall(function ()
                        if FishmanTrial() and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - FishmanTrial().HumanoidRootPart.Position).Magnitude <= 1500 then
                            local player = game.Players.LocalPlayer
                            local backpack = player.Backpack
                            local humanoid = player.Character.Humanoid
                            local vim = game:GetService("VirtualInputManager")

                            for _, tool in pairs(backpack:GetChildren()) do
                                if tool:IsA("Tool") and (tool.ToolTip == "Melee" or tool.ToolTip == "Blox Fruit" or tool.ToolTip == "Sword" or tool.ToolTip == "Gun") then
                                    humanoid:EquipTool(tool)
                                end
                            end

                            local function sendKey(key)
                                vim:SendKeyEvent(true, key, false, player.Character.HumanoidRootPart)
                                vim:SendKeyEvent(false, key, false, player.Character.HumanoidRootPart)
                            end

                            local function sequence()
                                sendKey(122)
                                wait(0.2)
                                sendKey(120)
                                wait(0.2)
                                sendKey(99)
                                wait(0.2)
                            end

                            sequence()
                            sequence()
                            wait(0.5)
                            sequence()
                            wait(0.5)
                            sequence()
                            task.spawn(TeleportSeabeast(FishmanTrial()), 1)
                        end
                    end)
                end
            end)
        end
    end
end)

Tabs.RaceV4:AddParagraph({
    Title = "Other Functions",
    Content = ""
})

function BuyGear()
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
    Notify("Successfully Bought Gear!", 5)
end

local AutoBuyGear = Tabs.RaceV4:AddToggle("AutoBuyGear", {Title = "Auto Buy Gear", Default = false })

AutoBuyGear:OnChanged(function(Value)
    AutoBuyGear = Value
end)

task.spawn(function()
    while task.wait() do
        if AutoBuyGear then
            local b_ = CheckAcientOneStatus()
            if string.find(b_, "Can Buy Gear") then
                v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
                if v227 and game.Players.LocalPlayer.Data.Fragments.Value >= v227 then
                    BuyGear()
                end
            end
        end
        task.wait(5)
    end
end)

--Function Tab Status--
--[[Sea Hub - Status Functions]]--

function CheckRace()
    local bf = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    local c4 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
    if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V4"
    end
    if bf == -2 then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V3"
    end
    if c4 == -2 then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V2"
    end
    return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V1"
end

function Check_Summon_Cake()
    local c = tonumber(string.match(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true), "%d+"))
    if c then
        return "Summon Kata Remaning: " .. c
    elseif CheckBossCake() then
        return "Boss Already Spawned!"
    else
        return "Summon Kata Remaning: None"
    end
end

local CP = Tabs.Status:AddParagraph({ Title = "Cake Prince Status", Content = "None"})
local Bone = Tabs.Status:AddParagraph({ Title = "Bone Status", Content = "None"})
local PlayerPara = Tabs.Status:AddParagraph({ Title = "Player Status", Content = "None"})

task.spawn(function()
    while task.wait() do
        CP:SetDesc(tostring(Check_Summon_Cake()))
        Bone:SetDesc("Bone Inventory: ".. tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Check")))
        PlayerPara:SetDesc("Your Race Version: ".. CheckRace())
    end
end)
--Function Other Tab--
--[[Sea Hub - Other Tab Functions]]--
function check_mirage()
    if game.workspace.Map:FindFirstChild("MysticIsland") then
        return true
    else
        return nil
    end
end

function  GetBlueGear()
    if check_mirage() then
        for i,v in pairs(game.workspace.Map.MysticIsland:GetChildren()) do
            if v:IsA("MeshPart") and v.MeshId == "rbxassetid://10153114969" then
                return v
            end
        end
    end
end

function tweento_highestpoint()
    if check_mirage() then
        for r, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
            if v:IsA("MeshPart") and v.MeshId == "rbxassetid://6745037796" then
                return v
            end
        end
    end
end

function TwenetoHighestPoint()
    HighestPoint = tweento_highestpoint()
    if HighestPoint then
        topos(HighestPoint.CFrame * CFrame.new(0, 211.88, 0))
    end
end

function MoveCamtoMoon()
    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position,game:GetService("Lighting"):GetMoonDirection() + workspace.CurrentCamera.CFrame.Position)
end

function TweenBlueGear()
    BlueGear = GetBlueGear()
    if BlueGear then
        Tweento(BlueGear.CFrame)
    end
end

local Tweentohighestpoint = Tabs.Other:AddToggle("Tweentohighestpoint", {Title = "Tween to Highest Point", Default = false })

Tweentohighestpoint:OnChanged(function(fifai)
    Tweentohighestpoint = fifai
    if Tweentohighestpoint then
        TwenetoHighestPoint()
    end
end)

Tabs.Other:AddButton({
    Title = "Move Cam to Moon",
    Description = "",
    Callback = function()
        MoveCamtoMoon()
    end
})

local TweentoBlueGear = Tabs.Other:AddToggle("TweentoBlueGear", {Title = "Tween to Blue Gear", Default = false })

TweentoBlueGear:OnChanged(function(fifai)
    TweentoBlueGear = fifai
    if TweentoBlueGear then
        TweenBlueGear()
    end
end)

function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end

Tabs.Other:AddButton({
    Title = "No Fog",
    Description = "",
    Callback = function()
        NoFog()
    end
})

Tabs.Other:AddParagraph({
    Title = "Check Stock",
    Content = "For Check normal stock or mirage stock"
})

function Abbreviate(x)
    local abbreviations = {
        "K", -- 4 digits
        "M", -- 7 digits
        "B", -- 10 digits
        "T", -- 13 digits
        "QD", -- 16 digits
        "QT", -- 19 digits
        "SXT", -- 22 digits
        "SEPT", -- 25 digits
        "OCT", -- 28 digits
        "NON", -- 31 digits
        "DEC", -- 34 digits
        "UDEC", -- 37 digits
        "DDEC" -- 40 digits
    }
    if x < 1000 then
        return tostring(x)
    end

    local digits = math.floor(math.log10(x)) + 1
    local index = math.min(#abbreviations, math.floor((digits - 1) / 3))
    local front = x / math.pow(10, index * 3)

    return string.format("%i%s+", front, abbreviations[index])
end
function getFruitDealerCountdown()
    local defaulttime = 7200
    local dpersent = os.time() % defaulttime;
    local real1 = defaulttime - dpersent;
    defaulttime = defaulttime * 2
    local d2persent = os.time() % defaulttime;
    local real2 = defaulttime - dpersent;
    local ren = {
        TimeNormalDealer = string.format("%d:%02d:%02d:%02d", math.floor(real1 / 86400), math.floor(real1 % 86400 / 3600), math.floor(real1 % 3600 / 60), (math.floor(real1 % 60))),
        TimeMirageDealer = string.format("%d:%02d:%02d:%02d", math.floor(real2 / 86400), math.floor(real2 % 86400 / 3600), math.floor(real2 % 3600 / 60), (math.floor(real2 % 60))),
    }
    local fruitstocks = {
        a = {
            ks = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "GetFruits",
                false 
                )   
        },
        b = {
            l = true,
            ks = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                "GetFruits",
                true
            )
        }
    }
    fruitstocks.Normal = ""
    fruitstocks.Mirage = ""
    for i,v in pairs(fruitstocks) do
        if type(v) == "table" then  
            for _,n3 in pairs(v) do 
                if typeof(n3) == "table" then 
                    for __,n in pairs(n3) do 
                        if n.OnSale then 
                            local N = n.Name 
                            if N:split("-")[1] == N:split("-")[2] then 
                                N = N:split("-")[1]
                            end
                            if v.l then 
                                fruitstocks.Mirage = fruitstocks.Mirage..N.." : "..Abbreviate(n.Price).."\n"
                            else
                                fruitstocks.Normal = fruitstocks.Normal..N.." : "..Abbreviate(n.Price).."\n"
                            end
                        end 
                    end
                end
            end
        end
    end
    ren.Text1 = "Normal Dealer re-stock in "..ren.TimeNormalDealer
    ren.Text2 = "Mirage Dealer re-stock in "..ren.TimeMirageDealer
    ren.Stocks = fruitstocks
    return ren
end
local geti = getFruitDealerCountdown()

Tabs.Other:AddParagraph({
    Title = "Normal Stock:",
    Content = geti.Stocks.Normal
})

Tabs.Other:AddParagraph({
    Title = "Mirage Stock:" ,
    Content = geti.Stocks.Mirage
})

Tabs.Other:AddParagraph({
    Title = "Upgrade Race",
    Content = "Auto Upgrade Race V1 - V2 - V3"
})

local AutoBartilo = Tabs.Other:AddToggle("AutoBartilo", {Title = "Auto Bartilo", Default = false })

AutoBartilo:OnChanged(function(Value)
    AutoBartilo = Value
end)

task.spawn(function ()
    while task.wait() do
        if AutoBartilo then
            Race = CheckRace()
            if not string.find(Race, "V3") and not string.find(Race, "V4") then
                if not Second_Sea then
                    local args = {[1] = "TravelDressrosa"}
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
            if string.find(Race, "V1") then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if CheckEnemies(RemoveLevelTitle("Swan Pirate [Lv. 775]")) then
                            local v = CheckEnemies(RemoveLevelTitle("Swan Pirate [Lv. 775]"))
                            pcall(function()
                                repeat task.wait()
                                    KillMonster(v.Name, false, AutoBartilo == false)
                                until not v or v.Humanoid.Health <= 0 or AutoBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end)
                        end
                    end
                else
                    QuestPos = topos(CFrame.new(1057.92761, 137.614319, 1242.08069))
                end
            else
                Bartilotween = topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                local args = {[1] = "StartQuest", [2] = "BartiloQuest", [3] = 1}
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
            if CheckEnemies(RemoveLevelTitle("Jeremy [Lv. 850] [Boss]")) then
                v = CheckEnemies(RemoveLevelTitle("Jeremy [Lv. 850] [Boss]"))
                repeat task.wait()
                    KillMonster(v.Name, false, AutoBartilo == false)
                until not v and v.Humanoid.Health <= 0 or AutoBartilo == false 
            end
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
            StartCFrame=CFrame.new(-1837.46155,44.2921753,1656.19873,0.999881566,-1.03885048e-22,-0.0153914848,1.07805858e-22,1,2.53909284e-22,0.0153914848,-2.55538502e-22,0.999881566)
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - StartCFrame.Position).Magnitude > 500 then
                topos(StartCFrame)
            else
                local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                hrp.CFrame = CFrame.new(-1836, 11, 1714) wait(.5)
                hrp.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685) wait(1)
                hrp.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807) wait(1)
                hrp.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685) wait(1)
                hrp.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541) wait(1)
                hrp.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659) wait(1)
                hrp.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368) wait(1)
                hrp.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625) wait(1)
                hrp.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
            end
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
            AutoBartilo = false
        end
    end
end)

local AutoUpgradeV2 = Tabs.Other:AddToggle("AutoUpgradeV2", {Title = "Auto Upgrade V2", Default = false })

AutoUpgradeV2:OnChanged(function(Value)
    AutoUpgradeV2 = Value
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if AutoUpgradeV2 then
                local Back = game.Players.LocalPlayer.Backpack
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                if Back:FindFirstChild("Flower 2") then
                    if Back:FindFirstChild("Flower 1") then
                        topos(CFrame.new(-5497.06152, 47.5923004, -795.237061))
                        if CheckEnemies("Zombie") then
                            v = CheckEnemies("Zombie")
                            repeat task.wait()
                                KillMonster(v.Name, false, AutoUpgradeV2 == false)
                            until not v or v.Humanoid.Health <= 0 or AutoUpgradeV2 == false or Back:FindFirstChild("Flower 3")
                        end
                    else
                        topos(game.Workspace["Flower1"].CFrame)
                    end
                else
                    topos(game.Workspace["Flower2"].CFrame)
                end
                if Back:FindFirstChild("Flower 1") and Back:FindFirstChild("Flower 2") and Back:FindFirstChild("Flower 3") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                end
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "Flower1" or v.Name == "Flower2" then
                        v.Size = Vector3.new(20,20,20)
                    end
                end
            end
        end)
    end
end)

function ClaimQuestV3()
    local bf = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    if bf == 0 then
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
        wait(.1)
        Notify("Claimed Quest V3...", 5)
    elseif bf == -1 then
        Notify("Sent 2m to NPC")
    end
end

local AutoUpgradeV3 = Tabs.Other:AddToggle("AutoUpgradeV3", {Title = "Auto Upgrade V3", Default = false })

AutoUpgradeV3:OnChanged(function(Value)
    AutoUpgradeV3 = Value
end)

Fruit1M = {}
for i,v in next, game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits",game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop:GetAttribute("Shop2")) do
    if v.Price >= 1000000 then
        Fruit1M[v.Price] = v.Name
    end
end

function getFruitDuoi1M()
    local ab
    local cf = {}
    for r, v in pairs(FruitAbout1M) do
        table.insert(cf, v)
    end
    for r, v in next, game.ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory") do
        if v.Type == "Blox Fruit" then
            if not table.find(cf, v.Name) then
                ab = v.Name
            end
        end
    end
    return ab
end

function AnyDFInBackpack()
    for r, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            return true
        end
    end
    for r, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if string.find(v.Name, "Fruit") then
            return true
        end
    end
end

function UpV3NoTween()
    Arowe=CFrame.new(-1988.55322,124.841248,-70.4718018,0.173624337,0,0.984811902,0,1,0,-0.984811902,0,0.173624337)*CFrame.new(0,3,0)
    local args = {[1] = "Wenlocktoad", [2] = "3"}
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

function GetNearestChest()
    if not game.Workspace:FindFirstChild("Chest1") and not game.Workspace:FindFirstChild("Chest2") and game.Workspace:FindFirstChild("Chest1") and not game.Workspace:FindFirstChild("Chest3") then
        return nil
    end
    ClosetDistance = math.huge
    chests = {}
    for r, v in pairs(game.Workspace:GetChildren()) do
        if string.find(v.Name, "Chest") then
            table.insert(chests, v.CFrame)
        end
    end
    for r, v in pairs(chests) do
        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < ClosetDistance then
            ClosetDistance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        end
    end
    for r, v in pairs(chests) do
        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= ClosetDistance then
            return v
        end
    end
end

task.spawn(function ()
    while task.wait() do
        if AutoUpgradeV3 then
            Race = CheckRace()
            if Race == "Human V2" then
                ClaimQuestV3()
                local Boss_Human = {"Diamond", "Fajita", "Jeremy"}
                if CheckEnemies(Boss_Human) then
                    v = CheckEnemies(Boss_Human)
                    pcall(function ()
                        repeat task.wait()
                            KillMonster(v.Name, false, AutoUpgradeV3==false)
                        until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("Humanoid") or AutoUpgradeV3 == false
                    end)
                end
            elseif Race == "Cyborg V2" then
                if not AnyDFInBackpack() then
                    repeat task.wait()
                        fruit = getFruitDuoi1M()
                        if fruit then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", fruit)
                        end
                    until AnyDFInBackpack()
                end
            elseif Race == "Mink V2" then
                ClaimQuestV3()
                local chest = GetNearestChest()
                if chest and Race ~= "Mink V3" then
                    topos(chest)
                    CountChest = CountChest + 1
                    Notify("Remaining: " .. 30 - CountChest .. "Chest", 5)
                    if CountChest >= 30 then
                        UpV3NoTween()
                        Notify("Completed Upgrade Race V3", 5)
                        Notify("Race Status: ".. tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "info")), 5)
                    end
                end
            end
            if string.find(Race, "V3") or string.find(Race, "V4") then
                AutoUpgradeV3 = false
                Notify("You don't have race v2 because you're ".. CheckRace(), 5)
            end
        end
    end
end)

Tabs.Other:AddParagraph({
    Title = "JobId",
    Content = ""
})

Tabs.Other:AddButton({
    Title = "Copy Server JobID",
    Description = "",
    Callback = function()
        setclipboard(game.JobId)
        Notify("Copied JobId!!", 5)
    end
})

local PutJobid = Tabs.Other:AddInput("PutJobid", {
    Title = "Put your Job Id",
    Default = "",
    Placeholder = "Put Your Job Id Here",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        PutJobid = Value
    end
})

PutJobid:OnChanged(function(Value)
    if Value == "game.JobId" then
        PutJobid = game.JobId
    else
        PutJobid = Value
    end
    Notify("Your JobID: " .. PutJobid, 5)
end)

Tabs.Other:AddButton({
    Title = "Join Server",
    Description = "",
    Callback = function()
        Notify("Jonining Job ID: ".. tostring(PutJobid), 7)
        wait(1)
        game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", tostring(PutJobid))
    end
})

local FindLevi = Tabs.SeaEvent:AddToggle("FindLevi", {Title = "Auto Find Leviathan", Default = false })

FindLevi:OnChanged(function(Value)
    FindLevi = Value
end)

function CheckSeaBeast()
    for r, v in next, game:GetService("Workspace").SeaBeasts:GetChildren() do
        if v.Name == "SeaBeast1" then
            local s = v.HealthBBG.Frame.TextLabel.Text
            local c5 = s:gsub("/%d+,%d+", "")
            local a = v.HealthBBG.Frame.TextLabel.Text
            local ab
            if string.find(c5, ",") then
                ab = a:gsub("%d+,%d+/", "")
            else
                ab = a:gsub("%d+/", "")
            end
            local c = ab:gsub(",", "")
            if tonumber(c) >= 34500 then
                return v
            end
        end
    end
    return false
end


function checkboat()
    for r, v in next, game:GetService("Workspace").Boats:GetChildren() do
        if v:IsA("Model") then
            if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == game:GetService("Players").LocalPlayer.Name and  v.Humanoid.Value > 0 then
                return v
            end
        end
    end
    return false
end

task.spawn(function ()
    while task.wait() do
        if FindLevi then
            local CfLeviFind = CFrame.new(-118140.65625, 31.783639907836914, 172404.875)
            local SeaEventMob = {"Terrorshark", "Shark", "Piranha", "FishBoat", "Fish Crew Member"}
            if game.Players.LocalPlayer.Character.Humanoid.Sit and (checkboat().VehicleSeat.Position - CfLeviFind.Position).Magnitude >= 50 then
                TweenObject(CfLeviFind,checkboat().VehicleSeat,300)
            elseif CheckSeaBeast() or CheckEnemies(SeaEventMob) or game.Workspace.Locations:FindFirstChild("Rough Sea") and GetDistance(game.Workspace.Boats:FindFirstChild("VehicleSeat").Position) <= 1200 then
                TweenObject(CfLeviFind * CFrame.new(0,50,0),checkboat().VehicleSeat,350)
            elseif game.Workspace.Locations:FindFirstChild("Frozen Dimension") then
                FindLevi:Set(false)
            end
        end
    end
end)

Tabs.SeaEvent:AddParagraph({
    Title = "Kitsune Event",
    Content = ""
})

local TpKitsuneIsland = Tabs.SeaEvent:AddToggle("TpKitsuneIsland", {Title = "Teleport to Kitsune Island", Default = false })

TpKitsuneIsland:OnChanged(function(Value)
    TptoKisuneIsland = Value
end)

spawn(function()
    while task.wait() do
        if TptoKisuneIsland then
            topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0, 100, 0))
        end
    end
end)

local CollectAzureEmber = Tabs.SeaEvent:AddToggle("CollectAzureEmber", {Title = "Auto Collect Azure Ember", Default = false })

CollectAzureEmber:OnChanged(function(Value)
    GetAzureEmber = Value
end)

task.spawn(function()
    while GetAzureEmber do
        pcall(function()
            if game.Workspace.EmberTemplate then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.EmberTemplate.Part.CFrame
            end
        end)
    end
end)

Tabs.SeaEvent:AddParagraph({
    Title = "Main Functions",
    Content = "Sail Boat, Kill Mob, Etc"
})

task.spawn(function()
    while task.wait() do
        if Nocliprock then
            local function setCollision(objects, state)
                for _, v in pairs(objects:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = state
                    end
                end
            end
            
            setCollision(game.Workspace.Boats, not game.Players.LocalPlayer.Character.Humanoid.Sit)
            setCollision(game.Players.LocalPlayer.Character, not game.Players.LocalPlayer.Character.Humanoid.Sit)
        end
    end
end)
    
local NoClipRock = Tabs.SeaEvent:AddToggle("NoClipRock", {Title = "No Clip Ship", Default = false })
    
NoClipRock:OnChanged(function(Value)
    Nocliprock = Value
end)

local SailBoat = Tabs.SeaEvent:AddToggle("SailBoat", {Title = "Sail Boat", Default = false })

SailBoat:OnChanged(function(Value)
    SailBoat = Value
end)

function check_roughsea()
    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Rough Sea") then
        return true
    else
        return false
    end
end

task.spawn(function ()
    while task.wait() do
        if SailBoat then
            Zone = CFrame.new(-32704.103515625, 12.557344436645508, 24089.923828125)
            repeat wait() 
                if (Vector3.new(-16207.501953125, 9.0863618850708, 475.1490783691406) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20 then
                    topos(CFrame.new(-16207.501953125, 9.0863618850708, 475.1490783691406))
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", "PirateGrandBrigade")
                end
                if checkboat() and not check_roughsea() then
                    if (checkboat().VehicleSeat.Position - Vector3.new(-16207.501953125, 9.0863618850708, 475.1490783691406)).Magnitude > 50 then
                        if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit == true then
                            TweenObject(Zone,checkboat().VehicleSeat, 250)
                            Nocliprock = true
                        end
                    end
                    if not game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                        topos(checkboat().VehicleSeat.CFrame * CFrame.new(0,1,0))
                    end
                end
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-16207.501953125, 9.0863618850708, 475.1490783691406)).Magnitude > 1000 then
                    ResetTP(Vector3.new(-16207.501953125, 9.0863618850708, 475.1490783691406))
                end
            until not SailBoat
        end
    end
end)

local AutoKillMob = Tabs.SeaEvent:AddToggle("AutoKillMob", {Title = "Auto Kill Enemies on Sea Event", Default = false })

AutoKillMob:OnChanged(function(Value)
    AutoKillMob = Value
end)

function send_skill()
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    local humanoid = player.Character.Humanoid
    local vim = game:GetService("VirtualInputManager")

    for _, tool in pairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and (tool.ToolTip == "Melee" or tool.ToolTip == "Blox Fruit" or tool.ToolTip == "Sword" or tool.ToolTip == "Gun") then
            humanoid:EquipTool(tool)
        end
    end

    local function sendKey(key)
        vim:SendKeyEvent(true, key, false, player.Character.HumanoidRootPart)
        vim:SendKeyEvent(false, key, false, player.Character.HumanoidRootPart)
    end

    local function sequence()
        sendKey(122)
        wait(0.2)
        sendKey(120)
        wait(0.2)
        sendKey(99)
        wait(0.2)
    end

    sequence()
    sequence()
    wait(0.5)
    sequence()
    wait(0.5)
    sequence()
end

task.spawn(function ()
    while task.wait() do
        if AutoKillMob then
            if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
            else
                local SeaEventMob = {"Terrorshark", "Shark", "Piranha", "FishBoat", "Fish Crew Member"}
                if CheckEnemies(SeaEventMob) then
                    v = CheckEnemies(SeaEventMob)
                    repeat task.wait()
                        KillMonster(v.Name, false, AutoKillMob == false)
                    until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or AutoKillMob == false
                elseif CheckSeaBeast() then
                    v = CheckSeaBeast()
                    repeat wait()
                        if game.Players.LocalPlayer.Character.Humanoid.Health > 9000 then
                            spawn(TeleportSeabeast(v), 1)
                            send_skill()
                        elseif game.Players.LocalPlayer.Character.Humanoid.Health < 5000 then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,650,0))
                        else
                            spawn(TeleportSeabeast(v), 1)
                            send_skill()
                        end
                    until not v or not v.Parent or v.Health.Value <= 0 or not CheckSeaBeast() or not AutoKillMob
                elseif not CheckEnemies(SeaEventMob) or not CheckSeaBeast() then
                    if checkboat() then
                        topos(checkboat().VehicleSeat.CFrame * CFrame.new(0,1,0))
                    end
                end
            end
        end
    end
end)

-- Function Fast Attack--
--[[Fast Attack Beta Functions]]--
local fastattack = 0
getgenv().FastAttack = true
    task.spawn(function()
        while wait() do
            if getgenv().FastAttack == true then
                fastattack = 0.1
            end
        end
    end)

    local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
    CamShake:Stop()

    local RunService = game:GetService("RunService")
    local CombatFramework = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
    local CombatFrameworkR = debug.getupvalues(CombatFramework)[2]
    BladeHits = function(Value)
        local Hits = {}
        for _, Hit in ipairs(game.Workspace.Enemies:GetChildren()) do
            local Humanoid = Hit and Hit:FindFirstChildOfClass("Humanoid")
            if Humanoid and Humanoid.Health > 0 then
                local RootPart = Humanoid.RootPart
                if RootPart and game.Players.LocalPlayer:DistanceFromCharacter(RootPart.Position) < Value then
                    table.insert(Hits, RootPart)
                end
            end
        end
        return Hits
    end
    PlayerHits = function(Value)
        local Hits = {}
        for _, Char in ipairs(game.Workspace.Characters:GetChildren()) do
            if Char.Name ~= game.Players.LocalPlayer.Name then
                local Humanoid = Char and Char:FindFirstChildOfClass("Humanoid")
                if Humanoid and Humanoid.RootPart and Humanoid.Health > 0 then
                    if game.Players.LocalPlayer:DistanceFromCharacter(Humanoid.RootPart.Position) < Value then
                        table.insert(Hits, Humanoid.RootPart)
                    end
                end
            end
        end
        return Hits
    end
    AddAttack = function(Hit)
        local ac = CombatFrameworkR.activeController
        if ac and ac.equipped then
            if #Hit > 0 then
                local agrs1 = getupvalue(ac.attack, 5)
                local agrs2 = getupvalue(ac.attack, 6)
                local agrs3 = getupvalue(ac.attack, 4)
                local agrs4 = getupvalue(ac.attack, 7)
                local agrs5 = (agrs1 * 798405 + agrs3 * 727595) % agrs2
                local agrs6 = agrs3 * 798405
                agrs5 = (agrs5 * agrs2 + agrs6) % 1099511627776
                agrs1 = math.floor(agrs5 / agrs2)
                agrs3 = agrs5 - agrs1 * agrs2
                agrs4 = agrs4 + 1
                setupvalue(ac.attack, 5, agrs1)
                setupvalue(ac.attack, 6, agrs2)
                setupvalue(ac.attack, 4, agrs3)
                setupvalue(ac.attack, 7, agrs4)
                local Blade = ac.currentWeaponModel
                if Blade then
                    game.ReplicatedStorage.RigControllerEvent:FireServer("weaponChange", Blade.Name)
                    ac.animator.anims.basic[1]:Play(0.01, 0.01, 0.01)
                    game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(agrs5 / 1099511627776 * 16777215), agrs4)
                    game.ReplicatedStorage.RigControllerEvent:FireServer("hit", Hit, 1, "")
                end
            end
        end
    end
    AttackFunc = function()
        AddAttack(BladeHits(65))
        AddAttack(PlayerHits(65))
    end
    task.spawn(function()
        while task.wait() do
            if getgenv().CurrentlyFast then
                pcall(function()
                    local controller = CurveFrame.activeController
                    controller.timeToNextAttack = -1
                    controller.focusStart = 0
                    controller.hitboxMagnitude = 40
                    controller.humanoid.AutoRotate = true
                    controller.increment = 2          
                    game:GetService("VirtualUser"):Button1Down(Vector2.new())
                    game:GetService("VirtualUser"):Button1Up(Vector2.new())      
                end)
            end
        end
    end)
    local Tick = tick()
    local Delay = fastattack
    DetectFastAttack = function()
        task.spawn(function()
            while task.wait() do 
                if (tick() - Tick) >= math.clamp(Delay, 0.100, 1) then
                    task.spawn(AttackFunc)
                    getgenv().CurrentlyFast = true
                    Tick = tick()
                end
            end 
        end)
    end
    DetectFastAttack()

local ScreenGui = Instance.new("ScreenGui")
local icon = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

icon.Name = "icon"
icon.Parent = ScreenGui
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
icon.BorderSizePixel = 0
icon.Position = UDim2.new(0.0922165811, 0, 0.216599196, 0)
icon.Size = UDim2.fromOffset(600, 325,)
icon.Image = "http://www.roblox.com/asset/?id=18285114199"
icon.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"LeftControl",false,game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,"LeftControl",false,game)
end)
icon.Draggable = true
UICorner.CornerRadius = UDim.new(0, 94)
UICorner.Parent = icon

Notify("Loaded Script Successfully!", 5)
Window:SelectTab(1)
SaveManager:IgnoreThemeSettings()
SaveManager:LoadAutoloadConfig()
-- Functions Remove Effect --
--[[Loading Has Source]]--
loadstring(game:HttpGet("https://hvauto.click/raw/Destroy-Effect.txt"))()
