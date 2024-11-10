local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
----------------------------------------------------------------------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    Title = "Sea Hub | Blox Fruits",
    SubTitle = "By phfv4z",
    TabWidth = 155,
    Size = UDim2.fromOffset(500, 320),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
print("Script Loading...")
local Tabs = {
    Main = Window:AddTab({ Title = "+ Farming", Icon = "" }),
    Setting = Window:AddTab({ Title = "+ Settings", Icon = "" }),
    Stats = Window:AddTab({ Title = "+ Stats", Icon = "" }),
    Player = Window:AddTab({ Title = "+ Players", Icon = "" }),
    Teleport = Window:AddTab({ Title = "+ Teleport", Icon = "" }),
    Fruit = Window:AddTab({ Title = "+ Fruits", Icon = "" }),
    Raid = Window:AddTab({ Title = "+ Dungeon", Icon = "" }),
    Race = Window:AddTab({ Title = "+ Race", Icon = "" }),
    Shop = Window:AddTab({ Title = "+ Shops", Icon = "" }),
	Misc = Window:AddTab({ Title = "+ Miscs", Icon = "" }),
    Hop = Window:AddTab({ Title = "+ Hop Servers", Icon = "" }),
}
local Options = Fluent.Options
do
--------------------------------------------------------------------------------------------------------------------------------------------
--// Place Id Check
local id = game.PlaceId
if id == 2753915549 then First_Sea = true; elseif id == 4442272183 then Second_Sea = true; elseif id == 7449423635 then Third_Sea = true; else game:Shutdown() end;
----------------------------------------------------------------------------------------------------------------------------------------------
--// Sea World
First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
First_Sea = true
elseif placeId == 4442272183 then
Second_Sea = true
elseif placeId == 7449423635 then
Third_Sea = true
end
--// Check Quest
function CheckLevel()
local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
if First_Sea then
if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit" or SelectArea == '' then -- Bandit
Ms = "Bandit"
NameQuest = "BanditQuest1"
QuestLv = 1
NameMon = "Bandit"
CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey" or SelectArea == 'Jungle' then -- Monkey
Ms = "Monkey"
NameQuest = "JungleQuest"
QuestLv = 1
NameMon = "Monkey"
CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla" or SelectArea == 'Jungle' then -- Gorilla
Ms = "Gorilla"
NameQuest = "JungleQuest"
QuestLv = 2
NameMon = "Gorilla"
CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate" or SelectArea == 'Buggy' then -- Pirate
Ms = "Pirate"
NameQuest = "BuggyQuest1"
QuestLv = 1
NameMon = "Pirate"
CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute" or SelectArea == 'Buggy' then -- Brute
Ms = "Brute"
NameQuest = "BuggyQuest1"
QuestLv = 2
NameMon = "Brute"
CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit" or SelectArea == 'Desert' then -- Desert Bandit
Ms = "Desert Bandit"
NameQuest = "DesertQuest"
QuestLv = 1
NameMon = "Desert Bandit"
CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer" or SelectArea == 'Desert' then -- Desert Officer
Ms = "Desert Officer"
NameQuest = "DesertQuest"
QuestLv = 2
NameMon = "Desert Officer"
CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
elseif Lv == 90 or Lv <= 99 or SelectMonster == "S Now Bandit" or SelectArea == 'S Now' then -- S Now Bandit
Ms = "S Now Bandit"
NameQuest = "S NowQuest"
QuestLv = 1
NameMon = "S Now Bandit"
CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
elseif Lv == 100 or Lv <= 119 or SelectMonster == "S Nowman" or SelectArea == 'S Now' then -- S Nowman
Ms = "S Nowman"
NameQuest = "S NowQuest"
QuestLv = 2
NameMon = "S Nowman"
CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer" or SelectArea == 'Marine' then -- Chief Petty Officer
Ms = "Chief Petty Officer"
NameQuest = "MarineQuest2"
QuestLv = 1
NameMon = "Chief Petty Officer"
CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit" or SelectArea == 'Sky' then -- Sky Bandit
Ms = "Sky Bandit"
NameQuest = "SkyQuest"
QuestLv = 1
NameMon = "Sky Bandit"
CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
elseif Lv == 175 or Lv <= 189 or SelectMonster == "Dark Master" or SelectArea == 'Sky' then -- Dark Master
Ms = "Dark Master"
NameQuest = "SkyQuest"
QuestLv = 2
NameMon = "Dark Master"
CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
elseif Lv == 190 or Lv <= 209 or SelectMonster == "Prisoner" or SelectArea == 'Prison' then -- Prisoner
Ms = "Prisoner"
NameQuest = "PrisonerQuest"
QuestLv = 1
NameMon = "Prisoner"
CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
elseif Lv == 210 or Lv <= 249 or SelectMonster == "Dangerous Prisoner" or SelectArea == 'Prison' then -- Dangerous Prisoner
Ms = "Dangerous Prisoner"
NameQuest = "PrisonerQuest"
QuestLv = 2
NameMon = "Dangerous Prisoner"
CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, -0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
elseif Lv == 250 or Lv <= 274 or SelectMonster == "Toga Warrior" or SelectArea == 'Colosseum' then -- Toga Warrior
Ms = "Toga Warrior"
NameQuest = "ColosseumQuest"
QuestLv = 1
NameMon = "Toga Warrior"
CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator" or SelectArea == 'Colosseum' then -- Gladiator
Ms = "Gladiator"
NameQuest = "ColosseumQuest"
QuestLv = 2
NameMon = "Gladiator"
CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
elseif Lv == 300 or Lv <= 324 or SelectMonster == "Military Soldier" or SelectArea == 'Magma' then -- Military Soldier
Ms = "Military Soldier"
NameQuest = "MagmaQuest"
QuestLv = 1
NameMon = "Military Soldier"
CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
elseif Lv == 325 or Lv <= 374 or SelectMonster == "Military Spy" or SelectArea == 'Magma' then -- Military Spy
Ms = "Military Spy"
NameQuest = "MagmaQuest"
QuestLv = 2
NameMon = "Military Spy"
CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior" or SelectArea == 'Fishman' then -- Fishman Warrior
Ms = "Fishman Warrior"
NameQuest = "FishmanQuest"
QuestLv = 1
NameMon = "Fishman Warrior"
CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
if getgenv().AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando" or SelectArea == 'Fishman' then -- Fishman Commando
Ms = "Fishman Commando"
NameQuest = "FishmanQuest"
QuestLv = 2
NameMon = "Fishman Commando"
CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
if getgenv().AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif Lv == 10 or Lv <= 474 or SelectMonster == "God's Guard" or SelectArea == 'Sky Island' then -- God's Guard
Ms = "God's Guard"
NameQuest = "SkyExp1Quest"
QuestLv = 1
NameMon = "God's Guard"
CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
if getgenv().AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
end
elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda" or SelectArea == 'Sky Island' then -- Shanda
Ms = "Shanda"
NameQuest = "SkyExp1Quest"
QuestLv = 2
NameMon = "Shanda"
CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
if getgenv().AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
end
elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad" or SelectArea == 'Sky Island' then -- Royal Squad
Ms = "Royal Squad"
NameQuest = "SkyExp2Quest"
QuestLv = 1
NameMon = "Royal Squad"
CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier" or SelectArea == 'Sky Island' then -- Royal Soldier
Ms = "Royal Soldier"
NameQuest = "SkyExp2Quest"
QuestLv = 2
NameMon = "Royal Soldier"
CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate" or SelectArea == 'Fountain' then -- Galley Pirate
Ms = "Galley Pirate"
NameQuest = "FountainQuest"
QuestLv = 1
NameMon = "Galley Pirate"
CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
elseif Lv >= 650 or SelectMonster == "Galley Captain" or SelectArea == 'Fountain' then -- Galley Captain
Ms = "Galley Captain"
NameQuest = "FountainQuest"
QuestLv = 2
NameMon = "Galley Captain"
CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
end
end
if Second_Sea then
if Lv == 700 or Lv <= 724 or SelectMonster == "Raider" or SelectArea == 'Area 1' then -- Raider
Ms = "Raider"
NameQuest = "Area1Quest"
QuestLv = 1
NameMon = "Raider"
CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary" or SelectArea == 'Area 1' then -- Mercenary
Ms = "Mercenary"
NameQuest = "Area1Quest"
QuestLv = 2
NameMon = "Mercenary"
CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate" or SelectArea == 'Area 2' then -- Swan Pirate
Ms = "Swan Pirate"
NameQuest = "Area2Quest"
QuestLv = 1
NameMon = "Swan Pirate"
CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff" or SelectArea == 'Area 2' then -- Factory Staff
Ms = "Factory Staff"
NameQuest = "Area2Quest"
QuestLv = 2
NameMon = "Factory Staff"
CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenan" or SelectArea == 'Marine' then -- Marine Lieutenant
Ms = "Marine Lieutenant"
NameQuest = "MarineQuest3"
QuestLv = 1
NameMon = "Marine Lieutenant"
CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain" or SelectArea == 'Marine' then -- Marine Captain
Ms = "Marine Captain"
NameQuest = "MarineQuest3"
QuestLv = 2
NameMon = "Marine Captain"
CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie" or SelectArea == 'Zombie' then -- Zombie
Ms = "Zombie"
NameQuest = "ZombieQuest"
QuestLv = 1
NameMon = "Zombie"
CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire" or SelectArea == 'Zombie' then -- Vampire
Ms = "Vampire"
NameQuest = "ZombieQuest"
QuestLv = 2
NameMon = "Vampire"
CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "S Now Trooper" or SelectArea == 'S Now Mountain' then -- S Now Trooper
Ms = "S Now Trooper"
NameQuest = "S NowMountainQuest"
QuestLv = 1
NameMon = "S Now Trooper"
CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior" or SelectArea == 'S Now Mountain' then -- Winter Warrior
Ms = "Winter Warrior"
NameQuest = "S NowMountainQuest"
QuestLv = 2
NameMon = "Winter Warrior"
CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate" or SelectArea == 'Ice Fire' then -- Lab Subordinate
Ms = "Lab Subordinate"
NameQuest = "IceSideQuest"
QuestLv = 1
NameMon = "Lab Subordinate"
CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior" or SelectArea == 'Ice Fire' then -- Horned Warrior
Ms = "Horned Warrior"
NameQuest = "IceSideQuest"
QuestLv = 2
NameMon = "Horned Warrior"
CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja" or SelectArea == 'Ice Fire' then -- Magma Ninja
Ms = "Magma Ninja"
NameQuest = "FireSideQuest"
QuestLv = 1
NameMon = "Magma Ninja"
CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate" or SelectArea == 'Ice Fire' then -- Lava Pirate
Ms = "Lava Pirate"
NameQuest = "FireSideQuest"
QuestLv = 2
NameMon = "Lava Pirate"
CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand" or SelectArea == 'Ship' then -- Ship Deckhand
Ms = "Ship Deckhand"
NameQuest = "ShipQuest1"
QuestLv = 1
NameMon = "Ship Deckhand"
CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
if getgenv().AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer" or SelectArea == 'Ship' then -- Ship Engineer
Ms = "Ship Engineer"
NameQuest = "ShipQuest1"
QuestLv = 2
NameMon = "Ship Engineer"
CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
if getgenv().AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward" or SelectArea == 'Ship' then -- Ship Steward
Ms = "Ship Steward"
NameQuest = "ShipQuest2"
QuestLv = 1
NameMon = "Ship Steward"
CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
if getgenv().AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer" or SelectArea == 'Ship' then -- Ship Officer
Ms = "Ship Officer"
NameQuest = "ShipQuest2"
QuestLv = 2
NameMon = "Ship Officer"
CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
if getgenv().AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior" or SelectArea == 'Frost' then -- Arctic Warrior
Ms = "Arctic Warrior"
NameQuest = "FrostQuest"
QuestLv = 1
NameMon = "Arctic Warrior"
CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
if getgenv().AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude > 20000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
end
elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "S Now Lurker" or SelectArea == 'Frost' then -- S Now Lurker
Ms = "S Now Lurker"
NameQuest = "FrostQuest"
QuestLv = 2
NameMon = "S Now Lurker"
CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier" or SelectArea == 'Forgotten' then -- Sea Soldier
Ms = "Sea Soldier"
NameQuest = "ForgottenQuest"
QuestLv = 1
NameMon = "Sea Soldier"
CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
elseif Lv >= 1450 or SelectMonster == "Water Fighter" or SelectArea == 'Forgotten' then -- Water Fighter
Ms = "Water Fighter"
NameQuest = "ForgottenQuest"
QuestLv = 2
NameMon = "Water Fighter"
CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
end
end
if Third_Sea then
if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire" or SelectArea == 'Pirate Port' then -- Pirate Millionaire
Ms = "Pirate Millionaire"
NameQuest = "PiratePortQuest"
QuestLv = 1
NameMon = "Pirate Millionaire"
CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire" or SelectArea == 'Pirate Port' then -- Pistol Billoonaire
Ms = "Pistol Billionaire"
NameQuest = "PiratePortQuest"
QuestLv = 2
NameMon = "Pistol Billionaire"
CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior" or SelectArea == 'Amazon' then -- Dragon Crew Warrior
Ms = "Dragon Crew Warrior"
NameQuest = "AmazonQuest"
QuestLv = 1
NameMon = "Dragon Crew Warrior"
CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer" or SelectArea == 'Amazon' then -- Dragon Crew Archer
Ms = "Dragon Crew Archer"
NameQuest = "AmazonQuest"
QuestLv = 2
NameMon = "Dragon Crew Archer"
CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander" or SelectArea == 'Amazon' then -- Female Islander
Ms = "Female Islander"
NameQuest = "AmazonQuest2"
QuestLv = 1
NameMon = "Female Islander"
CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander" or SelectArea == 'Amazon' then -- Giant Islander
Ms = "Giant Islander"
NameQuest = "AmazonQuest2"
QuestLv = 2
NameMon = "Giant Islander"
CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore" or SelectArea == 'Marine Tree' then -- Marine Commodore
Ms = "Marine Commodore"
NameQuest = "MarineTreeIsland"
QuestLv = 1
NameMon = "Marine Commodore"
CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral" or SelectArea == 'Marine Tree' then -- Marine Rear Admiral
Ms = "Marine Rear Admiral"
NameQuest = "MarineTreeIsland"
QuestLv = 2
NameMon = "Marine Rear Admiral"
CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider" or SelectArea == 'Deep Forest' then -- Fishman Raide
Ms = "Fishman Raider"
NameQuest = "DeepForestIsland3"
QuestLv = 1
NameMon = "Fishman Raider"
CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain" or SelectArea == 'Deep Forest' then -- Fishman Captain
Ms = "Fishman Captain"
NameQuest = "DeepForestIsland3"
QuestLv = 2
NameMon = "Fishman Captain"
CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate" or SelectArea == 'Deep Forest' then -- Forest Pirate
Ms = "Forest Pirate"
NameQuest = "DeepForestIsland"
QuestLv = 1
NameMon = "Forest Pirate"
CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate" or SelectArea == 'Deep Forest' then -- Mythological Pirate
Ms = "Mythological Pirate"
NameQuest = "DeepForestIsland"
QuestLv = 2
NameMon = "Mythological Pirate"
CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate" or SelectArea == 'Deep Forest' then -- Jungle Pirate
Ms = "Jungle Pirate"
NameQuest = "DeepForestIsland2"
QuestLv = 1
NameMon = "Jungle Pirate"
CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate" or SelectArea == 'Deep Forest' then -- Musketeer Pirate
Ms = "Musketeer Pirate"
NameQuest = "DeepForestIsland2"
QuestLv = 2
NameMon = "Musketeer Pirate"
CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton" or SelectArea == 'Haunted Castle' then
Ms = "Reborn Skeleton"
NameQuest = "HauntedQuest1"
QuestLv = 1
NameMon = "Reborn Skeleton"
CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016, -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie" or SelectArea == 'Haunted Castle' then
Ms = "Living Zombie"
NameQuest = "HauntedQuest1"
QuestLv = 2
NameMon = "Living Zombie"
CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364, -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul" or SelectArea == 'Haunted Castle' then
Ms = "Demonic Soul"
NameQuest = "HauntedQuest2"
QuestLv = 1
NameMon = "Demonic Soul"
CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
elseif Lv == 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy" or SelectArea == 'Haunted Castle' then
Ms = "Posessed Mummy"
NameQuest = "HauntedQuest2"
QuestLv = 2
NameMon = "Posessed Mummy"
CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293, 6078.4653320313)
CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
elseif Lv == 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout" or SelectArea == 'Nut Island' then
Ms = "Peanut Scout"
NameQuest = "NutsIslandQuest"
QuestLv = 1
NameMon = "Peanut Scout"
CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
elseif Lv == 2100 or Lv <= 2124 or SelectMonster == "Peanut President" or SelectArea == 'Nut Island' then
Ms = "Peanut President"
NameQuest = "NutsIslandQuest"
QuestLv = 2
NameMon = "Peanut President"
CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
elseif Lv == 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef" or SelectArea == 'Ice Cream Island' then
Ms = "Ice Cream Chef"
NameQuest = "IceCreamIslandQuest"
QuestLv = 1
NameMon = "Ice Cream Chef"
CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
elseif Lv == 2150 or Lv <= 2199 or SelectMonster == "Ice Cream Commander" or SelectArea == 'Ice Cream Island' then
Ms = "Ice Cream Commander"
NameQuest = "IceCreamIslandQuest"
QuestLv = 2
NameMon = "Ice Cream Commander"
CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
elseif Lv == 2200 or Lv <= 2224 or SelectMonster == "Cookie Crafter" or SelectArea == 'Cake Island' then
Ms = "Cookie Crafter"
NameQuest = "CakeQuest1"
QuestLv = 1
NameMon = "Cookie Crafter"
CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
elseif Lv == 2225 or Lv <= 2249 or SelectMonster == "Cake Guard" or SelectArea == 'Cake Island' then
Ms = "Cake Guard"
NameQuest = "CakeQuest1"
QuestLv = 2
NameMon = "Cake Guard"
CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
elseif Lv == 2250 or Lv <= 2274 or SelectMonster == "Baking Staff" or SelectArea == 'Cake Island' then
Ms = "Baking Staff"
NameQuest = "CakeQuest2"
QuestLv = 1
NameMon = "Baking Staff"
CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
elseif Lv == 2275 or Lv <= 2299 or SelectMonster == "Head Baker" or SelectArea == 'Cake Island' then
Ms = "Head Baker"
NameQuest = "CakeQuest2"
QuestLv = 2
NameMon = "Head Baker"
CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -0.991971016, 0, -0.126466095, 0, 1, 0, 0.126466095, 0, -0.991971016)
elseif Lv == 2300 or Lv <= 2324 or SelectMonster == "Cocoa Warrior" or SelectArea == 'Choco Island' then
Ms = "Cocoa Warrior"
NameQuest = "ChocQuest1"
QuestLv = 1
NameMon = "Cocoa Warrior"
CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)
elseif Lv == 2325 or Lv <= 2349 or SelectMonster == "Chocolate Bar Battler" or SelectArea == 'Choco Island' then
Ms = "Chocolate Bar Battler"
NameQuest = "ChocQuest1"
QuestLv = 2
NameMon = "Chocolate Bar Battler"
CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685)
elseif Lv == 2350 or Lv <= 2374 or SelectMonster == "Sweet Thief" or SelectArea == 'Choco Island' then
Ms = "Sweet Thief"
NameQuest = "ChocQuest2"
QuestLv = 1
NameMon = "Sweet Thief"
CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
elseif Lv == 2375 or Lv <= 2400 or SelectMonster == "Candy Rebel" or SelectArea == 'Choco Island' then
Ms = "Candy Rebel"
NameQuest = "ChocQuest2"
QuestLv = 2
NameMon = "Candy Rebel"
CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -0.819156051, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, -0.819156051)
elseif Lv == 2400 or Lv <= 2424 or SelectMonster == "Candy Pirate" or SelectArea == 'Candy Island' then
Ms = "Candy Pirate"
NameQuest = "CandyQuest1"
QuestLv = 1
NameMon = "Candy Pirate"
CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934, 0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
elseif Lv == 2425 or Lv <= 2449 or SelectMonster == "S Now Demon" or SelectArea == 'Candy Island' then
Ms = "S Now Demon"
NameQuest = "CandyQuest1"
QuestLv = 2
NameMon = "S Now Demon"
CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099, 0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif Lv == 2450 or Lv <= 2474 or SelectMonster == "Isle Outlaw" or SelectArea == 'Tiki Outpost' then
Ms = "Isle Outlaw"
NameQuest = "TikiQuest1"
QuestLv = 1
NameMon = "Isle Outlaw"
CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
CFrameMon = CFrame.new(-16162.8193359375, 11.6863374710083, -96.45481872558594)
elseif Lv == 2475 or Lv <= 2499 or SelectMonster == "Island Boy" or SelectArea == 'Tiki Outpost' then 
Ms = "Island Boy"
NameQuest = "TikiQuest1"
QuestLv = 2
NameMon = "Island Boy"
CFrameQ = CFrame.new(-16549.890625, 55.68635559082031, -179.91360473632812)
CFrameMon = CFrame.new(-16912.130859375, 11.787443161010742, -133.0850830078125)
elseif Lv == 2500 or Lv <= 2424 then
Ms = "Sun-kissed Warrior"
QuestLv = 1
NameQuest = "TikiQuest2"
NameMon = "kissed"
CFrameQ = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
elseif Lv >= 2525 or SelectMonster == "Isle Champion" or SelectArea == 'Tiki Outpost' then
Ms = "Isle Champion"
NameQuest = "TikiQuest2"
QuestLv = 2
NameMon = "Isle Champion"
CFrameQ = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625)
CFrameMon = CFrame.new(-16848.94140625, 21.68633460998535, 1041.4490966796875)
end
end
end

--// Check Material
function MaterialMon()
if SelectMaterial == "Radioactive Material" then
MMon = "Factory Staff"
MPos = CFrame.new(295,73,-56)
SP = "Default"
elseif SelectMaterial == "Mystic Droplet" then
MMon = "Water Fighter"
MPos = CFrame.new(-3385,239,-10542)
SP = "Default"
elseif SelectMaterial == "Magma Ore" then
if First_Sea then
MMon = "Military Spy"
MPos = CFrame.new(-5815,84,8820)
SP = "Default"
elseif Second_Sea then
MMon = "Magma Ninja"
MPos = CFrame.new(-5428,78,-5959)
SP = "Default"
end
elseif SelectMaterial == "Angel Wings" then
MMon = "God's Guard"
MPos = CFrame.new(-4698,845,-1912)
SP = "Default"
if (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043, -381.476196))
end
elseif SelectMaterial == "Leather" then
if First_Sea then
MMon = "Brute"
MPos = CFrame.new(-1145,15,4350)
SP = "Default"
elseif Second_Sea then
MMon = "Marine Captain"
MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
SP = "Default"
elseif Third_Sea then
MMon = "Jungle Pirate"
MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
SP = "Default"
end
elseif SelectMaterial == "Scrap Metal" then
if First_Sea then
MMon = "Brute"
MPos = CFrame.new(-1145,15,4350)
SP = "Default"
elseif Second_Sea then
MMon = "Swan Pirate"
MPos = CFrame.new(878,122,1235)
SP = "Default"
elseif Third_Sea then
MMon = "Jungle Pirate"
MPos = CFrame.new(-12107,332,-10549)
SP = "Default"
end
elseif SelectMaterial == "Fish Tail" then
if Third_Sea then
MMon = "Fishman Raider"
MPos = CFrame.new(-10993,332,-8940)
SP = "Default"
elseif First_Sea then
MMon = "Fishman Warrior"
MPos = CFrame.new(61123,19,1569)
SP = "Default"
if (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
end
end
elseif SelectMaterial == "Demonic Wisp" then
MMon = "Demonic Soul"
MPos = CFrame.new(-9507,172,6158)
SP = "Default"
elseif SelectMaterial == "Vampire Fang" then
MMon = "Vampire"
MPos = CFrame.new(-6033,7,-1317)
SP = "Default"
elseif SelectMaterial == "Conjured Cocoa" then
MMon = "Chocolate Bar Battler"
MPos = CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
SP = "Default"
elseif SelectMaterial == "Dragon Scale" then
MMon = "Dragon Crew Archer"
MPos = CFrame.new(6594,383,139)
SP = "Default"
elseif SelectMaterial == "Gunpowder" then
MMon = "Pistol Billionaire"
MPos = CFrame.new(-469,74,5904)
SP = "Default"
elseif SelectMaterial == "Mini Tusk" then
MMon = "Mythological Pirate"
MPos = CFrame.new(-13545,470,-6917)
SP = "Default"
end
end
--Esp
function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if  Not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(8, 0, 0)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if  Not isnil(v.Character) then
            if ESPPlayer then
                if  Not isnil(v.Character.Head) and  Not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size10"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,0,254)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Huma Noid.Health*100/v.Character.Huma Noid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if  Not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if  Not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if  Not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if  Not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if  Not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if  Not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if  Not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if  Not isnil(v.Character) then
            if ESPPlayer then
                if  Not isnil(v.Character.Head) and  Not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Huma Noid.Health*100/v.Character.Huma Noid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if  Not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if  Not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if  Not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if  Not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if  Not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if  Not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

spawn(function()
while wait() do
    pcall(function()
        if MobESP then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild('Huma NoidRootPart') then
                    if  Not v:FindFirstChild("MobEap") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "MobEap"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - v.Huma NoidRootPart.Position).Magnitude)
                    v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("MobEap") then
                    v.MobEap:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if SeaESP then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild('Huma NoidRootPart') then
                    if  Not v:FindFirstChild("Seaesps") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "Seaesps"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - v.Huma NoidRootPart.Position).Magnitude)
                    v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Seaesps") then
                    v.Seaesps:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if NpcESP then
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild('Huma NoidRootPart') then
                    if  Not v:FindFirstChild("NpcEspes") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "NpcEspes"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - v.Huma NoidRootPart.Position).Magnitude)
                    v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild("NpcEspes") then
                    v.NpcEspes:Destroy()
                end
            end
        end
    end)
end
end)
function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateIslandMirageESP() 
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    pcall(function()
        if MirageIslandESP then 
            if v.Name == "Mirage Island" then
                if  Not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateAfdESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AfdESP then 
            if v.Name == "Advanced Fruit Dealer" then
                if  Not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateAuraESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AuraESP then 
            if v.Name == "Master of Enhancement" then
                if  Not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateLSDESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if LADESP then 
            if v.Name == "Legendary Sword Dealer" then
                if  Not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateGeaESP() 
for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
    pcall(function()
        if GearESP then 
            if v.Name == "MeshPart" then
                if  Not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
--------------------------------------------------------------------------------------------------------------------------------------------
---------Tween
  function Tween2(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude
    if Distance >= 1 then
    Speed = 300
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.Huma NoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Play()
    if getgenv().CancelTween2 then
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.Huma NoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Cancel()
    end
    getgenv().Clip2 = true
    wait(Distance/Speed)
    getgenv().Clip2 = false
    end
-- [Function (Abandoned Quest , Others)]
function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end
--BTPZ
function BTPZ(Point)
    game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = Point
    game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = Point
        end
--BTP
function BTP(Point)
    game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = Point
    game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = Point
        end
--BTP
function BTP(Position)
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = Position
	wait(0.5)
	game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = Position
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
------Bypass TP 2
 function GetIsLand(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end

	local ReturnValue
	local CheckI Nout = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckI Nout then
				CheckI Nout = ReMagnitude;
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
    end
end
     function toTarget(...)
    local RealtargetPos = { ... }
    local targetPos = RealtargetPos[1]
    local RealTarget
    if type(targetPos) == "vector" then
        RealTarget = CFrame.new(targetPos)
    elseif type(targetPos) == "userdata" then
        RealTarget = targetPos
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos))
    end
    if game.Players.LocalPlayer.Character:WaitForChild("Huma Noid").Health == 0 then
        if tween then tween:Cancel() end
        repeat wait(0.2) until game.Players.LocalPlayer.Character:WaitForChild("Huma Noid").Health > 0; wait(0.2)
    end
    local tweenfunc = {}
    local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma NoidRootPart").Position)
        .Magnitude
    if Distance < 1000 then
        Speed = 315
    elseif Distance >= 1000 then
        Speed = 300
    end
    if BypassTP then
        if Distance > 3000 and  Not getgenv().AutoNextIsland and  Not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and  Not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
            pcall(function()
                tween:Cancel()
                fkwarp = false
                if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    wait(.1)
                    Com("F_", "TeleportToSpawn")
                elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid"):ChangeState(15)
                    wait(0.1)
                    repeat wait(getgenv().Fast_Delay) until game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid").Health > 0
                else
                    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid").Health > 0 then
                        if fkwarp == false then
                            game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = RealTarget
                        end
                        fkwarp = true
                    end
                    wait(.08)
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid"):ChangeState(15)
                    repeat wait(getgenv().Fast_Delay) until game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid").Health > 0
                    wait(.1)
                    Com("F_", "SetSpawnPoint")
                end
                wait(0.2)

                return
            end)
        end
    end

    local tween_s = game:service "TweenService"
    local info = TweenInfo.new(
        (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma NoidRootPart").Position)
        .Magnitude / Speed, Enum.EasingStyle.Linear)
    local tweenw, err = pcall(function()
        tween = tween_s:Create(game.Players.LocalPlayer.Character["Huma NoidRootPart"], info, { CFrame = RealTarget })
        tween:Play()
    end)

    function tweenfunc:Stop()
        tween:Cancel()
    end

    function tweenfunc:Wait()
        tween.Completed:Wait()
    end

    return tweenfunc
end
----------------------------------------------------------------------------------------------------------------------------------------------
  TweenSpeed = 300
   function Tween(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude
    if Distance >= 1 then
    Speed = TweenSpeed
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.Huma NoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Play()
    if getgenv().StopTween then
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.Huma NoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Cancel()
    end
    end
    function CancelTween(target)
    if  Not target then
    getgenv().StopTween = true
    wait()
    Tween(game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.CFrame)
    wait()
    getgenv().StopTween = false
    end
    end
----------------------------------------------------------------------------------------------------------------------------------------------
function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Huma Noid").Health <= 0 or  Not game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid") then tween:Cancel() repeat wait(getgenv().Fast_Delay) until game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.Huma NoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.Huma NoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.Huma NoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["Huma NoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

    --function TP to Boat/Ship
    function TweenShip(CFgo)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end
    
    function TweenBoat(CFgo)
        if game.Players.LocalPlayer.Character:WaitForChild("Huma Noid").Health <= 0 or  Not game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid") then tween:Cancel() repeat wait(getgenv().Fast_Delay) until game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Huma Noid").Health > 0 wait(7) return end
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.Huma NoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game.Players.LocalPlayer.Character["Huma NoidRootPart"], info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end

--select weapon
function EquipTool(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(0.5)
			game.Players.LocalPlayer.Character.Huma Noid:EquipTool(tool)
		end
	end
    
    --aimbot mastery

	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
		  local method = getnamecallmethod()
		  local args = {
			...
		  }
		  if tostring(method) == "FireServer" then
		  if tostring(args[1]) == "RemoteEvent" then
		  if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
		  if getgenv().UseSkill then
		  if type(args[2]) == "vector" then
		  args[2] = PositionSkillMasteryDevilFruit
		  else
			args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
		  end
		  return old(unpack(args))
		  end
		  end
		  end
		  end
		  return old(...)
		  end)
        end)
--Equip Gun
spawn(function()
  pcall(function()
    while task.wait() do
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    if v:FindFirstChild("RemoteFunctionShoot") then
    CurrentEquipGun = v.Name
    end
    end
    end
    end
    end)
  end)
-- [Body Gyro]
   spawn(function()
			while task.wait() do
				pcall(function()
					if getgenv().TeleportIsland or getgenv().AutoEvoRace or getgenv().CastleRaid or getgenv().CollectAzure or getgenv().TweenToKitsune or getgenv().AutoCandy or getgenv().GhostShip or getgenv().Ship or getgenv().SailBoat or getgenv().Auto_Holy_Torch or getgenv().FindMirageIsland or getgenv().TeleportPly or getgenv().Tweenfruit or getgenv().AutoFishCrew or getgenv().AutoShark or getgenv().AutoCakeV2 or getgenv().AutoMysticIsland or getgenv().AutoQuestRace or getgenv().AutoBuyBoat or getgenv().dao or getgenv().AutoMirage or getgenv().AutoFarmAcient or getgenv().AutoQuestRace or getgenv().Auto_Law or getgenv().AutoAllBoss or AutoTushita or getgenv().AutoHolyTorch or getgenv().AutoTerrorshark or getgenv().farmpiranya or getgenv().DriveMytic or getgenv().AutoCakeV2V2 or PirateShip or getgenv().AutoSeaBeast or getgenv().AutoNear or getgenv().BossRaid or getgenv().GrabChest or AutoCitizen or getgenv().Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or getgenv().AutoLevel or getgenv().Clip2 or AutoFarm NoQuest or getgenv().AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonster NoQuest or getgenv().AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or getgenv().CakePrince or getgenv().AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or getgenv().AutoKillPlayerMelee or getgenv().AutoKillPlayerGun or getgenv().AutoKillPlayerFruit or AutoDungeon or getgenv().AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or getgenv().AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or getgenv().Factory or getgenv().SwanGlasses or AutoBartilo or AutoEvoRace or getgenv().Ectoplasm then
						if  Not game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart:FindFirstChild("BodyClip") then
							local  Noclip = Instance.new("BodyVelocity")
							 Noclip.Name = "BodyClip"
							 Noclip.Parent = game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart
							 Noclip.MaxForce = Vector3.new(100000,100000,100000)
							 Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end)
			end
		end)

	
-- No CLip Auto Farm
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if getgenv().TeleportIsland or getgenv().AutoEvoRace or getgenv().CastleRaid or AutoFarmChest or getgenv().CollectAzure or getgenv().TweenToKitsune or getgenv().AutoCandy or getgenv().GhostShip or getgenv().Ship or getgenv().SailBoat or getgenv().Auto_Holy_Torch or getgenv().Tweenfruit or getgenv().FindMirageIsland or getgenv().TeleportPly or getgenv().AutoFishCrew or getgenv().AutoShark or getgenv().AutoMysticIsland or getgenv().AutoCakeV2 or getgenv().AutoQuestRace or getgenv().AutoBuyBoat or getgenv().dao or getgenv().AutoFarmAcient or getgenv().AutoMirage or getgenv().Auto_Law or getgenv().AutoQuestRace or getgenv().AutoAllBoss or getgenv().AutoHolyTorch or AutoTushita or getgenv().farmpiranya or getgenv().AutoTerrorshark or getgenv().AutoNear or getgenv().AutoCakeV2V2 or PirateShip or getgenv().AutoSeaBeast or getgenv().DriveMytic or getgenv().BossRaid or getgenv().GrabChest or AutoCitizen or getgenv().Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or getgenv().AutoLevel or getgenv().Clip2 or AutoFarm NoQuest or getgenv().AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonster NoQuest or getgenv().AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or getgenv().CakePrince or getgenv().AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or getgenv().AutoKillPlayerMelee or getgenv().AutoKillPlayerGun or getgenv().AutoKillPlayerFruit or AutoDungeon or getgenv().AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or getgenv().AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or getgenv().Factory or getgenv().SwanGlasses or getgenv().Ectoplasm then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)
  --//Stun Player
  task.spawn(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
    game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
      pcall(function()
        if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
        game.Players.LocalPlayer.Character.Stun.Value = 0
        end
        end)
      end)
    end
    end)
  

--Check Material
function CheckMaterial(matname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Material" then
if v.Name == matname then
return v.Count
end
end
end
end
return 0
end

-----------------------------------------------------------------------------------------------------------------------------------------------
------Attack NoCD  
local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if  Not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end

function Attack NoCoolDown() 
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.Huma NoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("Huma NoidRootPart") and  Not hash[v.Parent] then
                table.insert(cac, v.Parent.Huma NoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
            end
        end
    end
end

--Attack Mastery
    function  NormalAttack()
        if  Not getgenv(). NormalAttack then
            local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
            local CombatFramework = debug.getupvalues(Module)[2]
            local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
            CamShake:Stop()
            CombatFramework.activeController.attacking = false
            CombatFramework.activeController.timeToNextAttack = 0
            CombatFramework.activeController.hitboxMagnitude = 180
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end

--------------------------------------------------------------------------------------------------------------------------------------------

--Sword Weapon
function GetWeaponInventory(Weaponname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Sword" then
if v.Name == Weaponname then
return true
end
end
end
end
return false
end

---Method Farm
Type1 = 1
spawn(function()
    while wait(.1) do
        if Type == 1 then
            Random = CFrame.new(10,40,10)
        elseif Type == 2 then
            Random = CFrame.new(-30,10,-30)
        elseif Type == 3 then
            Random = CFrame.new(10,10,-40)
        elseif Type == 4 then
            Random = CFrame.new(-40,10,10)	
        end
        end
    end)

spawn(function()
    while wait(.1) do
        Type = 1
        wait(0.1)
        Type = 2
        wait(0.1)
        Type = 3
        wait(0.1)
        Type = 4
        wait(0.1)
    end
end)
--auto turn haki
  function AutoHaki()
    if  Not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
---Bypass Teleport
function to(P)
	repeat wait(0.5)
		game.Players.LocalPlayer.Character.Huma Noid:ChangeState(15)
		game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = P
		task.wait()
		game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = P
	until (P.Position-game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude <= 2000
end

function to(p)
		pcall(function()
			if (p.Position-game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude >= 2000 and  Not Auto_Raid and game.Players.LocalPlayer.Character.Huma Noid.Health > 0 then
				if NameMon == "FishmanQuest" then
					Tween(game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif Mon == "God's Guard"  then
					Tween(game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				elseif NameMon == "SkyExp1Quest" then
					Tween(game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				elseif NameMon == "ShipQuest1" then
					Tween(game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif NameMon == "ShipQuest2" then
					Tween(game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif NameMon == "FrostQuest" then
					Tween(game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				else
						repeat wait(0.5)
						game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = p
						wait(.05)
						game.Players.LocalPlayer.Character.Head:Destroy()
						game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = p
					until (p.Position-game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Huma Noid.Health > 0
					wait()
				end
			end
		end)
	end

--------------------------------------------------------------------------------------------------------------------------------------------
---Close UI
local ScreenGui1 = Instance.new("ScreenGui")
local ImageButton1 = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UIStroke = Instance.new("UIStroke")
ScreenGui1.Name = "ImageButton"
ScreenGui1.Parent = game.CoreGui
ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton1.Parent = ScreenGui1
ImageButton1.BackgroundColor3 = Color3.fromRGB(0, 239, 5)
ImageButton1.BorderSizePixel = 0
ImageButton1.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton1.Size = UDim2.new(0, 50, 0, 50)
ImageButton1.Draggable = true
ImageButton1.Image = "rbxassetid://16024431693"
ImageButton1.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.LeftControl,false,game)
end)
--------------------------------------------------------------------------------------------------------------------------------------------
--Remove Effect
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end
--------------------------------------------------------------------------------------------------------------------------------------------
-- Hehe
--------------------------------------------------------------------------------------------------------------------------------------------
--Create Tabs
local Farming = Tabs.Main:AddSection("Farming")
local InputAttack = Tabs.Main:AddInput("InputAttack", {
    Title = "Delay Attack",
    Description = "",
    Default = 0.175,
    Placeholder = "Input",
    Numeric = true, -- Only allows numbers
    Finished = true, -- Only calls callback when you press enter
    Callback = function(Value)
        getgenv().Fast_Delay = Value
        getgenv().DelayFastLow = Value
    end
})
InputAttack:OnChanged(function(Value)
	getgenv().Fast_Delay = Value
end)

local DropdownSelectWeapon = Tabs.Main:AddDropdown("DropdownSelectWeapon", {
        Title = "Weapon",
        Description = "",
        Values = {'Melee','Sword','Blox Fruit'},
        Multi = false,
        Default = 1,
    })
    DropdownSelectWeapon:SetValue('Melee')
    DropdownSelectWeapon:OnChanged(function(Value)
        ChooseWeapon = Value
    end)
    task.spawn(function()
        while wait() do
            pcall(function()
                if ChooseWeapon == "Melee" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == "Sword" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == "Blox Fruit" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                else
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)


    local ToggleLevel = Tabs.Main:AddToggle("ToggleLevel", {
        Title = "Auto Farm Level",
        Description = "",
        Default = false })
    ToggleLevel:OnChanged(function(Value)
        getgenv().AutoLevel = Value
        if Value == false then
            wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleLevel:SetValue(false)
    spawn(function()
        while task.wait() do
        if getgenv().AutoLevel then
        pcall(function()
          CheckLevel()
          if  Not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
          toTarget(CFrameQ)
          wait(1.5)
          if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude <= 5 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
          end
          elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
          if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
          if v.Name == Ms then
          repeat wait(getgenv().Fast_Delay)
          Attack NoCoolDown()
          bringmob = true
          AutoHaki()
          EquipTool(SelectWeapon)
          Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
          v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
          v.Huma NoidRootPart.Transparency = 1
          v.Huma Noid.JumpPower = 0
          v.Huma Noid.WalkSpeed = 0
          v.Huma NoidRootPart.CanCollide = false
          FarmPos = v.Huma NoidRootPart.CFrame
          MonFarm = v.Name
          until  Not getgenv().AutoLevel or  Not v.Parent or v.Huma Noid.Health <= 0 or  Not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
          bringmob = false
        end   
          end
          end
          for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name,NameMon) then
          if (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - v.Position).Magnitude >= 10 then
            Tween(v.CFrame * CFrame.new(posX,posY,posZ))
          end
          end
          end
          end
          end)
        end
        end
        end)

        local ToggleCandy = Tabs.Main:AddToggle("ToggleCandy", {Title = "Auto Candies ( Wait Event Chrismas Back ! )",Description = "", Default = false })
        ToggleCandy:OnChanged(function(Value)
           getgenv().AutoCandy = Value
           if Value == false then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.CFrame)
            wait()
        end
        end)
        Options.ToggleCandy:SetValue(false)

		local CandyPos = CFrame.new(-16603.197265625, 130.3873748779297, 1087.16455078125)
		spawn(function()
				  while wait() do 
					  if getgenv().AutoCandy then
						  pcall(function()
							toTarget(CandyPos)
							  if game:GetService("Workspace").Enemies:FindFirstChild("Isle Outlaw") or game:GetService("Workspace").Enemies:FindFirstChild("Island Boy") or game:GetService("Workspace").Enemies:FindFirstChild("Sun-kissed Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Isle Champion") then
								  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									  if v.Name == "Isle Outlaw" or v.Name == "Island Boy" or v.Name == "Sun-kissed Warrior" or v.Name == "Isle Champion" then
										 if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
											 repeat wait(getgenv().Fast_Delay)
												 Attack NoCoolDown()
                                                 bringmob = true
												 AutoHaki()
												 EquipTool(SelectWeapon)
												 Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
												 v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
												 v.Huma NoidRootPart.Transparency = 1
												 v.Huma Noid.JumpPower = 0
												 v.Huma Noid.WalkSpeed = 0
												 v.Huma NoidRootPart.CanCollide = false
												 FarmPos = v.Huma NoidRootPart.CFrame
												 MonFarm = v.Name
											  until  Not getgenv().AutoCandy or  Not v.Parent or v.Huma Noid.Health <= 0
                                              bringmob = false
                                            end
									  end
								  end
                                  Tween(CFrame.new(-16599.1484375, 154.2681121826172, -166.32186889648438))
							end
						end)
					  end
				  end
			  end)

--------------------------------------------------------------------------------------------------------------------------------------------

    local ToggleMobAura = Tabs.Main:AddToggle("ToggleMobAura", {
        Title = "Auto Mob Aura",
        Description = "",
        Default = false })
    ToggleMobAura:OnChanged(function(Value)
        getgenv().AutoNear = Value
        if Value == false then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleMobAura:SetValue(false)
    spawn(function()
        while wait(.1) do
        if getgenv().AutoNear then
        pcall(function()
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
          if v.Name then
          if (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - v:FindFirstChild("Huma NoidRootPart").Position).Magnitude <= 5000 then
            repeat wait(getgenv().Fast_Delay)
                Attack NoCoolDown()
                bringmob = true
          AutoHaki()
          EquipTool(SelectWeapon)
          Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
          v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
          v.Huma NoidRootPart.Transparency = 1
          v.Huma Noid.JumpPower = 0
          v.Huma Noid.WalkSpeed = 0
          v.Huma NoidRootPart.CanCollide = false
          FarmPos = v.Huma NoidRootPart.CFrame
          MonFarm = v.Name
          --Click
          until  Not getgenv().AutoNear or  Not v.Parent or v.Huma Noid.Health <= 0 or  Not game.Workspace.Enemies:FindFirstChild(v.Name)
          bringmob = false
        end
          end
          end
          end
          end)
        end
        end
      end)


    local ToggleCastleRaid = Tabs.Main:AddToggle("ToggleCastleRaid", {
        Title = "Auto Castle Raid | Pirates Castle",
        Description = "", 
        Default = false })
    ToggleCastleRaid:OnChanged(function(Value)
        getgenv().CastleRaid = Value
    end)
    Options.ToggleCastleRaid:SetValue(false)
    spawn(function()
        while wait() do
            if getgenv().CastleRaid then
                pcall(function()
                    local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if getgenv().CastleRaid and v:FindFirstChild("Huma NoidRootPart") and v:FindFirstChild("Huma Noid") and v.Huma Noid.Health > 0 then
                                if (v.Huma NoidRootPart.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait(getgenv().Fast_Delay)
                                        Attack NoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.Huma NoidRootPart.CanCollide = false
                                        v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
                                        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    until v.Huma Noid.Health <= 0 or  Not v.Parent or  Not getgenv().CastleRaid
                                end
                            end
                        end
                    else
                        toTarget(CFrameCastleRaid)
                     
                      
                    end
                end)
            end
        end
        end)


--// auto chest

Tabs.Main:AddButton({
    Title = "Auto Chest",
    Description = "",
    Callback = function()
        getgenv().JoinTeam = "Pirates"
        getgenv().Stop_If_Has_Items = true
        loadstring(game:HttpGet("https://github.com/PNguyen0199/Script/raw/main/Trash_Auto_Chest.lua"))()
    end
})

      Tabs.Main:AddButton({
        Title = "Redeem All Code",
        Description = "",
        Callback = function()
            RedeemCode()
        end
    })

    function RedeemCode(Code)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Code)
	end

    Tabs.Main:AddButton({
        Title = "Fps Booster",
        Description = "",
        Callback = function()
            FPSBooster()
        end
    })

    function FPSBooster()
        local decalsyeeted = true
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        sethiddenproperty(l,"Tech Nology",2)
        sethiddenproperty(t,"Decoration",false)
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    end

--------------------------------------------------------------------------------------------------------------------------------------------
--Mastery
local Mastery = Tabs.Main:AddSection("Mastery Farm")
    local DropdownMastery = Tabs.Main:AddDropdown("DropdownMastery", {
        Title = "Mastery Mode",
        Description = "",
        Values = {"Level","Near Mobs",},
        Multi = false,
        Default = 1,
    })

    DropdownMastery:SetValue("Level")

    DropdownMastery:OnChanged(function(Value)
        TypeMastery = Value
    end)

    local ToggleMasteryFruit = Tabs.Main:AddToggle("ToggleMasteryFruit", {
        Title = "Auto BF Mastery",
        Description = "", 
        Default = false })
    ToggleMasteryFruit:OnChanged(function(Value)
        AutoFarmMasDevilFruit = Value
    end)
    Options.ToggleMasteryFruit:SetValue(false)

 

    local SliderHealt = Tabs.Main:AddSlider("SliderHealt", {
        Title = "Health (%) Mob",
        Description = "",
        Default = 25,
        Min = 0,
        Max = 100,
        Rounding = 1,
        Callback = function(Value)
            KillPercent = Value
        end
    })

    SliderHealt:OnChanged(function(Value)
        KillPercent = Value
    end)

    SliderHealt:SetValue(25)
    
    
spawn(function()
while task.wait(1) do
if getgenv().UseSkill then
pcall(function()
  if getgenv().UseSkill then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == MonFarm and v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health <= v.Huma Noid.MaxHealth * KillPercent / 100 then
  repeat game:GetService("RunService").Heartbeat:wait()
  EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
  Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
  PositionSkillMasteryDevilFruit = v.Huma NoidRootPart.Position
  if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
  game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit
  local DevilFruitMastery = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value
  if getgenv().Z and DevilFruitMastery >= 1 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
  wait(0.1)
  game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
  end
  if getgenv().X and DevilFruitMastery >= 2 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
  wait(0.2)
  game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
  end
  if getgenv().C and DevilFruitMastery >= 3 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
  wait(0.3)
  game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
  end
  if getgenv().V and DevilFruitMastery >= 4 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
  wait(0.4)
  game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
  end
  if getgenv().F and DevilFruitMastery >= 5 then
  game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
  wait(0.5)
  game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
  end
  end
  until  Not AutoFarmMasDevilFruit or  Not getgenv().UseSkill or v.Huma Noid.Health == 0
  end
  end
  end
  end)
end
end
end)
spawn(function()
    while task.wait(.1) do
    if AutoFarmMasDevilFruit and TypeMastery == 'Level' then
    pcall(function()
      CheckLevel(SelectMonster)
      if  Not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
      if BypassTP then
        if (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - CFrameQ.Position).Magnitude > 2500 then
        to(CFrameQ)
        wait(0.2)
        elseif (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
        Tween(CFrameQ)
        end
        else
          Tween(CFrameQ)
        end
      if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude <= 5 then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
      end
      elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
      for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
      if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") then
      if v.Name == Ms then
        repeat wait(getgenv().Fast_Delay)
      if v.Huma Noid.Health <= v.Huma Noid.MaxHealth * KillPercent / 100 then
      getgenv().UseSkill = true
      else
    getgenv().UseSkill = false
	   AutoHaki()
       bringmob = true
      EquipTool(SelectWeapon)
      Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
      v.Huma NoidRootPart.Transparency = 1
      v.Huma Noid.JumpPower = 0
      v.Huma Noid.WalkSpeed = 0
      v.Huma NoidRootPart.CanCollide = false
      FarmPos = v.Huma NoidRootPart.CFrame
      MonFarm = v.Name
      
       NormalAttack()
      end
      until  Not AutoFarmMasDevilFruit or  Not v.Parent or v.Huma Noid.Health == 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or  Not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or  Not TypeMastery == 'Level'
      bringmob = false
      getgenv().UseSkill = false
      
      end
      end
      end
      end
      end)
---------Near Mas
    elseif AutoFarmMasDevilFruit and TypeMastery == 'Near Mobs' then
    pcall(function()
      for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
      if v.Name and v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") then
      if (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - v:FindFirstChild("Huma NoidRootPart").Position).Magnitude <= 5000 then
        repeat wait(getgenv().Fast_Delay)
      if v.Huma Noid.Health <= v.Huma Noid.MaxHealth * KillPercent / 100 then
      getgenv().UseSkill = true
      else
        getgenv().UseSkill = false
		AutoHaki()
        bringmob = true
      EquipTool(SelectWeapon)
      Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
      v.Huma NoidRootPart.Transparency = 1
      v.Huma Noid.JumpPower = 0
      v.Huma Noid.WalkSpeed = 0
      v.Huma NoidRootPart.CanCollide = false
  --v.Huma Noid:ChangeState(11)
  --v.Huma Noid:ChangeState(14)
      FarmPos = v.Huma NoidRootPart.CFrame
      MonFarm = v.Name
      
        NormalAttack()
      end
      until  Not AutoFarmMasDevilFruit or  Not MasteryType == 'Near Mobs' or  Not v.Parent or v.Huma Noid.Health == 0 or  Not TypeMastery == 'Near Mobs'
      bringmob = false
      getgenv().UseSkill = false
      
    end
end
end
end)
end
end
end)

if Third_Sea then
local MiscFarm = Tabs.Main:AddSection("Bone Farm")

local StatusBone = Tabs.Main:AddParagraph({
    Title = "Bone Status",
    Content = ""
})
	spawn(function()
		pcall(function()
			while wait() do
				StatusBone:SetDesc("You Have : "..tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check").." Bones"))
			end
		end)
	end)
local ToggleBone = Tabs.Main:AddToggle("ToggleBone", {
    Title = "Auto Farm Bones",
    Description = "", 
    Default = false })
ToggleBone:OnChanged(function(Value)
    getgenv().AutoBone = Value
    if Value == false then
        wait()
        Tween(game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleBone:SetValue(false)
local BoneCFrame = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
local BoneCFrame2 = CFrame.new(-9359.453125, 141.32679748535156, 5446.81982421875)
spawn(function()
    while wait() do
        if getgenv().ClaimQuestBone and getgenv().AutoBone then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if  Not string.find(QuestTitle, "Demonic Soul") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                 toTarget(BoneCFrame)
                 wait(1.5)
                if (BoneCFrame.Position - game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude <= 3 then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Huma NoidRootPart") and v:FindFirstChild("Huma Noid") and v.Huma Noid.Health > 0 then
                                if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                        repeat wait(getgenv().Fast_Delay)
                                            Attack NoCoolDown()
                                            AutoHaki()
                                            bringmob = true
                                            EquipTool(SelectWeapon)
                                            Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
			                                v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.Huma NoidRootPart.Transparency = 1
                                            v.Huma Noid.JumpPower = 0
                                            v.Huma Noid.WalkSpeed = 0
                                            v.Huma NoidRootPart.CanCollide = false
                                            FarmPos = v.Huma NoidRootPart.CFrame
                                            MonFarm = v.Name
                                        until  Not getgenv().AutoBone or v.Huma Noid.Health <= 0 or  Not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        bringmob = false
                                    end
                                end
                            end
                        end
                    else
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(.1) do
    if  Not getgenv().ClaimQuestBone and getgenv().AutoBone then
    pcall(function()
      toTarget(BoneCFrame)
      for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
      if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
      if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
        repeat wait(getgenv().Fast_Delay)
        Attack NoCoolDown()
        AutoHaki()
        bringmob = true
        EquipTool(SelectWeapon)
        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
        v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
        v.Huma NoidRootPart.Transparency = 1
        v.Huma Noid.JumpPower = 0
        v.Huma Noid.WalkSpeed = 0
        v.Huma NoidRootPart.CanCollide = false
        FarmPos = v.Huma NoidRootPart.CFrame
        MonFarm = v.Name
        until  Not getgenv().AutoBone or  Not v.Parent or v.Huma Noid.Health <= 0
        bringmob = false
        end     
        end
        end
        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if v.Name == "Reborn Skeleton" then
        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
        elseif v.Name == "Living Zombie" then
        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
        elseif v.Name == "Demonic Soul" then
        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
        elseif v.Name == "Posessed Mummy" then
        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      end
      end
      end)
    end
    end
  end)

  local ToggleClaimQuest = Tabs.Main:AddToggle("ToggleClaimQuest", {
    Title = "Claim Quest",
    Description = "", 
    Default = false })
    ToggleClaimQuest:OnChanged(function(Value)
    getgenv().ClaimQuestBone = Value
    if Value == false then
        wait()
        Tween(game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleClaimQuest:SetValue(false)

local ToggleRandomBone = Tabs.Main:AddToggle("ToggleRandomBone", {Title = "Enabled Random Bones",Description = "", Default = false })
ToggleRandomBone:OnChanged(function(Value)  
		getgenv().AutoRandomBone = Value
end)
Options.ToggleRandomBone:SetValue(false)
	
spawn(function()
	while wait(0.01) do
	if getgenv().AutoRandomBone then
	local args = {
	 [1] = "Bones",
	 [2] = "Buy",
	 [3] = 1,
	 [4] = 1
	}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end
	end
	end)
end

if Third_Sea then
local MiscFarm = Tabs.Main:AddSection("Katakuri Farm")
local Mob_Kill_Cake_Prince = Tabs.Main:AddParagraph({
    Title = "Check Cake Mobs",
    Content = ""
})

spawn(function()
	while wait() do
		pcall(function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
			else
				Mob_Kill_Cake_Prince:SetDesc("Cake Prince : 🟢 Yes")
			end
		end)
	end
end)


local ToggleCake = Tabs.Main:AddToggle("ToggleCake", {
    Title = "Auto Farm Cake Prince",
    Description = "", 
    Default = false })
ToggleCake:OnChanged(function(Value)
 getgenv().CakePrince = Value
 if Value == false then
    wait()
    Tween(game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.CFrame)
    wait()
end
end)
Options.ToggleCake:SetValue(false)
spawn(function()
		while wait() do
			if getgenv().CakePrince then
                pcall(function()
                    local CakeCFrame = CFrame.new(-2142.66821,71.2588654,-12327.4619,0.996939838,-4.33107843e-08,0.078172572,4.20252917e-08,1,1.80894251e-08,-0.078172572,-1.47488439e-08, 0.996939838)
                    toTarget(CakeCFrame)
					if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then   
						if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if v.Name == "Cake Prince" then
                                    repeat wait(getgenv().Fast_Delay)
                                        Attack NoCoolDown()
										AutoHaki()
										EquipTool(SelectWeapon)
										v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
										v.Huma NoidRootPart.CanCollide = false
										Tween(v.Huma NoidRootPart.CFrame * Random)
										--Click
									until getgenv().CakePrince == false or  Not v.Parent or v.Huma Noid.Health <= 0
                                    bringmob = false
                                end    
							end    
						else
							Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
						end
					else
                        if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Huma Noid.Health > 0 then
                                    repeat wait(getgenv().Fast_Delay)
                                        Attack NoCoolDown()
										AutoHaki()
                                        bringmob = true
										EquipTool(SelectWeapon)
										v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)  
										FarmPos = v.Huma NoidRootPart.CFrame
                                        MonFarm = v.Name
										Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
									until getgenv().CakePrince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or  Not v.Parent or v.Huma Noid.Health <= 0
                                    bringmob = false
                                end
							end
						else
							Tween(CakeCFrame)
						end
					end
				end)
			end
		end
    end)


    local ToggleSpawnCake = Tabs.Main:AddToggle("ToggleSpawnCake", {
        Title = "Auto Spawn Cake Prince",
        Description = "", 
        Default = true })
    ToggleSpawnCake:OnChanged(function(Value)
      getgenv().SpawnCakePrince = Value
    end)
    Options.ToggleSpawnCake:SetValue(true)
end

spawn(function()
  while wait() do
    if getgenv().SpawnCakePrince then
      local args = {
        [1] = "CakePrinceSpawner",
        [2] = true
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                    
      local args = {
        [1] = "CakePrinceSpawner"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
  end
end)
end

    if Second_Sea then
	local MiscFarm = Tabs.Main:AddSection("Ectoplasm Farm")
    local ToggleVatChatKiDi = Tabs.Main:AddToggle("ToggleVatChatKiDi", {
        Title = "Auto Ectoplasm",
        Description = "", 
        Default = false })
    ToggleVatChatKiDi:OnChanged(function(Value)
        getgenv().Ectoplasm = Value
    end)
    Options.ToggleVatChatKiDi:SetValue(false)

    spawn(function()
        while wait(.1) do
            pcall(function()
                if getgenv().Ectoplasm then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or v.Name == "Ship Deckhand" or v.Name == "Ship Officer" and v:FindFirstChild("Huma Noid") then
                                if v.Huma Noid.Health > 0 then
                                    repeat wait(getgenv().Fast_Delay)
                                        Attack NoCoolDown()
                                        AutoHaki()
                                        bringmob = true
                                        EquipTool(SelectWeapon)
                                        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                        v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.Huma NoidRootPart.Transparency = 1
                                        v.Huma Noid.JumpPower = 0
                                        v.Huma Noid.WalkSpeed = 0
                                        v.Huma NoidRootPart.CanCollide = false
                                        FarmPos = v.Huma NoidRootPart.CFrame
                                        MonFarm = v.Name
                                        --Click
                                    until getgenv().Ectoplasm == false or  Not v.Parent or v.Huma Noid.Health == 0 or  Not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                    bringmob = false
                                end
                            end
                        end
                    else
                        local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude
                        if Distance > 20000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                        Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                    end
                end
            end)
        end
    end)
end

local boss = Tabs.Main:AddSection("Boss Farm")


    if First_Sea then
		tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
	elseif Second_Sea then
		tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
	elseif Third_Sea then
		tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
	end


    local DropdownBoss = Tabs.Main:AddDropdown("DropdownBoss", {
        Title = "Dropdown",
        Description = "",
        Values = tableBoss,
        Multi = false,
        Default = 1,
    })

    DropdownBoss:SetValue("")
    DropdownBoss:OnChanged(function(Value)
		getgenv().SelectBoss = Value
    end)

	local ToggleAutoFarmBoss = Tabs.Main:AddToggle("ToggleAutoFarmBoss", {
        Title = "Kill Boss",
        Description = "", 
        Default = false })

    ToggleAutoFarmBoss:OnChanged(function(Value)
		getgenv().AutoBoss = Value
    end)

    Options.ToggleAutoFarmBoss:SetValue(false)

    spawn(function()
        while wait() do
            if getgenv().AutoBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(getgenv().SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == getgenv().SelectBoss then
                                if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
                                    repeat wait(getgenv().Fast_Delay)
                                        Attack NoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.Huma NoidRootPart.CanCollide = false
                                        v.Huma Noid.WalkSpeed = 0
                                        v.Huma NoidRootPart.Size = Vector3.new(80,80,80)                             
                                        Tween(v.Huma NoidRootPart.CFrame * Random)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until  Not getgenv().AutoBoss or  Not v.Parent or v.Huma Noid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(getgenv().SelectBoss) then
                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(getgenv().SelectBoss).Huma NoidRootPart.CFrame * CFrame.new(5,10,7))
                        end
                    end
                end)
            end
        end
    end)

    local Material = Tabs.Main:AddSection("Material Farm")

    if First_Sea then
        MaterialList = {
          "Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"
        } elseif Second_Sea then
        MaterialList = {
          "Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"
        } elseif Third_Sea then
        MaterialList = {
          "Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"
        }
        end

    local DropdownMaterial = Tabs.Main:AddDropdown("DropdownMaterial", {
        Title = "Dropdown",
        Description = "Chọn Nguyên Liệu",
        Values = MaterialList,
        Multi = false,
        Default = 1,
    })

    DropdownMaterial:SetValue("Dragon Scale")

    DropdownMaterial:OnChanged(function(Value)
        SelectMaterial = Value
    end)

    local ToggleMaterial = Tabs.Main:AddToggle("ToggleMaterial", {
        Title = "Auto Material",
        Description = "", 
        Default = false })

    ToggleMaterial:OnChanged(function(Value)
        getgenv().AutoMaterial = Value
        if Value == false then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleMaterial:SetValue(false)
    spawn(function()
        while task.wait() do
        if getgenv().AutoMaterial then
        pcall(function()
          MaterialMon(SelectMaterial)
            toTarget(MPos)
          if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
          if v.Name == MMon then
            repeat wait(getgenv().Fast_Delay)
                Attack NoCoolDown()
          AutoHaki()
          bringmob = true
          EquipTool(SelectWeapon)
          Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
          v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
          v.Huma NoidRootPart.Transparency = 1
          v.Huma Noid.JumpPower = 0
          v.Huma Noid.WalkSpeed = 0
          v.Huma NoidRootPart.CanCollide = false
          FarmPos = v.Huma NoidRootPart.CFrame
          MonFarm = v.Name
          --Click
          until  Not getgenv().AutoMaterial or  Not v.Parent or v.Huma Noid.Health <= 0
          bringmob = false
        end
          end
          end
          else
            for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name, Mon) then
          if (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - v.Position).Magnitude >= 10 then
          Tween(v.CFrame * CFrame.new(posX,posY,posZ))
          end
          end
          end
          end
          end)
        end
        end
      end)

      if Third_Sea then
      local RoughSea = Tabs.Main:AddSection("Kitsune")
	 
local StatusKitsune = Tabs.Main:AddParagraph({
    Title = "Kistune Island",
    Content = ""
})
function UpdateKitsune()
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
        StatusKitsune:SetDesc("Kitsune Island : 🟢 Yes")
    else
        StatusKitsune:SetDesc("Kitsune Island : 🔴 No")
     end
end
spawn(function()
    pcall(function()
        while wait() do
            UpdateKitsune()
        end
    end)
end)

      local ToggleEspKitsune = Tabs.Main:AddToggle("ToggleEspKitsune", {Title = "Esp Kitsune Island",Description = "Định vị Đảo kisune", Default = false })
      ToggleEspKitsune:OnChanged(function(Value)
        KitsuneIslandEsp = Value
        while KitsuneIslandEsp do wait()
            UpdateIslandKisuneESP() 
        end
    end)
      Options.ToggleEspKitsune:SetValue(false)

      function UpdateIslandKisuneESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if KitsuneIslandEsp then 
                    if v.Name == "Kitsune Island" then
                        if  Not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

      local ToggleTPKitsune = Tabs.Main:AddToggle("ToggleTPKitsune", {Title = "Tween To Kitsune Island",Description = "Di Chuyển Đến Đảo Kisune", Default = false })
      ToggleTPKitsune:OnChanged(function(Value)
        getgenv().TweenToKitsune = Value
      end)
      Options.ToggleTPKitsune:SetValue(false)
      spawn(function()
        local kitsuneIsland
        while  Not kitsuneIsland do
            kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
            wait(1)
        end
        while wait() do
            if getgenv().TweenToKitsune then
                local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
                if shrineActive then
                    for _, v in pairs(shrineActive:GetDescendants()) do
                        if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                            Tween(v.CFrame)
                        end
                    end
                end
            end
        end
    end)


      local ToggleCollectAzure = Tabs.Main:AddToggle("ToggleCollectAzure", {Title = "Collect Azure Ambers",Description = "", Default = false })
      ToggleCollectAzure:OnChanged(function(Value)
         getgenv().CollectAzure = Value
      end)
      Options.ToggleCollectAzure:SetValue(false)
    spawn(function()
        while wait() do
            if getgenv().CollectAzure then
                pcall(function()
                    if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                        Tween(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                        print("Azure")
                    end
                end)
            end
        end
    end)
end

if Third_Sea then
    local RoughSea = Tabs.Main:AddSection("Rough Sea")

    local ToggleSailBoat = Tabs.Main:AddToggle("ToggleSailBoat", {Title = "Auto Buy Boat",Description = "", Default = false })
    ToggleSailBoat:OnChanged(function(Value)
        getgenv().SailBoat = Value
    end)
    Options.ToggleSailBoat:SetValue(false)


    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().SailBoat then
                    if  Not game:GetService("Workspace").Enemies:FindFirstChild("Shark") or  Not game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or  Not game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or  Not game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                        if  Not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                            buyb = TweenBoat(CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781))
                            if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).magnitude <= 10 then
                                if buyb then buyb:Stop() end
                                local args = {
                                    [1] = "BuyBoat",
                                    [2] = "PirateGrandBrigade"
                                }
    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                            if game.Players.LocalPlayer.Character:WaitForChild("Huma Noid").Sit == false then
                                TweenBoat(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                            else
                                for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                    if v.Name == "PirateGrandBrigade" then
                                        repeat wait(getgenv().Fast_Delay)
                                            if (CFrame.new(-17013.80078125, 10.962434768676758, 438.0169982910156).Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).magnitude <= 10 then
                                                TweenShip(CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094))
                                            elseif (CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094).Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).magnitude <= 10 then
                                                TweenShip(CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375))
                                            elseif (CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375).Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).magnitude <= 10 then
                                                TweenShip(CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094))
                                            end 
                                        until game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or getgenv().SailBoat == false
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
		pcall(function()
			while wait() do
				if getgenv().SailBoat then
					if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
					    game.Players.LocalPlayer.Character.Huma Noid.Sit = false
					end
				end
			end
		end)
	end)
	
	
local Toggle Nocliprock = Tabs.Main:AddToggle("Toggle Nocliprock", {
    Title = " No Clip Rock",
    Description = "", 
    Default = false })
Toggle Nocliprock:OnChanged(function(Value)
    getgenv(). Nocliprock = Value
end)
Options.Toggle Nocliprock:SetValue(false)
spawn(function()
	while wait() do
		if getgenv(). Nocliprock then
			if game.Players.LocalPlayer.Character.Huma Noid.Sit == true then
				for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
			elseif game.Players.LocalPlayer.Character.Huma Noid.Sit == false then
				for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == false then
						v.CanCollide = true
					end
				end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == false then
						v.CanCollide = true
					end
				end
			end
		end
	end
end)

	
	local SetSpeedBoatSlider = Tabs.Main:AddSlider("SliderSpeedBoat", {
	Title = "Set Speed boat",
	Description = "",
	Default = 300,
	Min = 0,
	Max = 1000,
	Rounding = 1,
	Callback = function(value)
		SetSpeedBoat = value
	end
})

SetSpeedBoatSlider:OnChanged(function(value)
	SetSpeedBoat = value
end)

SetSpeedBoatSlider:SetValue(300)

local SpeedBoatToggle = Tabs.Main:AddToggle("SpeedBoat_Toggle", {Title = "Speed Boat",Description = "Tốc độ thuyền", Default = false })
Options.SpeedBoat_Toggle:SetValue(false)

SpeedBoatToggle:OnChanged(function(value)
	getgenv().SpeedBoat = value
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().SpeedBoat then
        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            if game:GetService("Players").LocalPlayer.Character.Huma Noid.Sit then
                v:FindFirstChild("VehicleSeat").MaxSpeed = SetSpeedBoat
            end
        end
    end
end)



    local ToggleTerrorshark = Tabs.Main:AddToggle("ToggleTerrorshark", {Title = " Kill Terrorshark",Description = "", Default = false })

    ToggleTerrorshark:OnChanged(function(Value)
        getgenv().AutoTerrorshark = Value
    end)
    Options.ToggleTerrorshark:SetValue(false)
    spawn(function()
        while wait() do
            if getgenv().AutoTerrorshark then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Terrorshark" then
                                if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
                                    repeat wait(getgenv().Fast_Delay)
                                        Attack NoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.Huma NoidRootPart.CanCollide = false
                                        v.Huma Noid.WalkSpeed = 0
                                        v.Huma NoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    until  Not getgenv().AutoTerrorshark or  Not v.Parent or v.Huma Noid.Health <= 0
                                end
                            end
                        end
                    else
                      
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").Huma NoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
    
            end
        end
     end)



     local TogglePiranha = Tabs.Main:AddToggle("TogglePiranha", {Title = " Kill Piranha",Description = "", Default = false })

     TogglePiranha:OnChanged(function(Value)
        getgenv().farmpiranya = Value
     end)
     Options.TogglePiranha:SetValue(false)

     spawn(function()
        while wait() do
            if getgenv().farmpiranya then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Piranha" then
                                if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
                                    repeat wait(getgenv().Fast_Delay)
                                        Attack NoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.Huma NoidRootPart.CanCollide = false
                                        v.Huma Noid.WalkSpeed = 0
                                        v.Huma NoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    until  Not getgenv().farmpiranya or  Not v.Parent or v.Huma Noid.Health <= 0
                                end
                            end
                        end
                    else
                     
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Piranha") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Piranha").Huma NoidRootPart.CFrame * CFrame.new(2,20,2))
                        else  
                        end
                    end
        
                end)
            end
        end
     end)



     local ToggleShark = Tabs.Main:AddToggle("ToggleShark", {Title = "Kill Shark",Description = "", Default = false })
     ToggleShark:OnChanged(function(Value)
        getgenv().AutoShark = Value
     end)
     Options.ToggleShark:SetValue(false)
     spawn(function()
        while wait() do
            if getgenv().AutoShark then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Shark" then
                                if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
                                    repeat wait(getgenv().Fast_Delay)
                                        Attack NoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.Huma NoidRootPart.CanCollide = false
                                        v.Huma Noid.WalkSpeed = 0
                                        v.Huma NoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                        game.Players.LocalPlayer.Character.Huma Noid.Sit = false
                                    until  Not getgenv().AutoShark or  Not v.Parent or v.Huma Noid.Health <= 0
                                end
                            end
                        end
                    else
                        Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").Huma NoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
    
            end
        end
    end)



    local ToggleFishCrew = Tabs.Main:AddToggle("ToggleFishCrew", {Title = " Kill Fish Crew",Description = "", Default = false })
    ToggleFishCrew:OnChanged(function(Value)
       getgenv().AutoFishCrew = Value
    end)
    Options.ToggleFishCrew:SetValue(false)

    spawn(function()
        while wait() do
            if getgenv().AutoFishCrew then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fish Crew Member" then
                                if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
                                    repeat wait(getgenv().Fast_Delay)
                                        Attack NoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.Huma NoidRootPart.CanCollide = false
                                        v.Huma Noid.WalkSpeed = 0
                                        v.Huma NoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                            
                                        game.Players.LocalPlayer.Character.Huma Noid.Sit = false
                                    until  Not getgenv().AutoFishCrew or  Not v.Parent or v.Huma Noid.Health <= 0
                                end
                            
                            end
                        end
                    else
                  
                        Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member").Huma NoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                           
                        end
                    end
        
                end)
            end
        end
    end)



    local ToggleShip = Tabs.Main:AddToggle("ToggleShip", {Title = "Kill Ship",Description = "", Default = false })
    ToggleShip:OnChanged(function(Value)
        getgenv().Ship = Value
       end)
       Options.ToggleShip:SetValue(false)
       function CheckPirateBoat()
        local checkmmpb = {"PirateGrandBrigade", "PirateBrigade"}
        for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
            if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
                return v
            end
        end
    end
    
    spawn(function()
while wait() do
    if getgenv().Ship then
        pcall(function()
            if CheckPirateBoat() then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,32,false,game)
                wait(.5)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,32,false,game)
                local v = CheckPirateBoat()
                repeat
                    wait()
                    spawn(Tween(v.Engine.CFrame * CFrame.new(0, -20, 0)), 1)
                    AimBotSkillPosition = game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame * CFrame.new(0, -5, 0)
                    Skillaimbot = true
                    AutoSkill = false
                until  Not v or  Not v.Parent or v.Health.Value <= 0 or  Not CheckPirateBoat()
                Skillaimbot = true
                AutoSkill = false
            end
        end)
    end
end
end)



    local ToggleGhostShip = Tabs.Main:AddToggle("ToggleGhostShip", {Title = "Kill Ghost Ship",Description = "",Default = false })
    ToggleGhostShip:OnChanged(function(Value)
        getgenv().GhostShip = Value
       end)
       Options.ToggleGhostShip:SetValue(false)
    
       function CheckPirateBoat()
        local checkmmpb = {"FishBoat"}
        for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
            if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
                return v
            end
        end
    end
spawn(function()
while wait() do
    pcall(function()
        if getgenv().bjirFishBoat then
            if CheckPirateBoat() then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                wait(0.5)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                local v = CheckPirateBoat()
                repeat
                    wait()
                    spawn(Tween(v.Engine.CFrame * CFrame.new(0, -20, 0), 1))
                    AutoSkill = true
                    Skillaimbot = true
                    AimBotSkillPosition = game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame * CFrame.new(0, -5, 0)
                until v.Parent or v.Health.Value <= 0 or  Not CheckPirateBoat()
                AutoSkill = false
                Skillaimbot = false
            end
        end
    end)
end
end)

spawn(function()
    while wait() do
        if getgenv().bjirFishBoat then
               pcall(function()
                    if CheckPirateBoat() then
                        AutoHaki()
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                    game.Players.LocalPlayer.Character.Huma Noid:EquipTool(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                    game.Players.LocalPlayer.Character.Huma Noid:EquipTool(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(0.6)
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                    game.Players.LocalPlayer.Character.Huma Noid:EquipTool(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(0.5)
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                    game.Players.LocalPlayer.Character.Huma Noid:EquipTool(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
                    end
                end)
            end
    end
      end)



    local AutoElite = Tabs.Main:AddSection("Elite Hunter Farm")

    local StatusElite = Tabs.Main:AddParagraph({
        Title = "Check Elite",
        Content = "Status: "
    })
    
    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                    StatusElite:SetDesc("Elite Boss : 🟢 Yes | Killed:  "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
                else
                    StatusElite:SetDesc("Elite Boss : 🔴 No | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
                end
            end)
        end
    end)
    
    local ToggleElite = Tabs.Main:AddToggle("ToggleElite", {Title = "Auto Elite Hunter",Description = "Đánh Boss Bí Ẩn", Default = false })

    ToggleElite:OnChanged(function(Value)
       getgenv().AutoElite = Value
       end)
       Options.ToggleElite:SetValue(false)
       spawn(function()
           while task.wait() do
               if getgenv().AutoElite then
                   pcall(function()
                       if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                           if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                               if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                       if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
                                           if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                            repeat wait(getgenv().Fast_Delay)
                                                Attack NoCoolDown()
                                                   EquipTool(SelectWeapon)
                                                   AutoHaki()
                                                   toTarget(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                                   MonsterPosition = v.Huma NoidRootPart.CFrame
                                                   v.Huma NoidRootPart.CFrame = v.Huma NoidRootPart.CFrame
                                                   v.Huma Noid.JumpPower = 0
                                                   v.Huma Noid.WalkSpeed = 0
                                                   v.Huma NoidRootPart.CanCollide = false
                                                   v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
                                               until getgenv().AutoElite == false or v.Huma Noid.Health <= 0 or  Not v.Parent
                                           end
                                       end
                                   end
                               else
                                 
                                   if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   end
   
                               end
                         
                           end
                       else
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                       end
                   end)
               end
           end
       end)
    end


if Third_Sea then
    local Sea = Tabs.Main:AddSection("Sea Beast")


local ToggleSeaBeAst = Tabs.Main:AddToggle("ToggleSeaBeAst", {Title = "Auto Sea Beast",Description = "", Default = false })

ToggleSeaBeAst:OnChanged(function(Value)
    getgenv().AutoSeaBeast = Value
    end)
    Options.ToggleSeaBeAst:SetValue(false)
 
    
    getgenv().Z = true
    getgenv().X = true
    getgenv().C = true
    getgenv().V = true
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoSkill then
                    if getgenv().Z then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if getgenv().X then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                    if getgenv().C then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                    end
                    if getgenv().V then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                    end
                end
            end)
        end
    end)
    task.spawn(function()
        while wait() do
            pcall(function()
                if getgenv().AutoSeaBeast then
                    if  Not game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                        if  Not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then 
                            if  Not game:GetService("Workspace").Boats:FindFirstChild("PirateBasic") then
                                if  Not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                    buyb = TweenBoat(CFrame.new(-4513.90087890625, 16.76398277282715, -2658.820556640625))
                                    if (CFrame.new(-4513.90087890625, 16.76398277282715, -2658.820556640625).Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).magnitude <= 10 then
                                        if buyb then buyb:Stop() end
                                        local args = {
                                            [1] = "BuyBoat",
                                            [2] = "PirateGrandBrigade"
                                        }
            
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                    if game.Players.LocalPlayer.Character:WaitForChild("Huma Noid").Sit == false then
                                        TweenBoat(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                    elseif game.Players.LocalPlayer.Character:WaitForChild("Huma Noid").Sit == true then
                                        repeat wait(getgenv().Fast_Delay)
                                            if (game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).magnitude <= 10 then
                                                TweenShip(CFrame.new(35.04552459716797, 17.750778198242188, 4819.267578125))
                                            end
                                        until game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or getgenv().AutoSeaBeast == false
                                    end
                                end
                            elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                for is,vs in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                    if vs.Name == "PirateGrandBrigade" then
                                        if vs:FindFirstChild("VehicleSeat") then
                                            repeat wait(getgenv().Fast_Delay)
                                                game.Players.LocalPlayer.Character:WaitForChild("Huma Noid").Sit = false
                                                TweenBoat(vs.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                            until  Not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") or getgenv().AutoSeaBeast == false
                                        end
                                    end
                                end
                            end
                        elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                            for iss,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                if v.Name == "PirateGrandBrigade" then
                                    if v:FindFirstChild("VehicleSeat") then
                                        repeat wait(getgenv().Fast_Delay)
                                            game.Players.LocalPlayer.Character:WaitForChild("Huma Noid").Sit = false
                                            TweenBoat(v.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                        until  Not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") or getgenv().AutoSeaBeast == false
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then  
                        for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                            if v:FindFirstChild("Huma NoidRootPart") then
                                repeat wait(getgenv().Fast_Delay)
                                    game.Players.LocalPlayer.Character:WaitForChild("Huma Noid").Sit = false
                                    TweenBoat(v.Huma NoidRootPart.CFrame * CFrame.new(0,500,0))
                                    EquipAllWeapon()  
                                    AutoSkill = true
                                    AimBotSkillPosition = v.Huma NoidRootPart
                                    Skillaimbot = true
                                until  Not v:FindFirstChild("Huma NoidRootPart") or getgenv().AutoSeaBeast == false
                                AutoSkill = false
                                Skillaimbot = false
                            end
                        end
                    end
                end
            end)
        end
    end)

local ToggleAutoW = Tabs.Main:AddToggle("ToggleAutoW", {Title = "Auto Press W",Description = "", Default = false })
ToggleAutoW:OnChanged(function(Value)
    getgenv().AutoW = Value
    end)
 Options.ToggleAutoW:SetValue(false)
 spawn(function()
    while wait() do
        pcall(function()
            if getgenv().AutoW then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
            end
        end)
    end
    end)




    local AutoMysticIsland = Tabs.Main:AddSection("Mirage Island")

    local StatusMirage = Tabs.Main:AddParagraph({
        Title = "Status",
        Content = "Status:"
    })
    
    task.spawn(function()
    while task.wait() do
    pcall(function()
        if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
           FullMoonStatus = "100%"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
            FullMoonStatus = "75%"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            FullMoonStatus = "50%"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
            FullMoonStatus = "25%"
        elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
            FullMoonStatus = "15%"
        else
            FullMoonStatus = "0%"
        end
    end)
    end
    end)
    
    task.spawn(function()
        while task.wait() do
            pcall(function()
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                MirageStatus = "🟢 Yes"
            else
                MirageStatus = '🔴 No'
             end
        end)
     end
    end)
    
    
    spawn(function()
        pcall(function()
            while wait() do
                StatusMirage:SetDesc("Mirage Island: "..MirageStatus.." | Full Moon: "..FullMoonStatus)
            end
        end)
    end)

    Tabs.Main:AddButton({
        Title = "Tween to Mirage Island",
        Description = "",
        Callback = function()
            TweenMirage()
        end
    })
    function TweenMirage()
        repeat
            wait()
        until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            AllNPCS = getnilinstances()
            for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                table.insert(AllNPCS, v)
            end
            for r, v in pairs(AllNPCS) do
                if v.Name == "Advanced Fruit Dealer" then
                    Tween2(v.Huma NoidRootPart.CFrame)
                end
            end
        end
    end


    Tabs.Main:AddButton({
        Title = "Tween to Highest Point",
        Description = "",
        Callback = function()
            TwenetoHighestPoint()
        end
    })

    function TwenetoHighestPoint()
        HighestPoint = getHighestPoint()
        if HighestPoint then
            Tween2(HighestPoint.CFrame * CFrame.new(0, 211.88, 0))
        end
    end
    function getHighestPoint()
        if  Not game.workspace.Map:FindFirstChild("MysticIsland") then
            return nil
        end
        for r, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
            if v:IsA("MeshPart") then
                if v.MeshId == "rbxassetid://6745037796" then
                    return v
                end
            end
        end
    end

local ToggleTweenGear = Tabs.Main:AddToggle("ToggleTweenGear", {Title = "Tween To Gear",Description = "", Default = false })
ToggleTweenGear:OnChanged(function(Value)
    getgenv().TweenToGear = Value
end) 
Options.ToggleTweenGear:SetValue(false)

spawn(function()
    pcall(function()
        while wait() do
            if getgenv().TweenToGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                Tween2(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
end)




    local Togglelockmoon = Tabs.Main:AddToggle("Togglelockmoon", {Title = "Lock Moon and Use Race Skill",Description = "", Default = false })
    Togglelockmoon:OnChanged(function(Value)
        getgenv().AutoLockMoon = Value
    end) 
    Options.Togglelockmoon:SetValue(false)

    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().AutoLockMoon then
                    local moonDir = game.Lighting:GetMoonDirection()
                    local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                    game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
                end
            end)
        end
    end)


    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().AutoLockMoon then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"T",false,game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"T",false,game)
                end
            end)
        end
    end)


local ToggleMirage = Tabs.Main:AddToggle("ToggleMirage", {Title = "Auto Mirage Island",Description = "", Default = false })
ToggleMirage:OnChanged(function(Value)
getgenv().AutoSeaBeast = Value
end) 

 Options.ToggleMirage:SetValue(false)

 local AutoW = Tabs.Main:AddToggle("AutoW", {Title = "Auto Press W",Description = "", Default = false })
 AutoW:OnChanged(function(Value)
    getgenv().AutoW = Value
     end)
  Options.AutoW:SetValue(false)
  spawn(function()
    while wait() do
        pcall(function()
            if getgenv().AutoW then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
            end
        end)
    end
    end)
end

local Items = Tabs.Main:AddSection("Items Farm")

if Third_Sea then
    local ToggleHallow = Tabs.Main:AddToggle("ToggleHallow", {Title = "Auto Hallow Scythe [Fully]",Description = "", Default = false })

    ToggleHallow:OnChanged(function(Value)
        AutoHallowSycthe = Value
    end)
    Options.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                repeat wait(getgenv().Fast_Delay)
                                    Attack NoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.Huma NoidRootPart.Size = Vector3.new(50,50,50)
                                    toTarget(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.Huma NoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
									--Click
                                until v.Huma Noid.Health <= 0 or AutoHallowSycthe == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude <= 8                        
                      wait(0.5)
                        EquipTool("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").Huma NoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
    
            end
        end
    end)
	
	
	spawn(function()
           while wait(0.001) do
           if AutoHallowSycthe then
           local args = {
            [1] = "Bones",
            [2] = "Buy",
            [3] = 1,
            [4] = 1
           }
          
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
           end
           end
           end)
        
           
           local ToggleYama = Tabs.Main:AddToggle("ToggleYama", {Title = "Auto Get Yama",Description = "", Default = false })
           ToggleYama:OnChanged(function(Value)
            getgenv().AutoYama = Value
           end)
           Options.ToggleYama:SetValue(false)
           spawn(function()
            while wait() do
                if getgenv().AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                        repeat wait(.1)
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or  Not getgenv().AutoYama
                    end
                end
            end
        end)


        local ToggleTushita = Tabs.Main:AddToggle("ToggleTushita", {Title = "Auto Tushita",Description = "", Default = false })
        ToggleTushita:OnChanged(function(Value)
            AutoTushita = Value
        end)
        Options.ToggleTushita:SetValue(false)
           spawn(function()
                   while wait() do
                               if AutoTushita then
                                   if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                                       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                           if v.Name == ("Longma" or v.Name == "Longma") and v.Huma Noid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") then
                                            repeat wait(getgenv().Fast_Delay)
                                                Attack NoCoolDown()
                                                   AutoHaki()
                                                   if  Not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
                                                       wait()
                                                       EquipTool(SelectWeapon)
                                                   end
                                                   FarmPos = v.Huma NoidRootPart.CFrame
                                                     --Click
                                                   v.Huma NoidRootPart.Size = Vector3.new(60,60,60)
                                                   v.Huma Noid.JumpPower = 0
                                                   v.Huma Noid.WalkSpeed = 0
                                                   v.Huma NoidRootPart.CanCollide = false
                                                   v.Huma Noid:ChangeState(11)
                                                   Tween(v.Huma NoidRootPart.CFrame * Random)
                                               until  Not AutoTushita or  Not v.Parent or v.Huma Noid.Health <= 0
                                           end
                                       end
                                   else
                                       Tween(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                                   end
                               end
                           end
                   end)


                   local ToggleHoly = Tabs.Main:AddToggle("ToggleHoly", {Title = "Auto Holy Torch",Description = "", Default = false })
                   ToggleHoly:OnChanged(function(Value)
                    getgenv().Auto_Holy_Torch = Value
                   end)
                   Options.ToggleHoly:SetValue(false)
                   spawn(function()
                    while wait() do
                        if getgenv().Auto_Holy_Torch then
                            pcall(function()
                                wait(1)
                                repeat Tween(CFrame.new(-10752, 417, -9366)) wait() until  Not getgenv().Auto_Holy_Torch or (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-11672, 334, -9474)) wait() until  Not getgenv().Auto_Holy_Torch or (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-12132, 521, -10655)) wait() until  Not getgenv().Auto_Holy_Torch or (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-13336, 486, -6985)) wait() until  Not getgenv().Auto_Holy_Torch or (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-13489, 332, -7925)) wait() until  Not getgenv().Auto_Holy_Torch or (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                            end)
                        end
                    end
                end)
            end


if Second_Sea then
        local ToggleFactory = Tabs.Main:AddToggle("ToggleFactory", {Title = "Auto Farm Factory",Description = "", Default = false })
        ToggleFactory:OnChanged(function(Value)
            getgenv().Factory = Value
        end)
        Options.ToggleFactory:SetValue(false)

        spawn(function()
            while wait() do
                if getgenv().Factory then
                    if game.Workspace.Enemies:FindFirstChild("Core") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Core" and v.Huma Noid.Health > 0 then
                                repeat wait(getgenv().Fast_Delay)
                                    Attack NoCoolDown()
                                    repeat Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                                        wait()
                                    until  Not getgenv().Factory or (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                                    EquipTool(SelectWeapon)
                                    AutoHaki()
                                    Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.Huma NoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.Huma NoidRootPart.Transparency = 1
                                    v.Huma Noid.JumpPower = 0
                                    v.Huma Noid.WalkSpeed = 0
                                    v.Huma NoidRootPart.CanCollide = false
                                    FarmPos = v.Huma NoidRootPart.CFrame
                                    MonFarm = v.Name
                                    --Click
                                until  Not v.Parent or v.Huma Noid.Health <= 0  or getgenv().Factory == false
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("Core") then
                        repeat Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                            wait()
                        until  Not getgenv().Factory or (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                    end
        
                end
            end
        end)

    end

        if Third_Sea then
    local ToggleCakeV2 = Tabs.Main:AddToggle("ToggleCakeV2", {Title = "Kill Dought King [Need Spawn]",Description = "", Default = false })
    ToggleCakeV2:OnChanged(function(Value)
        getgenv().AutoCakeV2 = Value
    end)
        Options.ToggleCakeV2:SetValue(false)
end
    spawn(function()
        while wait() do
            if getgenv().AutoCakeV2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dough King" then
                                if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
                                    repeat wait(getgenv().Fast_Delay)
                                        Attack NoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.Huma NoidRootPart.CanCollide = false
                                        v.Huma Noid.WalkSpeed = 0
                                        v.Huma NoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.Huma NoidRootPart.CFrame * Random)
                                    until  Not getgenv().AutoCakeV2 or  Not v.Parent or v.Huma Noid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                     Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").Huma NoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
            
                    end
                end)
            end
        end
    end)






    
if Second_Sea or Third_Sea then
    local ToggleHakiColor = Tabs.Main:AddToggle("ToggleHakiColor", {Title = "Buy Haki Color",Description = "Mua Haki Màu",Default = false })
    ToggleHakiColor:OnChanged(function(Value)
        getgenv().Auto_Buy_Enchancement = Value
    end)
        Options.ToggleHakiColor:SetValue(false)
    spawn(function()
            while wait() do
                if getgenv().Auto_Buy_Enchancement then
                    local args = {
                        [1] = "ColorsDealer",
                        [2] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end 
            end
        end)
end

if Second_Sea then
    local ToggleSwordLengend = Tabs.Main:AddToggle("ToggleSwordLengend", {Title = "Buy Sword Lengendary",Description = "",Default = false })
    ToggleSwordLengend:OnChanged(function(Value)
        getgenv().BuyLengendSword = Value
    end)
        Options.ToggleSwordLengend:SetValue(false)

        spawn(function()
            while wait(.1) do
                pcall(function()
                    if getgenv().BuyLengendSword or Triple_A then
                        local args = {
                            [1] = "LegendarySwordDealer",
                            [2] = "2"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    else
                        wait(2)
                    end
                end)
            end
        end)
    end

if Second_Sea then
    local ToggleEvoRace = Tabs.Main:AddToggle("ToggleEvoRace", {Title = "Auto Evo Race",Description = "",Default = false })
    ToggleEvoRace:OnChanged(function(Value)
        getgenv().AutoEvoRace = Value
    end)
        Options.ToggleEvoRace:SetValue(false)

    spawn(function()
        while task.wait() do
            pcall(function()
                if getgenv().AutoEvoRace then
                    local Back = game.Players.LocalPlayer.Backpack
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                    if Back:FindFirstChild("Flower 2") then
                        if Back:FindFirstChild("Flower 1") then
                            Tween(CFrame.new(-5497.06152, 47.5923004, -795.237061))
                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Name == "Zombie" then
                                    repeat task.wait()
                                        EquipTool(SelectWeapon)
                                        Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))		
                                    until Back:FindFirstChild("Flower 3")
                                end
                            end
                        else
                            Tween(game.Workspace["Flower1"].CFrame)
                        end
                    else
                        Tween(game.Workspace["Flower2"].CFrame)
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
end
--------------------------------------------------------------------------------------------------------------------------------------------
--Setting
local SettingFarm = Tabs.Setting:AddSection("Farming")

local ToggleFast = Tabs.Setting:AddToggle("ToggleFast", {Title = "Enabled Fast Attack",Description = "", Default = true })
ToggleFast:OnChanged(function(Value)
    getgenv().FastNe = Value
end)
Options.ToggleFast:SetValue(true)

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if getgenv().FastNe then
            if typeof(y) == "table" then
                pcall(function()
                    CameraShaker:Stop()
                    y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
                    y.activeController.timeToNextAttack = 0
                    y.activeController.hitboxMagnitude = 60
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 1
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.huma Noid.AutoRotate = true
                end)
            end
        end
    end)
end)

local ToggleFastLow = Tabs.Setting:AddToggle("ToggleFastLow", {Title = "Enabled Fast Attack (for low mobile & pc)",Description = "Đánh nhanh cho máy yếu", Default = false })
ToggleFastLow:OnChanged(function(Value)
    getgenv().FastNelow = Value
end)
Options.ToggleFastLow:SetValue(false)
local CurveFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService("VirtualUser")
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShaker:Stop()
function CurveFuckWeapon()
    local p13 = CurveFrame.activeController
    local wea = p13.blades[1]
    if  Not wea then
        return
    end
    while wea.Parent ~= game.Players.LocalPlayer.Character do
        wea = wea.Parent
    end
    return wea
end

function getHits(Size)
    local Hits = {}
    local Enemies = workspace.Enemies:GetChildren()
    local Characters = workspace.Characters:GetChildren()
    for i = 1, #Enemies do
        local v = Enemies[i]
        local Human = v:FindFirstChildOfClass("Huma Noid")
        if
            Human and Human.RootPart and Human.Health > 0 and
                game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size + 5
         then
            table.insert(Hits, Human.RootPart)
        end
    end
    for i = 1, #Characters do
        local v = Characters[i]
        if v ~= game.Players.LocalPlayer.Character then
            local Human = v:FindFirstChildOfClass("Huma Noid")
            if
                Human and Human.RootPart and Human.Health > 0 and
                    game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size + 5
             then
                table.insert(Hits, Human.RootPart)
            end
        end
    end
    return Hits
end

function Boost()
    task.spawn(function()
        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurveFuckWeapon()))
    end)
end

function Unboost()
    tsak.spawn(function()
        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon",tostring(CurveFuckWeapon()))
    end)
end

local cd Normal = 0
local Animation = Instance.new("Animation")
local CooldownFastAttack = 0

FastAttack = function()
    local ac = CurveFrame.activeController
    if ac and ac.equipped then
        task.spawn(function()
            if tick() - cd Normal > 0.5 then
                ac:attack()
                cd Normal = tick()
            else
                Animation.AnimationId = ac.anims.basic[2]
                ac.huma Noid:LoadAnimation(Animation):Play(1, 1)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(120), 2, "")
            end
        end)
    end
end

bs = tick()
task.spawn(function()
    while task.wait(getgenv().DelayFastLow) do
        if getgenv().FastNelow then
            _G.Fast = true
            if bs - tick() > 0.75 then
                task.wait()
                bs = tick()
            end
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Huma Noid.Health > 0 then
                        if (v.Huma NoidRootPart.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude <= 100 then
                            FastAttack()
                            task.wait()
                            Boost()
                        end
                    end
                end
            end)
        end
    end
end)

k = tick()
task.spawn(function()
    if _G.Fast then
    while task.wait(.2) do
            if k - tick() > 0.75 then
                task.wait()
                k = tick()
            end
            end
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Huma Noid.Health > 0 then
                        if (v.Huma NoidRootPart.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude <= 100 then
                            task.wait(.000025)
                            Unboost()
                        end
                    end
                end
            end)
    end
end)

task.spawn(function()
    while task.wait() do
        if _G.Fast then
       pcall(function()
        CurveFrame.activeController.timeToNextAttack = 0
        CurveFrame.activeController.focusStart = 0
        CurveFrame.activeController.hitboxMagnitude = 200
        CurveFrame.activeController.huma Noid.AutoRotate = true
        CurveFrame.activeController.increment = 1 + 1 / 1
       end)
    end
    end
end)

abc = true
task.spawn(function()
    local a = game.Players.LocalPlayer
    local b = require(a.PlayerScripts.CombatFramework.Particle)
    local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
    if  Not shared.orl then
        shared.orl = c.wrapAttackAnimationAsync
    end
    if  Not shared.cpc then
        shared.cpc = b.play
    end
    if abc then
        pcall(function()
            c.wrapAttackAnimationAsync = function(d, e, f, g, h)
            local i = c.getBladeHits(e, f, g)
            if i then
                b.play = function()
                end
                d:Play(0.25, 0.25, 0.25)
                h(i)
                b.play = shared.cpc
                wait(.5)
                d:Stop()
            end
            end
        end)
    end
end)

    local ToggleBringMob = Tabs.Setting:AddToggle("ToggleBringMob", {Title = "Enabled Bring Mobs",Description = "", Default = true })
    ToggleBringMob:OnChanged(function(Value)
        getgenv().BringMob = Value
    end)
    Options.ToggleBringMob:SetValue(true)
    spawn(function()
        while task.wait() do
            pcall(function()
                if getgenv().BringMob and bringmob then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == MonFarm and (v.Huma NoidRootPart.Position - game.Players.LocalPlayer.Character.Huma NoidRootPart.Position).Magnitude <= 315 then
                            v.Huma NoidRootPart.Size = Vector3.new(60,60,60)
                            v.Head.CanCollide = false
                            v.Huma NoidRootPart.CFrame = FarmPos
                            v.Huma NoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Huma Noid:FindFirstChild("Animator") then
                                v.Huma Noid.Animator:Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                        end
                    end
                end
            end)
        end
    end)

    local ToggleBypassTP = Tabs.Setting:AddToggle("ToggleBypassTP", {Title = "Enabled Bypass Tp",Description = "", Default = false })
    ToggleBypassTP:OnChanged(function(Value)
        BypassTP = Value
    end)
    Options.ToggleBypassTP:SetValue(false)


local ToggleRemove = Tabs.Setting:AddToggle("ToggleRemove", {Title = " Enabled Remove Damage Texts",Description = "", Default = true })
ToggleRemove:OnChanged(function(Value)
    getgenv().RemoveDameText = Value
    end)
    Options.ToggleRemove:SetValue(true)

    spawn(function()
        while wait() do
            if getgenv().RemoveDameText then
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
            else
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
            end
        end
        end)

        
local ToggleRemove Notify = Tabs.Setting:AddToggle("ToggleRemove Notify", {Title = " Enabled Remove All  Notify",Description = "", Default = false })
ToggleRemove Notify:OnChanged(function(Value)
    getgenv().Remove Notify = Value
    end)
    Options.ToggleRemove Notify:SetValue(false)

    spawn(function()
        while wait() do
            if getgenv().Remove Notify then
                game.Players.LocalPlayer.PlayerGui. Notifications.Enabled = false
            else
                game.Players.LocalPlayer.PlayerGui. Notifications.Enabled = true
            end
        end
    end)



    local ToggleWhite = Tabs.Setting:AddToggle("ToggleWhite", {Title = " Enabled White Screen",Description = "Màn hình Treo", Default = false })
    ToggleWhite:OnChanged(function(Value)
       getgenv().WhiteScreen = Value
       if getgenv().WhiteScreen == true then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    elseif getgenv().WhiteScreen == false then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
            end
        end)
        Options.ToggleWhite:SetValue(false)
      
        local SKill = Tabs.Setting:AddSection("Skill Mastery")
local ToggleZ = Tabs.Setting:AddToggle("ToggleZ", {Title = "Skill Z",Description = "", Default = true })
ToggleZ:OnChanged(function(Value)
    getgenv().Z = Value
end)
Options.ToggleZ:SetValue(true)

local ToggleX = Tabs.Setting:AddToggle("ToggleX", {Title = "Skill X", Description = "",Default = true })
ToggleX:OnChanged(function(Value)
    getgenv().X = Value
end)
Options.ToggleX:SetValue(true)


local ToggleC = Tabs.Setting:AddToggle("ToggleC", {Title = "Skill C",Description = "", Default = false })
ToggleC:OnChanged(function(Value)
    getgenv().C = Value
end)
Options.ToggleC:SetValue(false)


local ToggleV = Tabs.Setting:AddToggle("ToggleV", {Title = "Skill V",Description = "", Default = false })
ToggleV:OnChanged(function(Value)
    getgenv().V = Value
end)
Options.ToggleV:SetValue(false)


local ToggleF = Tabs.Setting:AddToggle("ToggleF", {Title = "Skill F",Description = "", Default = false })
ToggleF:OnChanged(function(Value)
   getgenv().F = Value
    end)
Options.ToggleF:SetValue(false)


local Pos = Tabs.Setting:AddSection("Distance Farm")

local SliderPosX = Tabs.Setting:AddSlider("SliderPosX", {
    Title = "Pos X",
    Description = "",
    Default = 0,
    Min = -60,
    Max = 60,
    Rounding = 1,
    Callback = function(Value)
      posX = Value
    end
})
SliderPosX:OnChanged(function(Value)
  posX = Value
end)
SliderPosX:SetValue(0)

local SliderPosY = Tabs.Setting:AddSlider("SliderPosY", {
    Title = "Pos Y",
    Description = "",
    Default = 15,
    Min = -60,
    Max = 60,
    Rounding = 1,
    Callback = function(Value)
      posY = Value
    end
})
SliderPosY:OnChanged(function(Value)
  posY = Value
end)
SliderPosY:SetValue(15)

local SliderPosZ = Tabs.Setting:AddSlider("SliderPosZ", {
    Title = "Pos Z",
    Description = "",
    Default = 15,
    Min = -60,
    Max = 60,
    Rounding = 1,
    Callback = function(Value)
      posZ = Value
    end
})
SliderPosZ:OnChanged(function(Value)
     posZ = Value
end)
SliderPosZ:SetValue(15)

local Ui = Tabs.Setting:AddSection("Config UI")
--------------------------------------------------------------------------------------------------------------------------------------------
--Stats
local ToggleMelee = Tabs.Stats:AddToggle("ToggleMelee", {Title = "Auto Melee",Description = "", Default = false })
ToggleMelee:OnChanged(function(Value)
    getgenv().Auto_Stats_Melee = Value
    end)
Options.ToggleMelee:SetValue(false)

local ToggleDe = Tabs.Stats:AddToggle("ToggleDe", {Title = "Auto Defense",Description = "Nâng Máu", Default = false })
ToggleDe:OnChanged(function(Value)
    getgenv().Auto_Stats_Defense = Value
    end)
Options.ToggleDe:SetValue(false)

local ToggleSword = Tabs.Stats:AddToggle("ToggleSword", {Title = "Auto Sword",Description = "", Default = false })
ToggleSword:OnChanged(function(Value)
    getgenv().Auto_Stats_Sword = Value
    end)
Options.ToggleSword:SetValue(false)

local ToggleGun = Tabs.Stats:AddToggle("ToggleGun", {Title = "Auto Gun", Description = "Nâng Súng",Default = false })
ToggleGun:OnChanged(function(Value)
    getgenv().Auto_Stats_Gun = Value
    end)
Options.ToggleGun:SetValue(false)

local ToggleFruit = Tabs.Stats:AddToggle("ToggleFruit", {Title = "Auto Demon Fruit",Description = "", Default = false })
ToggleFruit:OnChanged(function(Value)
    getgenv().Auto_Stats_Devil_Fruit = Value
    end)
Options.ToggleFruit:SetValue(false)
spawn(function()
    while wait() do
        if getgenv().Auto_Stats_Devil_Fruit then
            local args = {
                [1] = "AddPoint",
                [2] = "Demon Fruit",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if getgenv().Auto_Stats_Gun then
            local args = {
                [1] = "AddPoint",
                [2] = "Gun",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)


spawn(function()
    while wait() do
        if getgenv().Auto_Stats_Sword then
            local args = {
                [1] = "AddPoint",
                [2] = "Sword",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if getgenv().Auto_Stats_Defense then
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if getgenv().Auto_Stats_Melee then
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------
--Player

local Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local SelectedPly = Tabs.Player:AddDropdown("SelectedPly", {
    Title = "Select Player",
    Description = "",
    Values = Playerslist,
    Multi = false,
    Default = 1,
})

SelectedPly:SetValue("nil")
SelectedPly:OnChanged(function(Value)
    getgenv().SelectPly = Value
end)

local ToggleTeleport = Tabs.Player:AddToggle("ToggleTeleport", {Title = "Teleport To Player", Description = "Bay Đến Người Chơi",Default = false })
ToggleTeleport:OnChanged(function(Value)
    getgenv().TeleportPly = Value
    if Value == false then
        wait()
        AutoHaki()
        toTarget(game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleTeleport:SetValue(false)

spawn(function()
	while wait() do
		if getgenv().TeleportPly then
			pcall(function()
				if game.Players:FindFirstChild(getgenv().SelectPly) then
					toTarget(game.Players[getgenv().SelectPly].Character.Huma NoidRootPart.CFrame)
				end
			end)
		end
	end
end)

local ToggleQuanSat = Tabs.Player:AddToggle("ToggleQuanSat", {Title = "Spectate Player",Description = "Quan sát Người Chơi", Default = false })
ToggleQuanSat:OnChanged(function(Value)
    SpectatePlys = Value
    local plr1 = game:GetService("Players").LocalPlayer.Character.Huma Noid
    local plr2 = game:GetService("Players"):FindFirstChild(getgenv().SelectPly)
    repeat wait(.1)
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(getgenv().SelectPly).Character.Huma Noid
    until SpectatePlys == false 
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Huma Noid
end)
Options.ToggleQuanSat:SetValue(false)


local ToggleFastAttack = Tabs.Player:AddToggle("ToggleFastAttack", {Title = " Click Attack Player",Description = "Đánh Người Chơi", Default = false })

ToggleFastAttack:OnChanged(function(Value)
 getgenv().FastAttackFaiFao = Value
end)
Options.ToggleFastAttack:SetValue(false)

local SliderDelayAttackPlayer = Tabs.Player:AddSlider("SliderDelayAttackPlayer", {
    Title = "Delay Fast",
    Description = "",
    Default = 0.1,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Callback = function(Value)
       getgenv().DelayAttackPlayer = Value
    end
})

SliderDelayAttackPlayer:OnChanged(function(Value)
   getgenv().DelayAttackPlayer = Value
end)

SliderDelayAttackPlayer:SetValue(0.1)

spawn(function()
while wait() do
    pcall(function()
        if getgenv().FastAttackFaiFao then
            repeat wait(getgenv().DelayAttackPlayer)
               Attack NoCoolDown()
            until  Not getgenv().FastAttackFaiFao
        end
    end)
end
end)
local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
Camera:Stop()
function getAllBladeHitsPlayers(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i=1,#Characters do local v = Characters[i]
		local Human = v:FindFirstChildOfClass("Huma Noid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Huma Noid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

local Teleport = Tabs.Player:AddSection("Combat")
local SlidershowFov = Tabs.Player:AddSlider("SlidershowFov", {
    Title = "Size Fov",
    Description = "",
    Default = 100,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        getgenv().Select_Size_Fov = Value
    end
})

SlidershowFov:OnChanged(function(Value)
    getgenv().Select_Size_Fov = Value
end)
SlidershowFov:SetValue(100)


local ToggleShowFov = Tabs.Player:AddToggle("ToggleShowFov", {Title = "Show Fov",Description = "", Default = false })
ToggleShowFov:OnChanged(function(value)
    getgenv().Show_Fov = value
end)
Options.ToggleShowFov:SetValue(false)


local ToggleAimBotSkill = Tabs.Player:AddToggle("ToggleAimBotSkill", {Title = "Auto Aimbot Skill",Description = "", Default = false })
ToggleAimBotSkill:OnChanged(function(Value)
    getgenv().Aimbot_Skill_Fov = Value
end)
Options.ToggleAimBotSkill:SetValue(false)
local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
spawn(function()
	while wait() do
		if getgenv().Aimbot_Skill_Fov then
			pcall(function()
				local MaxDist, Closest = math.huge
				for i,v in pairs(game:GetService("Players"):GetChildren()) do 
					local Head = v.Character:FindFirstChild("Huma NoidRootPart")
					local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
					local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist and Dist <= getgenv().Select_Size_Fov and v.Name ~= game.Players.LocalPlayer.Name then
						MaxDist = Dist
						getgenv().Aim_Players = v
					end
				end
			end)
		end
	end
end)
spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if getgenv().Aimbot_Skill_Fov then
						args[2] = getgenv().Aim_Players.Character.Huma NoidRootPart.Position
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)

local Circle = Drawing.new("Circle")
Circle.Color =  Color3.fromRGB(0, 244, 0)
Circle.Thickness = 1
Circle.Radius = 250
Circle.NumSides = 460
Circle.Filled = false
Circle.Transparency = 1

game:GetService("RunService").Stepped:Connect(function()
    Circle.Radius = getgenv().Select_Size_Fov
    Circle.Thickness = 1
    Circle.NumSides = 460
    Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
    if getgenv().Show_Fov then
        Circle.Visible = true
    else
        Circle.Visible = false
    end
end)

--------------------------------------------------------------------------------------------------------------------------------------------
local Mastery = Tabs.Player:AddSection("Misc")

local Toggle NoClip = Tabs.Player:AddToggle("Toggle NoClip", {Title = " No Clip",Description = "", Default = false })
Toggle NoClip:OnChanged(function(value)
    getgenv().LOf = value
end)
Options.Toggle NoClip:SetValue(false)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().LOf then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

local ToggleWalkonWater = Tabs.Player:AddToggle("ToggleWalkonWater", {Title = "Walk on Water",Description = "Đi Trên Nước", Default = true })
ToggleWalkonWater:OnChanged(function(Value)
  getgenv().WalkonWater = Value
end)
Options.ToggleWalkonWater:SetValue(true)
spawn(function()
  while task.wait() do
    pcall(function()
      if getgenv().WalkonWater then
        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
      else
        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
      end
    end)
  end
end)

local ToggleSpeedRun = Tabs.Player:AddToggle("ToggleSpeedRun", {Title = "Run Speed",Description = "Chạy Nhanh", Default = true })
ToggleSpeedRun:OnChanged(function(Value)
    getgenv().RunSpeed = Value
    if Value == false then
        game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart:FindFirstChild("Agility"):Destroy()
    end
end)
Options.ToggleSpeedRun:SetValue(true)
spawn(function()
    while wait() do
        if getgenv().RunSpeed then
            InfAb()
        end
    end
end)
function InfAb()
    if getgenv().RunSpeed then
        if  Not game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum. NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.Huma NoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end



local ToggleEnablePvp = Tabs.Player:AddToggle("ToggleEnablePvp", {Title = "Auto Enable PVP", Description = "",Default = false })
ToggleEnablePvp:OnChanged(function(Value)
  getgenv().EnabledPvP = Value
end)
Options.ToggleEnablePvp:SetValue(false)

spawn(function()
  pcall(function()
      while wait() do
          if getgenv().EnabledPvP then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
              end
          end
      end
  end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------------
--Teleport
local Teleport = Tabs.Teleport:AddSection("Teleport World")

Tabs.Teleport:AddButton({
    Title = "First Sea",
    Description = "Sea 1",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})
Tabs.Teleport:AddButton({
    Title = "Second Sea",
    Description = "Sea 2",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

Tabs.Teleport:AddButton({
    Title = "Third Sea",
    Description = "Sea 3",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})
local Mastery = Tabs.Teleport:AddSection("Teleport Island")

if First_Sea then
 IslandList = {
                "WindMill",
                "Marine",
                "Middle Town",
                "Jungle",
                "Pirate Village",
                "Desert",
                "S Now Island",
                "MarineFord",
                "Colosseum",
                "Sky Island 1",
                "Sky Island 2",
                "Sky Island 3",
                "Prison",
                "Magma Village",
                "Under Water Island",
                "Fountain City",
                "Shank Room",
                "Mob Island",
}

elseif Second_Sea then
       IslandList = {
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two S Now Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island",
       }

elseif Third_Sea then
    IslandList = {
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "MiniSky", 
        "Hydra Island",
        "Floating Turtle",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Cocoa Island",
        "Candy Island",
        "Tiki Outpost",
       }
    end

local DropdownIsland = Tabs.Teleport:AddDropdown("DropdownIsland",{
    Title = "Dropdown",
    Description = "",
    Values = IslandList,
    Multi = false,
    Default = 1,
})

DropdownIsland:SetValue("")
DropdownIsland:OnChanged(function(Value)
    getgenv().SelectIsland = Value
end)

Tabs.Teleport:AddButton({
    Title = "Tween",
    Description = "",
    Callback = function()
            if getgenv().SelectIsland == "WindMill" then
                toTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif getgenv().SelectIsland == "Marine" then
                toTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            elseif getgenv().SelectIsland == "Middle Town" then
                toTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            elseif getgenv().SelectIsland == "Jungle" then
                toTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            elseif getgenv().SelectIsland == "Pirate Village" then
                toTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            elseif getgenv().SelectIsland == "Desert" then
                toTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            elseif getgenv().SelectIsland == "S Now Island" then
                toTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
            elseif getgenv().SelectIsland == "MarineFord" then
                toTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            elseif getgenv().SelectIsland == "Colosseum" then
                toTarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
            elseif getgenv().SelectIsland == "Sky Island 1" then
                toTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
            elseif getgenv().SelectIsland == "Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            elseif getgenv().SelectIsland == "Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            elseif getgenv().SelectIsland == "Prison" then
                toTarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            elseif getgenv().SelectIsland == "Magma Village" then
                toTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            elseif getgenv().SelectIsland == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif getgenv().SelectIsland == "Fountain City" then
                toTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            elseif getgenv().SelectIsland == "Shank Room" then
                toTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            elseif getgenv().SelectIsland == "Mob Island" then
                toTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif getgenv().SelectIsland == "The Cafe" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                wait(0.1)
                Tween2(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            elseif getgenv().SelectIsland == "Frist Spot" then
                toTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            elseif getgenv().SelectIsland == "Dark Area" then
                toTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
            elseif getgenv().SelectIsland == "Flamingo Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
            elseif getgenv().SelectIsland == "Flamingo Room" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
            elseif getgenv().SelectIsland == "Green Zone" then
                toTarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
            elseif getgenv().SelectIsland == "Factory" then
                toTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
            elseif getgenv().SelectIsland == "Colossuim" then
                toTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            elseif getgenv().SelectIsland == "Zombie Island" then
                toTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
            elseif getgenv().SelectIsland == "Two S Now Mountain" then
                toTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
            elseif getgenv().SelectIsland == "Punk Hazard" then
                toTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
            elseif getgenv().SelectIsland == "Cursed Ship" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.40197753906, 125.05712890625, 32885.875))
            elseif getgenv().SelectIsland == "Ice Castle" then
                toTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
            elseif getgenv().SelectIsland == "Forgotten Island" then
                toTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
            elseif getgenv().SelectIsland == "Ussop Island" then
                toTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif getgenv().SelectIsland == "Mini Sky Island" then
                Tween2(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
            elseif getgenv().SelectIsland == "Great Tree" then
                toTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
            elseif getgenv().SelectIsland == "Castle On The Sea" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
            elseif getgenv().SelectIsland == "MiniSky" then
                Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
            elseif getgenv().SelectIsland == "Port Town" then
                toTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
            elseif getgenv().SelectIsland == "Hydra Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5753.5478515625, 610.7880859375, -282.33172607421875))
            elseif getgenv().SelectIsland == "Floating Turtle" then
                toTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
            elseif getgenv().SelectIsland == "Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
            elseif getgenv().SelectIsland == "Haunted Castle" then
                toTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            elseif getgenv().SelectIsland == "Ice Cream Island" then
                toTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
            elseif getgenv().SelectIsland == "Peanut Island" then
                toTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
            elseif getgenv().SelectIsland == "Cake Island" then
                toTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
            elseif getgenv().SelectIsland == "Cocoa Island" then
                toTarget(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
            elseif getgenv().SelectIsland == "Candy Island" then
                toTarget(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
            elseif getgenv().SelectIsland == "Tiki Outpost" then
                toTarget(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
            end
        end
    })

    Tabs.Teleport:AddButton({
        Title = "Stop Tween",
        Description = "",
        Callback = function()
          CancelTween()
          game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.Huma NoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
            CFrame = P1
          }):Cancel()
        end
    })
--------------------------------------------------------------------------------------------------------------------------------------------
--Fruit
local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {}
ShopDevilSell = {}
for i,v in next,Remote_GetFruits do
    table.insert(Table_DevilFruitSniper,v.Name)
    if v.OnSale then 
        table.insert(ShopDevilSell,v.Name)
    end
end
local DropdownFruit = Tabs.Fruit:AddDropdown("DropdownFruit", {
    Title = "Select Fruit",
    Description = "",
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1,
})
DropdownFruit:SetValue("Kitsune-Kitsune")
DropdownFruit:OnChanged(function(Value)
    getgenv().SelectFruit = Value
end)

local ToggleFruit = Tabs.Fruit:AddToggle("ToggleFruit", {Title = "Buy Fruit Sniper",Description = "", Default = false })
ToggleFruit:OnChanged(function(Value)
    getgenv().AutoBuyFruitSniper = Value
end)
Options.ToggleFruit:SetValue(false)
spawn(function()
    pcall(function()
        while wait(.1) do
            if getgenv().AutoBuyFruitSniper then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",getgenv().SelectFruit,false)
            end 
        end
    end)
end)


local ToggleStore = Tabs.Fruit:AddToggle("ToggleStore", {Title = "Store Fruit",Description = "", Default = false })
ToggleStore:OnChanged(function(Value)
    getgenv().AutoStoreFruit = Value
end)
Options.ToggleStore:SetValue(false)

spawn(function()
    while task.wait() do
        if getgenv().AutoStoreFruit then
            pcall(function()
                if getgenv().AutoStoreFruit then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rocket-Rocket",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rocket Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Falcon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("alcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ghost-Ghost",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ghost Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Portal-Portal",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                    end

                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buddha",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spider-Spider",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Phoenix",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Pain-Pain",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ve Nom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ve Nom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ve Nom-Ve Nom",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ve Nom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spirit-Spirit",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kitsune-Kitsune",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit"))
                    end
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kitsune Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kitsune-Kitsune",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kitsune Fruit"))
                    end
                end
                end
            end)
        end
        wait(0.3)
    end
    end)

local ToggleRandomFruit = Tabs.Fruit:AddToggle("ToggleRandomFruit", {Title = "Random Fruit",Description = "", Default = false })
ToggleRandomFruit:OnChanged(function(Value)
    getgenv().Random_Auto = Value
end)
Options.ToggleRandomFruit:SetValue(false)
spawn(function()
    pcall(function()
        while wait(.1) do
            if getgenv().Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)
local ToggleCollectTP = Tabs.Fruit:AddToggle("ToggleCollectTP", {Title = "Collect Devil Fruit (TP)",Description = "", Default = false })
ToggleCollectTP:OnChanged(function(Value)
    getgenv().CollectFruitTP = Value
end)
Options.ToggleCollectTP:SetValue(false)
spawn(function()
		while wait(.1) do
			if getgenv().CollectFruitTP then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
						game.Players.LocalPlayer.Character.Huma NoidRootPart.CFrame = v.Handle.CFrame
						end
					end
				end
            end
       end)
local ToggleCollect = Tabs.Fruit:AddToggle("ToggleCollect", {Title = "Collect Devil Fruit (Tween)",Description = "", Default = false })
ToggleCollect:OnChanged(function(Value)
    getgenv().Tweenfruit = Value
end)
Options.ToggleCollect:SetValue(false)
spawn(function()
    while wait(.1) do
        if getgenv().Tweenfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    Tween(v.Handle.CFrame)
                end
            end
        end
end
end)

local Mastery = Tabs.Fruit:AddSection("Esp")

local ToggleEspPlayer = Tabs.Fruit:AddToggle("ToggleEspPlayer", {Title = "Esp Player",Description = "Định vị Người Chơi", Default = false })

ToggleEspPlayer:OnChanged(function(Value)
    ESPPlayer = Value
	UpdatePlayerChams()
end)
Options.ToggleEspPlayer:SetValue(false)


local ToggleEspFruit = Tabs.Fruit:AddToggle("ToggleEspFruit", {Title = "Esp Demon Fruit",Description = "", Default = false })

ToggleEspFruit:OnChanged(function(Value)
    DevilFruitESP = Value
    while DevilFruitESP do wait()
        UpdateDevilChams() 
    end
end)
Options.ToggleEspFruit:SetValue(false)




local ToggleEspIsland = Tabs.Fruit:AddToggle("ToggleEspIsland", {Title = "Esp Island",Description = "", Default = false })

ToggleEspIsland:OnChanged(function(Value)
    IslandESP = Value
    while IslandESP do wait()
        UpdateIslandESP() 
    end
end)
Options.ToggleEspIsland:SetValue(false)


local ToggleEspFlower = Tabs.Fruit:AddToggle("ToggleEspFlower", {Title = "Esp Flower",Description = "Định Vị Hoa", Default = false })

ToggleEspFlower:OnChanged(function(Value)
    FlowerESP = Value
	UpdateFlowerChams() 
end)
Options.ToggleEspFlower:SetValue(false)


spawn(function()
    while wait(2) do
        if FlowerESP then
            UpdateFlowerChams() 
        end
        if DevilFruitESP then
            UpdateDevilChams() 
        end
        if ChestESP then
            UpdateChestChams() 
        end
        if ESPPlayer then
            UpdatePlayerChams()
        end
        if RealFruitESP then
            UpdateRealFruitChams()
        end
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------
--Raid
local Chips = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"}

local DropdownRaid = Tabs.Raid:AddDropdown("DropdownRaid", {
    Title = "Select Chip",
    Description = "Chọn Chip",
    Values = Chips,
    Multi = false,
    Default = 1,
})
DropdownRaid:SetValue("Flame")
DropdownRaid:OnChanged(function(Value)
    SelectChip = Value
end)
local ToggleBuy = Tabs.Raid:AddToggle("ToggleBuy", {Title = "Auto Buy Chip", Description = "Mua Chip",Default = false })
ToggleBuy:OnChanged(function(Value)
    getgenv().Auto_Buy_Chips_Dungeon = Value
end)
Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
		if getgenv().Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = SelectChip
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
        end
    end
end)


    local ToggleStart = Tabs.Raid:AddToggle("ToggleStart", {Title = "Auto Start Raid",Description = "", Default = false })
    ToggleStart:OnChanged(function(Value)
        getgenv().Auto_StartRaid = Value
end)
Options.ToggleStart:SetValue(false)

spawn(function()
    while wait(.1) do
        pcall(function()
            if getgenv().Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if  Not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if Second_Sea then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif Third_Sea then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)


local ToggleKillAura = Tabs.Raid:AddToggle("ToggleKillAura", {Title = "Auto Kill Aura",Description = "", Default = false })
ToggleKillAura:OnChanged(function(Value)
    getgenv().KillAura = Value
end)
Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if getgenv().KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            v.Huma Noid.Health = 0
                            v.Huma NoidRootPart.CanCollide = false
                        until  Not getgenv().KillAura or  Not v.Parent or v.Huma Noid.Health <= 0
                    end
                end
            end)
        end
    end
end)


local ToggleNextIsland = Tabs.Raid:AddToggle("ToggleNextIsland", {Title = "Auto Next Island",Description = "", Default = false })
ToggleNextIsland:OnChanged(function(Value)
    getgenv().AutoNextIsland = Value
end)
Options.ToggleNextIsland:SetValue(false)
spawn(function()
    while task.wait() do
        if getgenv().AutoNextIsland then
            pcall(function()
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
                    end
                end
            end)
        end
    end
end)



local ToggleAwake = Tabs.Raid:AddToggle("ToggleAwake", {Title = "Auto Awake",Description = "", Default = false })
ToggleAwake:OnChanged(function(Value)
    getgenv().AutoAwakenAbilities = Value
end)
Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if getgenv().AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)


local ToggleGetFruit = Tabs.Raid:AddToggle("ToggleGetFruit", {Title = "Get Fruit Low Bely",Description = "", Default = false })
ToggleGetFruit:OnChanged(function(Value)
    getgenv().Autofruit = Value
end)

spawn(function()
    while wait(.1) do
        pcall(function()
     if getgenv().Autofruit then
         
local args = {
    [1] = "LoadFruit",
    [2] = "Rocket-Rocket"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
    [1] = "LoadFruit",
    [2] = "Spin-Spin"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Chop-Chop"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Spring-Spring"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Bomb-Bomb"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Smoke-Smoke"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Spike-Spike"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Flame-Flame"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Falcon-Falcon"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Ice-Ice"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Sand-Sand"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Dark-Dark"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Ghost-Ghost"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {
    [1] = "LoadFruit",
    [2] = "Diamond-Diamond"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Light-Light"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Rubber-Rubber"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Barrier-Barrier"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)

if Second_Sea then
Tabs.Raid:AddButton({
    Title = "Raid Lab",
    Description = "",
    Callback = function()
     Tween2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
end
})
elseif Third_Sea then
    Tabs.Raid:AddButton({
        Title = "Raid Lab",
        Description = "",
        Callback = function()
		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
           Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end
        })
end

local Mastery = Tabs.Raid:AddSection("Law Raid")


local ToggleLaw = Tabs.Raid:AddToggle("ToggleLaw", {Title = "Auto Law",Description = "", Default = false })

ToggleLaw:OnChanged(function(Value)
    getgenv().Auto_Law = Value
end)
Options.ToggleLaw:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if getgenv().Auto_Law then
                if  Not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and  Not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and  Not game:GetService("Workspace").Enemies:FindFirstChild("Order") and  Not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    wait(0.3)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait(0.4) do
            if getgenv().Auto_Law then
                if  Not game:GetService("Workspace").Enemies:FindFirstChild("Order") and  Not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                    end
                end
                if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order" then
                                repeat wait(getgenv().Fast_Delay)
                                    Attack NoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.Huma NoidRootPart.CanCollide = false
                                    v.Huma NoidRootPart.Size = Vector3.new(120, 120, 120)
                                    --Click
                                until  Not v.Parent or v.Huma Noid.Health <= 0 or getgenv().Auto_Law == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                        Tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                    end
                end
            end
        end
    end)
end)

--------------------------------------------------------------------------------------------------------------------------------------------
--RaceV4

Tabs.Race:AddButton({
    Title = "Timple Of Time",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
    end
})

Tabs.Race:AddButton({
    Title = "Tween To Lever Pull",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})


Tabs.Race:AddButton({
    Title = "Tween To Acient One",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
})


local Mastery = Tabs.Race:AddSection("Auto Race")
Tabs.Race:AddButton({
    Title = "Tween To Race Portal",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    Tween2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    Tween2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    Tween2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    Tween2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                    end
    end
})

local ToggleHumanandghoul = Tabs.Race:AddToggle("ToggleHumanandghoul", {Title = "Auto [ Human / Ghoul ] Trial",Description = "Hoàn thành Tộc quỷ + người", Default = false })
ToggleHumanandghoul:OnChanged(function(Value)
    getgenv().KillAura = Value
end)
Options.ToggleHumanandghoul:SetValue(false)

local ToggleAutotrial = Tabs.Race:AddToggle("ToggleAutotrial", {Title = "Auto Trial",Description = "Tụ Động hoàn thành ải", Default = false })
ToggleAutotrial:OnChanged(function(Value)
    getgenv().AutoQuestRace = Value
end)
Options.ToggleAutotrial:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if getgenv().AutoQuestRace then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Huma Noid.Health = 0
									v.Huma NoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until  Not getgenv().AutoQuestRace or  Not v.Parent or v.Huma Noid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name ==  "s Nowisland_Cylinder.081" then
							BTPZ(v.CFrame* CFrame.new(0,0,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "Huma NoidRootPart" then
							Tween(v.CFrame* Random)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then
										game.Players.LocalPlayer.Character.Huma Noid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then
										game.Players.LocalPlayer.Character.Huma Noid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then
										game.Players.LocalPlayer.Character.Huma Noid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then
										game.Players.LocalPlayer.Character.Huma Noid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.Huma NoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Huma Noid.Health = 0
									v.Huma NoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until  Not getgenv().AutoQuestRace or  Not v.Parent or v.Huma Noid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							Tween(v.CFrame* CFrame.new(0,10,0))
					  	end
				   	end
				end
			end
        end
    end)
end)

local Mastery = Tabs.Race:AddSection("Auto Train")

local ToggleAutoAcientQuest = Tabs.Race:AddToggle("ToggleAutoAcientQuest", {Title = "Auto Train",Description = "l", Default = false })
ToggleAutoAcientQuest:OnChanged(function(Value)
    getgenv().AutoFarmAcient = Value
end)
Options.ToggleAutoAcientQuest:SetValue(false)
local AcientCframe = CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875)

spawn(function()
    pcall(function()
        while wait() do
            if getgenv().AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    getgenv().AutoFarmAcient = false
                    toTarget(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do 
        if getgenv().AutoFarmAcient then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                           if v:FindFirstChild("Huma Noid") and v:FindFirstChild("Huma NoidRootPart") and v.Huma Noid.Health > 0 then
                                    bringmob = true
                                    repeat wait(getgenv().Fast_Delay)
                                    Attack NoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.Huma NoidRootPart.CanCollide = false
                                    v.Huma Noid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    FarmPos = v.Huma NoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Tween(v.Huma NoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                until  Not getgenv().AutoFarmAcient or  Not v.Parent or v.Huma Noid.Health <= 0
                          bringmob = false
                            end
                        end
                    end
                else
                toTarget(AcientCframe)
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if getgenv().AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    getgenv().AutoFarmAcient = true
                end
            end
        end
    end)
end)
spawn(function()
while wait() do
    pcall(function()
        if getgenv().AutoFarmAcient then
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
            wait(0.1)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
        end
    end)
end
end)
--------------------------------------------------------------------------------------------------------------------------------------------
--shop

Tabs.Shop:AddButton({
	Title = "Geppo",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
	end
})



Tabs.Shop:AddButton({
	Title = "Buso Haki",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
	end
})




Tabs.Shop:AddButton({
	Title = "Soru",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
	end
})


Tabs.Shop:AddButton({
	Title = "Ken Haki",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
	end
})

local Mastery = Tabs.Shop:AddSection("Fighting Styles")


Tabs.Shop:AddButton({
	Title = "Black Leg",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	end
})

Tabs.Shop:AddButton({
	Title = "Electro",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end
})
Tabs.Shop:AddButton({
	Title = "Fishman Karate",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	end
})
Tabs.Shop:AddButton({
	Title = "Dragon Claw",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	end
})
Tabs.Shop:AddButton({
	Title = "Superhuman",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	end
})
Tabs.Shop:AddButton({
	Title = "Death Step",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	end
})
Tabs.Shop:AddButton({
	Title = "Sharkman Karate",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end
})
Tabs.Shop:AddButton({
	Title = "Electric Claw",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	end
})
Tabs.Shop:AddButton({
	Title = "Dragon Talon",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	end
})
Tabs.Shop:AddButton({
	Title = "Godhuman",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	end
})
Tabs.Shop:AddButton({
	Title = "Sanguine Art",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
	end
})

local Mastery = Tabs.Shop:AddSection("Misc Items")

Tabs.Shop:AddButton({
	Title = "Refund Stats",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
	end
})
Tabs.Shop:AddButton({
	Title = "Reroll Race",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
	end
})



--------------------------------------------------------------------------------------------------------------------------------------------
--misc

Tabs.Misc:AddButton({
	Title = "Rejoin Server",
	Description = "",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
})


Tabs.Misc:AddButton({
	Title = "Hop Server",
	Description = "",
	Callback = function()
		Hop()
	end
})

function Hop()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	function Teleport() 
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end      


local Mastery = Tabs.Misc:AddSection("Team")


Tabs.Misc:AddButton({
	Title = "Join Pirates Team",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
	end
})


Tabs.Misc:AddButton({
	Title = "Join Marines Team",
	Description = "",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
	end
})

local Mastery = Tabs.Misc:AddSection("Open Ui")

Tabs.Misc:AddButton({
	Title = "Devil Shop",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
	end
})



Tabs.Misc:AddButton({
	Title = "Color Haki",
	Description = "",
	Callback = function()
		game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
	end
})



Tabs.Misc:AddButton({
	Title = "Title Name",
	Description = "",
	Callback = function()
		local args = {
			[1] = "getTitles"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
	end
})



Tabs.Misc:AddButton({
	Title = "Awakening",
	Description = "",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
	end
})


local Mastery = Tabs.Misc:AddSection("Troll")


Tabs.Misc:AddButton({
	Title = "Rain Fruit",
	Description = "",
	Callback = function()
        for i, v in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
            v.Parent = game.Workspace.Map
            v:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
            if v.Fruit:FindFirstChild("AnimationController") then
                v.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v.Fruit:FindFirstChild("Idle")):Play()
            end
            v.Handle.Touched:Connect(function(otherPart)
                if otherPart.Parent == game.Players.LocalPlayer.Character then
                    v.Parent = game.Players.LocalPlayer.Backpack
                    game.Players.LocalPlayer.Character.Huma Noid:EquipTool(v)
                end
            end)
        end
	end
})



local Mastery = Tabs.Misc:AddSection("Misc")


local ToggleRejoin = Tabs.Misc:AddToggle("ToggleRejoin", {Title = "Auto Rejoin", Description = "Tự động vào lại khi bị văng",Default = true })
ToggleRejoin:OnChanged(function(Value)
	getgenv().AutoRejoin = Value
end)

Options.ToggleRejoin:SetValue(true)
spawn(function()
	while wait() do
		if getgenv().AutoRejoin then
				getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
					if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
						game:GetService("TeleportService"):Teleport(game.PlaceId)
					end
				 end)
			end
		end
	end)



    local Mastery = Tabs.Misc:AddSection("Kaitun Cap")

Tabs.Misc:AddButton({
	Title = "Show Items",
	Description = "Hiện thị vật phẩm",
	Callback = function()
		do
			local ui = game:GetService("CoreGui").RobloxGui.Modules.Profile:FindFirstChild("UILibrary")
			if ui then ui:Destroy() end
		end
		local UserInputService = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local RunService = game:GetService("RunService")
		local LocalPlayer = game:GetService("Players").LocalPlayer
		local Mouse = LocalPlayer:GetMouse()
	
		do
			local ui = game:GetService("Lighting"):FindFirstChild("Blur")
			if ui then ui:Destroy() end
		end
	
		local Blur = Instance.new("BlurEffect")
	
		TweenService:Create(
			Blur,
			TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.I Nout),
			{ Size = 50 }
		):Play()
		Blur.Parent = game.Lighting
	
		local UIStroke = Instance.new("UIStroke")
		local UICorner = Instance.new("UICorner")
	
		local ScreenGui = Instance.new("ScreenGui")
		local ImageButton = Instance.new("ImageButton")
		local RobloxButton = Enum.ButtonStyle.RobloxButton
	
		ScreenGui.Parent = game.CoreGui
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	
		local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
		local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
		local Items = {}
		local RaityLevel = { "Mythical", "Legendary", "Rare", "Uncommon", "Common" }
		local RaityColor = {
			["Common"] = Color3.fromRGB(179, 179, 179),
			["Uncommon"] = Color3.fromRGB(92, 140, 211),
			["Rare"] = Color3.fromRGB(140, 82, 255),
			["Legendary"] = Color3.fromRGB(213, 43, 228),
			["Mythical"] = Color3.fromRGB(238, 47, 50)
		}
		function GetRaity(color)
			for k, v in pairs(RaityColor) do
				if v == color then return k end
			end
		end
	
		for k, v in pairs(Inventory) do
			Items[v.Name] = v
		end
	
		local total = #getupvalue(cac.UpdateRender, 4)
		local rac = {}
		local allitem = {}
		local total2 = 0
		while total2 < total do
			local i = 0
			while i < 25000 and total2 < total do
				game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition =
					Vector2.new(0, i)
				for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
					if v:IsA("Frame") and  Not rac[v.ItemName.Text] and v.ItemName.Visible == true then
						local vaihuhu = GetRaity(v.Background.BackgroundColor3)
						if vaihuhu then
							if  Not allitem[vaihuhu] then
								allitem[vaihuhu] = {}
							end
							table.insert(allitem[vaihuhu], v:Clone())
						end
						total2 = total2 + 1
						rac[v.ItemName.Text] = true
					end
				end
				i = i + 20
			end
			wait()
		end
		function GetXY(vec)
			return vec * 100
		end
	
		local tvk = Instance.new("UIListLayout")
		tvk.FillDirection = Enum.FillDirection.Vertical
		tvk.SortOrder = 2
		tvk.Padding = UDim.new(0, 10)
	
		local Left = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Left.BackgroundTransparency = 1
		Left.Size = UDim2.new(.5, 0, 1, 0)
		tvk.Parent = Left
	
		local Right = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Right.BackgroundTransparency = 1
		Right.Size = UDim2.new(.5, 0, 1, 0)
		Right.Position = UDim2.new(.6, 0, 0, 0)
		tvk:Clone().Parent = Right
		for k, v in pairs(allitem) do
			local cac = Instance.new("Frame", Left)
			cac.BackgroundTransparency = 1
			cac.Size = UDim2.new(1, 0, 0, 0)
			cac.LayoutOrder = table.find(RaityLevel, k)
	
			local cac2 = Instance.new("Frame", Right)
			cac2.BackgroundTransparency = 1
			cac2.Size = UDim2.new(1, 0, 0, 0)
			cac2.LayoutOrder = table.find(RaityLevel, k)
	
			local tvk = Instance.new("UIGridLayout", cac)
			tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
			tvk.CellSize = UDim2.new(0, 70, 0, 70)
			tvk.FillDirectionMaxCells = 100
			tvk.FillDirection = Enum.FillDirection.Horizontal
	
			local ccc = tvk:Clone()
			ccc.Parent = cac2
			for k, v in pairs(v) do
				if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then
					if v.ItemLine2.Text ~= "Accessory" then
						local bucac                  = v.ItemName:Clone()
						bucac.BackgroundTransparency = 1
						bucac.TextSize               = 10
						bucac.TextXAlignment         = 2
						bucac.TextYAlignment         = 2
						bucac.ZIndex                 = 5
						bucac.Text                   = Items[v.ItemName.Text].Mastery
						bucac.Size                   = UDim2.new(.5, 0, .5, 0)
						bucac.Position               = UDim2.new(.5, 0, .5, 0)
						bucac.Parent                 = v
					end
					v.Parent = cac
				elseif v.ItemLine2.Text == "Blox Fruit" then
					v.Parent = cac2
				end
			end
			cac.AutomaticSize = 2
			cac2.AutomaticSize = 2
		end
		local ListHuhu = {
			["Superhuman"] = Vector2.new(3, 2),
			["DeathStep"] = Vector2.new(4, 3),
			["ElectricClaw"] = Vector2.new(2, 0),
			["SharkmanKarate"] = Vector2.new(0, 0),
			["DragonTalon"] = Vector2.new(1, 5)
		}
		local MeleeG = Instance.new("Frame", Left)
		MeleeG.BackgroundTransparency = 1
		MeleeG.Size = UDim2.new(1, 0, 0, 0)
		MeleeG.LayoutOrder = table.find(RaityLevel, k)
		MeleeG.AutomaticSize = 2
		MeleeG.LayoutOrder = 100
		local tvk = Instance.new("UIGridLayout", MeleeG)
		tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
		tvk.CellSize = UDim2.new(0, 70, 0, 70)
		tvk.FillDirectionMaxCells = 100
		tvk.FillDirection = Enum.FillDirection.Horizontal
	
		local cac = { "Superhuman", "ElectricClaw", "DragonTalon", "SharkmanKarate", "DeathStep", "GodHuman" }
		for k, v in pairs(cac) do
			if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. v, true) == 1 then
				local huhu = Instance.new("ImageLabel", MeleeG)
				huhu.Image = "rbxassetid://9945562382"
				huhu.ImageRectSize = Vector2.new(100, 100)
				huhu.ImageRectOffset = ListHuhu[v] * 100
			end
		end
		function formatNumber(v)
			return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
		end
	
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.AnchorPoint = Vector2.new(0.5, 0.5)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 1120, 0, 700)
	
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.AnchorPoint = Vector2.new(0.5, 0.5)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 1150, 0, 750)
		local Name = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
		Name.Name = "Name"
		Name.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli
		Name.Position = UDim2.new(0, 0, -1.5, 0)
		Name.Size = UDim2.new(1, 0, 1, 0)
		Name.TextColor3 = Color3.fromRGB(255, 255, 255)
		Name.Text = game.Players.LocalPlayer.Name
	
		local Fragments = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
		Fragments.Name = "FragmentsCheck"
		Fragments.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli
		Fragments.Position = UDim2.new(0, 0, -0.75, 0)
		Fragments.Size = UDim2.new(1, 0, 1, 0)
		Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
		local args = {
			[1] = "getAwakenedAbilities"
		}
	
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Position = UDim2.new(0.48, 10, 0.908, 2)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Size = UDim2.new(1, 0, 0.22, 0)
	
	
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.RaceEnergy.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = false
		end)
		for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
			if v:IsA("ImageButton") then
				v:Destroy()
			end
		end
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = false
		end)
	end
})

local Mastery = Tabs.Misc:AddSection("Day")

Tabs.Misc:AddButton({
	Title = "Remove Fog",
	Description = "",
	Callback = function()
         NoFog()
    end
})
function  NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end

--------------------------------------------------------------------------------------------------------------------------------------------
--Hop

if First_Sea or Second_Sea then
    local Mastery = Tabs.Hop:AddSection("Thid Sea Please !!!")
end

if Third_Sea then
local ToggleFindMoon = Tabs.Hop:AddToggle("ToggleFindMoon", {Title = "Find Full Moon",Description = "Tìm trăng tròn", Default = false })
ToggleFindMoon:OnChanged(function(Value)
    getgenv().AutoFindMoon = Value
end)
Options.ToggleFindMoon:SetValue(false)


spawn(function()
    while wait() do
        if getgenv().AutoFindMoon then
        if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
            wait(2.0)
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
            Hop()
            Fluent: Notify({
                Title = "Sea Hub",
                Content = "Turn Off Find Full Moon...",
                SubContent = "", -- Optional
                Duration = 5 -- Set to nil to make the  Notification  Not disappear
            })
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
            Hop()
            Fluent: Notify({
                Title = "Sea Hub",
                Content = "Hop...",
                SubContent = "", -- Optional
                Duration = 5 -- Set to nil to make the  Notification  Not disappear
            })
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
            Hop()
            Fluent: Notify({
                Title = "Sea Hub",
                Content = "Hop...",
                SubContent = "", -- Optional
                Duration = 5 -- Set to nil to make the  Notification  Not disappear
            })
        else
            Hop()
            end
        end
    end
end)


local ToggleMirageIsland = Tabs.Hop:AddToggle("ToggleMirageIsland", {Title = "Find Mirage Island",Description = "Tìm đảo bí ẩn", Default = false })
ToggleMirageIsland:OnChanged(function(Value)
    getgenv().FindMirageIsland = Value
end)
Options.ToggleMirageIsland:SetValue(false)

spawn(function()
    while wait() do
    if getgenv().FindMirageIsland then
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            if HighestPointRealCFrame and (game.Players.LocalPlayer.Character.Huma NoidRootPart.Position - HighestPointRealCFrame.Position).Magnitude > 10 then
            Tween(getHighestPoint().CFrame * CFrame.new(0, 211.88, 0))
                end
        elseif  Not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or  Not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            Hop()
            end
        end
    end
end)
end
--------------------------------------------------------------------------------------------------------------------------------------------
print("Script Loading Completed !")
--------------------------------------------------------------------------------------------------------------------------------------------
-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)
-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
-- Ig Nore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:Ig NoreThemeSettings()
-- You can add indexes of elements the save manager should ig Nore
SaveManager:SetIg NoreIndexes({})
-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("Sea Hub")
SaveManager:SetFolder("Sea Hub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Setting)
SaveManager:BuildConfigSection(Tabs.Setting)
Window:SelectTab(1)
-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
----------------------------------------------------------------------------------------------------------------------------------------------