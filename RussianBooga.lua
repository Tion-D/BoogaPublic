-- A booga script made by some russians I think

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Cityrage/goldfarm_boogabooga/refs/heads/main/rayfield'))()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local HWIDtable = loadstring(game:HttpGet("https://raw.githubusercontent.com/Fuger809/6546546/refs/heads/main/Script.lua"))()


local Window = Rayfield:CreateWindow({
   Name = "Whitelist",
   Icon = "baseline", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "BloomHub",
   LoadingSubtitle = "Loading...",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

})


local Tab = Window:CreateTab("Whitelist", "cable") -- Title, Image


local Button = Tab:CreateButton({
   Name = "Get HWID",
   Callback = function()
       Rayfield:Notify({
          Title = "Your HWID is",
          Content = ""..HWID.."",
          Duration = 6.5,
          Image = "bookmark-check",
        })
     wait(0.3)
     Rayfield:Notify({
          Title = "Hwid",
          Content = "Copied to clipboard",
          Duration = 3,
          Image = "bookmark-check",
        })
     setclipboard(HWID)
   end,
})


local Button = Tab:CreateButton({
   Name = "Load script",
   Callback = function()
        for i,v in pairs(HWIDtable) do
          if v == HWID then
            Rayfield:Destroy()
-- ========= [ Fluent UI C8 CcC5CdC5C4C6C5D0Db ] =========
local Library = loadstring(game:HttpGetAsync("https://github.com/1dontgiveaf/Fluent-Renewed/releases/download/v1.0/Fluent.luau"))()
local SaveManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/1dontgiveaf/Fluent-Renewed/refs/heads/main/Addons/SaveManager.luau"))()
local InterfaceManager = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/1dontgiveaf/Fluent-Renewed/refs/heads/main/Addons/InterfaceManager.luau"))()

-- ========= [ Services / utils ] =========
local HttpService       = game:GetService("HttpService")
local Players           = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService        = game:GetService("RunService")
local Workspace         = game:GetService("Workspace")
local UIS               = game:GetService("UserInputService")
local Lighting          = game:GetService("Lighting")

local plr  = Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum  = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")

local function ensureChar()
    char = plr.Character or plr.CharacterAdded:Wait()
    hum  = char:WaitForChild("Humanoid")
    root = char:WaitForChild("HumanoidRootPart")
end
plr.CharacterAdded:Connect(function() task.defer(ensureChar) end)

-- ========= [ AeC1D9C8C5 D5C5CbCfC5D0Db, C3CbCeC1C0CbDcCdCe CeC4CdC0C6C4Db ] =========
local function _lower(s) return string.lower(tostring(s or "")) end
_G._parseKeyName = _G._parseKeyName or function(s)
    s = tostring(s or ""):gsub("%s+","")
    return Enum.KeyCode[s] or Enum.KeyCode.Unknown
end

-- ==== Friend cache (Roblox friends) ====
local Friend = { set = {}, last = 0, ttl = 60 }
local function refreshFriends(force)
    if not force and (tick() - Friend.last) < Friend.ttl then return end
    Friend.last = tick()
    local ok, pages = pcall(function() return Players:GetFriendsAsync(plr.UserId) end)
    if not ok or not pages then return end
    local set = {}
    while true do
        for _, f in ipairs(pages:GetCurrentPage()) do set[f.Id] = true end
        if pages.IsFinished then break end
        pcall(function() pages:AdvanceToNextPageAsync() end)
    end
    Friend.set = set
end
refreshFriends(true)
task.spawn(function()
    while true do refreshFriends(false); task.wait(30) end
end)

local function isFriendPlayer(p)
    if not p or not p.UserId then return false end
    if Friend.set[p.UserId] then return true end
    local ok, v = pcall(function() return plr:IsFriendsWith(p.UserId) end)
    if ok and v then Friend.set[p.UserId] = true; return true end
    return false
end
local function isFriendByModelName(modelName)
    local p = Players:FindFirstChild(modelName)
    return isFriendPlayer(p)
end

-- ========= [ Packets (C1C5C7 CeD8C8C1CeCa, C5D1CbC8 CcCeC4D3CbDf CdC5D2) ] =========
local packets do
    local ok, mod = pcall(function() return require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Packets")) end)
    packets = ok and mod or {}
end
local function swingtool(eids)
    if type(eids) ~= "table" then eids = { eids } end
    if packets and packets.SwingTool and packets.SwingTool.send then
        pcall(function() packets.SwingTool.send(eids) end)
    end
end
local function pickup(eid)
    if packets and packets.Pickup and packets.Pickup.send then
        pcall(function() packets.Pickup.send(eid) end)
    end
end

-- ========= [ Window / Tabs ] =========
local Window = Library:CreateWindow{
    Title = "Fuger Hub -- Booga Booga Reborn",
    SubTitle = "by Fuger XD",
    Size = UDim2.fromOffset(900, 600),
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
}
local Tabs = {}
Tabs.Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })

-- CcC5CdC5C4C6C5D0Db
SaveManager:SetLibrary(Library)
InterfaceManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

-- ========= [ Helpers ] =========
local function sanitize(name)
    name = tostring(name or ""):gsub("[%c\\/:*?\"<>|]+",""):gsub("^%s+",""):gsub("%s+$","")
    return name == "" and "default" or name
end

-- ========= [ ROUTE persist ] =========
local function routePath(cfg) return "FluentScriptHub/specific-game/"..sanitize(cfg)..".route.json" end
local ROUTE_AUTOSAVE = "FluentScriptHub/specific-game/_route_autosave.json"

local function encodeRoute(points)
    local t = {}
    for i,p in ipairs(points or {}) do
        t[i] = { x=p.pos.X, y=p.pos.Y, z=p.pos.Z, wait=p.wait or 0, js=p.jump_start or nil, je=p.jump_end or nil }
    end
    return t
end
local function decodeRoute(t)
    local out = {}
    for _,r in ipairs(t or {}) do
        table.insert(out, { pos=Vector3.new(r.x,r.y,r.z), wait=(r.wait and r.wait>0) and r.wait or nil, jump_start=r.js or nil, jump_end=r.je or nil })
    end
    return out
end
local function Route_SaveToFile(path, points)
    if not writefile then return false end
    local ok, json = pcall(function() return HttpService:JSONEncode(encodeRoute(points)) end)
    if not ok then return false end
    local ok2 = pcall(writefile, path, json)
    return ok2 == true or ok2 == nil
end
local function Route_LoadFromFile(path, Route, redraw)
    if not (isfile and readfile) or not isfile(path) then return false end
    local ok, json = pcall(readfile, path); if not ok then return false end
    local ok2, arr = pcall(function() return HttpService:JSONDecode(json) end); if not ok2 then return false end
    table.clear(Route.points)
    if redraw and type(redraw.clearDots) == "function" then redraw.clearDots() end
    for _,p in ipairs(decodeRoute(arr)) do
        table.insert(Route.points, p)
        if redraw and type(redraw.dot) == "function" then redraw.dot(Color3.fromRGB(255,230,80), p.pos, 0.7) end
    end
    return true
end

-- ========= [ AeC1D9C8C5 C8CdC2C5CdD2C0D0Dc/C5C4Db ] =========
function findInventoryList()
    local pg = plr:FindFirstChild("PlayerGui"); if not pg then return nil end
    local mg = pg:FindFirstChild("MainGui");    if not mg then return nil end
    local rp = mg:FindFirstChild("RightPanel"); if not rp then return nil end
    local inv = rp:FindFirstChild("Inventory"); if not inv then return nil end
    return inv:FindFirstChild("List")
end
function getSlotByName(itemName)
    local list = findInventoryList()
    if not list then return nil end
    for _,child in ipairs(list:GetChildren()) do
        if child:IsA("ImageLabel") and child.Name == itemName then
            return child.LayoutOrder
        end
    end
    return nil
end
function consumeBySlot(slot)
    if not slot then return false end
    if packets and packets.UseBagItem     and packets.UseBagItem.send     then pcall(function() packets.UseBagItem.send(slot) end);     return true end
    if packets and packets.ConsumeBagItem and packets.ConsumeBagItem.send then pcall(function() packets.ConsumeBagItem.send(slot) end); return true end
    if packets and packets.ConsumeItem    and packets.ConsumeItem.send    then pcall(function() packets.ConsumeItem.send(slot) end);    return true end
    if packets and packets.UseItem        and packets.UseItem.send        then pcall(function() packets.UseItem.send(slot) end);        return true end
    return false
end
_G.fruittoitemid = _G.fruittoitemid or {
    Bloodfruit=94, Bluefruit=377, Lemon=99, Coconut=1, Jelly=604, Banana=606, Orange=602,
    Oddberry=32, Berry=35, Strangefruit=302, Strawberry=282, Sunfruit=128, Pumpkin=80,
    ["Prickly Pear"]=378, Apple=243, Barley=247, Cloudberry=101, Carrot=147
}
function getItemIdByName(name) local t=_G.fruittoitemid return t and t[name] or nil end
function consumeById(id)
    if not id then return false end
    if packets and packets.ConsumeItem and packets.ConsumeItem.send then pcall(function() packets.ConsumeItem.send(id) end); return true end
    if packets and packets.UseItem     and packets.UseItem.send     then pcall(function() packets.UseItem.send({itemID=id}) end); return true end
    if packets and packets.Eat         and packets.Eat.send         then pcall(function() packets.Eat.send(id) end); return true end
    if packets and packets.EatFood     and packets.EatFood.send     then pcall(function() packets.EatFood.send(id) end); return true end
    return false
end

-- ========= [ TAB: Configs ] =========
Tabs.Configs = Window:AddTab({ Title = "Configs", Icon = "save" })

local function SyncRuntimeFromUI()
    if follow_key_label then
        local ok, txt = pcall(function() return follow_key_label.Value end)
        if ok then
            local kc = _G._parseKeyName(txt)
            if kc ~= Enum.KeyCode.Unknown then _followKey = kc end
        end
    end
    if type(GT_SyncBindsFromUI) == "function" then pcall(GT_SyncBindsFromUI) end
end

local cfgName = "default"
local cfgInput = Tabs.Configs:AddInput("cfg_name_input",{ Title="Config name", Default=cfgName })
cfgInput:OnChanged(function(v) cfgName = sanitize(v) end)
Tabs.Configs:CreateButton({
    Title="Quick Save",
    Callback=function()
        local n = sanitize(cfgName)
        pcall(function() SaveManager:Save(n) end)
        Route_SaveToFile(routePath(n), (_G.__ROUTE and _G.__ROUTE.points) or {})
        Route_SaveToFile(ROUTE_AUTOSAVE, (_G.__ROUTE and _G.__ROUTE.points) or {})
        Library:Notify{ Title="Configs", Content="Saved "..n.." (+route)", Duration=3 }
    end
})
Tabs.Configs:CreateButton({
    Title="Quick Load",
    Callback=function()
        local n = sanitize(cfgName)
        pcall(function() SaveManager:Load(n) end)
        if _G.__ROUTE then
            local ok = Route_LoadFromFile(routePath(n), _G.__ROUTE, _G.__ROUTE._redraw)
            Library:Notify{ Title="Configs", Content="Loaded "..n..(ok and " +route" or " (no route file)"), Duration=3 }
        else
            Library:Notify{ Title="Configs", Content="Loaded "..n, Duration=3 }
        end
        SyncRuntimeFromUI()
    end
})
local auto = Tabs.Configs:CreateToggle("autoload_cfg",{ Title="Autoload this config", Default=true })
auto:OnChanged(function(v)
    local n = sanitize(cfgName)
    if v then pcall(function() SaveManager:SaveAutoloadConfig(n) end)
    else pcall(function() SaveManager:DeleteAutoloadConfig() end) end
end)

-- ========= [ TAB: Auto Loot ] =========
Tabs.Loot = Window:AddTab({ Title = "Auto Loot", Icon = "package" })
local LOOT_ITEM_NAMES = {
    "Berry","Bloodfruit","Bluefruit","Lemon","Strawberry","Gold","Raw Gold","Crystal Chunk",
    "Coin","Coins","Coin Stack","Essence","Emerald","Raw Emerald","Pink Diamond",
    "Raw Pink Diamond","Void Shard","Jelly","Magnetite","Raw Magnetite","Adurite","Raw Adurite",
    "Ice Cube","Stone","Iron","Raw Iron","Steel","Hide","Leaves","Log","Wood","Pie"
}
local loot_on        = Tabs.Loot:CreateToggle("loot_on",      { Title="Auto Loot", Default=false })
local loot_range     = Tabs.Loot:CreateSlider("loot_range",   { Title="Range (studs)", Min=5, Max=150, Rounding=0, Default=40 })
local loot_batch     = Tabs.Loot:CreateSlider("loot_batch",   { Title="Max pickups / tick", Min=1, Max=50, Rounding=0, Default=12 })
local loot_cd        = Tabs.Loot:CreateSlider("loot_cd",      { Title="Tick cooldown (s)", Min=0.03, Max=0.4, Rounding=2, Default=0.08 })
local loot_chests    = Tabs.Loot:CreateToggle("loot_chests",  { Title="Also loot chests (Contents)", Default=true })
local loot_blacklist = Tabs.Loot:CreateToggle("loot_black",   { Title="Use selection as Blacklist (else Whitelist)", Default=false })
local loot_debug     = Tabs.Loot:CreateToggle("loot_debug",   { Title="Debug (F9)", Default=false })
local loot_dropdown  = Tabs.Loot:CreateDropdown("loot_items", { Title="Items (multi)", Values = LOOT_ITEM_NAMES, Multi=true, Default = { Leaves = true, Log = true } })

local function safePickup2(eid)
    local ok = pcall(function() pickup(eid) end)
    if not ok and packets and packets.Pickup and packets.Pickup.send then
        pcall(function() packets.Pickup.send(eid) end)
    end
end
local DROP_FOLDERS = { "Items","Drops","WorldDrops","Loot","Dropped","Resources" }
local watchedFolders, conns, cache = {}, {}, {}
local function normalizedName(inst)
    local a
    if inst.GetAttribute then a = inst:GetAttribute("ItemName") or inst:GetAttribute("Name") or inst:GetAttribute("DisplayName") end
    if typeof(a) == "string" and a ~= "" then return a end
    return inst.Name
end
local function addDrop(inst)
    if cache[inst] then return end
    local eid = inst.GetAttribute and inst:GetAttribute("EntityID")
    if not eid then return end
    local name = normalizedName(inst)
    local getPos
    if inst:IsA("Model") then
        local pp = inst.PrimaryPart or inst:FindFirstChildWhichIsA("BasePart"); if not pp then return end
        getPos = function() return pp.Position end
    elseif inst:IsA("BasePart") or inst:IsA("MeshPart") then
        getPos = function() return inst.Position end
    else return end
    cache[inst] = { eid = eid, name = name, getPos = getPos }
end
local function removeDrop(inst) cache[inst] = nil end
local function hookFolder(folder)
    if not folder or watchedFolders[folder] then return end
    watchedFolders[folder] = true
    for _,ch in ipairs(folder:GetChildren()) do addDrop(ch) end
    conns[#conns+1] = folder.ChildAdded:Connect(addDrop)
    conns[#conns+1] = folder.ChildRemoved:Connect(removeDrop)
end
local function hookChests()
    local dep = workspace:FindFirstChild("Deployables")
    if not dep then return end
    for _,mdl in ipairs(dep:GetChildren()) do
        if mdl:IsA("Model") then
            local contents = mdl:FindFirstChild("Contents")
            if contents and not watchedFolders[contents] then hookFolder(contents) end
        end
    end
    conns[#conns+1] = dep.ChildAdded:Connect(function(mdl)
        task.defer(function()
            if mdl:IsA("Model") then
                local contents = mdl:FindFirstChild("Contents")
                if contents then hookFolder(contents) end
            end
        end)
    end)
end
for _,n in ipairs(DROP_FOLDERS) do hookFolder(workspace:FindFirstChild(n)) end
hookChests()
task.spawn(function()
    while true do
        for _,n in ipairs(DROP_FOLDERS) do
            local f = workspace:FindFirstChild(n)
            if f and not watchedFolders[f] then hookFolder(f) end
        end
        if loot_chests.Value then hookChests() end
        task.wait(1.0)
    end
end)
local function selectedSet()
    local sel, val = {}, loot_dropdown.Value
    if typeof(val) == "table" then for k,v in pairs(val) do if v then sel[string.lower(k)] = true end end end
    return sel
end
task.spawn(function()
    while true do
        if loot_on.Value and root then
            local set       = selectedSet()
            local useBlack  = loot_blacklist.Value
            local range     = loot_range.Value
            local maxPer    = math.max(1, math.floor(loot_batch.Value))
            local candidates = {}
            for inst,info in pairs(cache) do
                if inst.Parent then
                    local isContents = false
                    if not loot_chests.Value then
                        local p = inst.Parent
                        while p and p ~= workspace do
                            if p.Name == "Contents" then isContents = true; break end
                            p = p.Parent
                        end
                    end
                    if not isContents then
                        local pos = info.getPos()
                        local d   = (pos - root.Position).Magnitude
                        if d <= range then
                            local nm   = info.name or "Unknown"
                            local pass = true
                            if next(set) ~= nil then
                                local inSel = set[string.lower(nm)] == true
                                pass = (useBlack and (not inSel)) or ((not useBlack) and inSel)
                            end
                            if pass then candidates[#candidates+1] = { eid = info.eid, dist = d, name = nm } end
                        end
                    end
                end
            end
            if #candidates > 1 then table.sort(candidates, function(a,b) return a.dist < b.dist end) end
            if loot_debug.Value then
                print(("[AutoLoot] candidates=%d (mode=%s, chests=%s)")
                    :format(#candidates, useBlack and "Blacklist" or "Whitelist", tostring(loot_chests.Value)))
            end
            for i = 1, math.min(maxPer, #candidates) do
                safePickup2(candidates[i].eid)
                if loot_debug.Value then
                    print(("[AutoLoot] pickup #%d: %s [%.1f]"):format(i, candidates[i].name, candidates[i].dist))
                end
                task.wait(0.01)
            end
            task.wait(loot_cd.Value)
        else
            task.wait(0.15)
        end
    end
end)

-- ========= [ TAB: ESP  14 God Set (fixed, robust) + Server Announce ] =========
local Players = game:GetService("Players")
local P, LP = Players, Players.LocalPlayer

Tabs.ESP = Tabs.ESP or Window:AddTab({ Title = "ESP (God Set)", Icon = "eye" })

-- UI
local esp_enable       = Tabs.ESP:CreateToggle("god_esp_enable",      { Title="Enable ESP", Default=true })
local esp_maxdist      = Tabs.ESP:CreateSlider("god_esp_maxdist",     { Title="Max distance (studs)", Min=100, Max=3000, Rounding=0, Default=1200 })
local esp_showlabel    = Tabs.ESP:CreateToggle("god_esp_showlabel",   { Title="Show label over head", Default=true })
local esp_highlight    = Tabs.ESP:CreateToggle("god_esp_highlight",   { Title="Highlight only if Full Set (3/3)", Default=true })
local esp_only_full    = Tabs.ESP:CreateToggle("god_esp_onlyfull",    { Title="Show ONLY Full Set (3/3)", Default=false })
local esp_tick         = Tabs.ESP:CreateSlider("god_esp_tick",        { Title="Update rate (s)", Min=0.03, Max=0.35, Rounding=2, Default=0.10 })
local esp_rescan       = Tabs.ESP:CreateSlider("god_esp_rescan",      { Title="Rescan pieces every (s)", Min=0.5, Max=5, Rounding=1, Default=1.5 })

-- AdCeC2DbC5 CaCeCdD2D0CeCbDb C4CbDf C0CdCeCdD1C0 CfCe C2D1C5CcD3 D1C5D0C2C5D0D3:
local esp_announce_on  = Tabs.ESP:CreateToggle("god_esp_announce_on", { Title="Announce full gods on enable", Default=true })
Tabs.ESP:CreateButton({
  Title = "Announce now (full gods, server)",
  Callback = function() if _G._announceFullGodsServerOnce then task.spawn(_G._announceFullGodsServerOnce) end end
})

local COLOR_OK = Color3.fromRGB(90,255,120)
local COLOR_LO = Color3.fromRGB(255,210,80)
local COLOR_NO = Color3.fromRGB(255,90,90)

-- notify helper
local function notify(msg, dur)
  dur = dur or 3
  if Library and Library.Notify then
    Library:Notify({Title="ESP (God Set)", Content=tostring(msg), Duration=dur})
  elseif Lib and Lib.Notify then
    Lib:Notify({Title="ESP (God Set)", Content=tostring(msg), Duration=dur})
  else
    print("[ESP] "..tostring(msg))
  end
end

-- ===== name matching =====
_G.GOD_MATCH = _G.GOD_MATCH or {
  halo = {"godhalo","halo"},
  chest= {"godchest","chestplate","godarmor","armor"},
  legs = {"godlegs","legs","greaves"}
}
local GOD_MATCH = _G.GOD_MATCH

local function _norm(s)
  s = tostring(s or ""):lower()
  s = s:gsub("[%s%p_]+","")
  return s
end
local function nameMatch(hay, list)
  local h = _norm(hay)
  for _,key in ipairs(list) do
    if h:find(_norm(key), 1, true) then return true end
  end
  return false
end

-- ===== safe model/root =====
local function modelOfPlayer(p: Player)
  if p.Character and p.Character.Parent then return p.Character end
  local wf = workspace:FindFirstChild("Players")
  if wf then
    local m = wf:FindFirstChild(p.Name)
    if m and m:IsA("Model") then return m end
  end
  for _,m in ipairs(workspace:GetChildren()) do
    if m:IsA("Model") and m.Name==p.Name then
      if m:FindFirstChildOfClass("Humanoid") or m:FindFirstChild("HumanoidRootPart") then
        return m
      end
    end
  end
  return nil
end

local function rootOf(model: Model)
  return model:FindFirstChild("HumanoidRootPart")
      or model.PrimaryPart
      or model:FindFirstChildWhichIsA("BasePart")
end

-- ===== recount god pieces =====
local function recountGod(model: Model)
  local got = { halo=false, chest=false, legs=false }
  local scanned = 0
  for _,d in ipairs(model:GetDescendants()) do
    scanned += 1
    local s = d.Name
    local par = d.Parent
    for _=1,2 do
      if not par then break end
      s = par.Name .. " " .. s
      par = par.Parent
    end
    if (not got.halo ) and nameMatch(s, GOD_MATCH.halo ) then got.halo  = true end
    if (not got.chest) and nameMatch(s, GOD_MATCH.chest) then got.chest = true end
    if (not got.legs ) and nameMatch(s, GOD_MATCH.legs ) then got.legs  = true end
    if got.halo and got.chest and got.legs then break end
    if scanned > 1500 then break end
  end
  local cnt = (got.halo and 1 or 0) + (got.chest and 1 or 0) + (got.legs and 1 or 0)
  return cnt, got
end

-- ===== billboard/highlight =====
local function makeBoard(ad: BasePart)
  local bb = Instance.new("BillboardGui")
  bb.Name = "_ESP_GODSET_BB"
  bb.AlwaysOnTop = true
  bb.Size = UDim2.fromOffset(150, 22)
  bb.StudsOffsetWorldSpace = Vector3.new(0, 3.6, 0)
  bb.Adornee = ad
  bb.Parent = ad

  local tl = Instance.new("TextLabel")
  tl.BackgroundTransparency = 1
  tl.Size = UDim2.fromScale(1, 1)
  tl.Font = Enum.Font.GothamBold
  tl.TextScaled = true
  tl.TextStrokeTransparency = 0.25
  tl.Text = "God Set 0/3"
  tl.Parent = bb
  return bb, tl
end

local function ensureHL(model: Model)
  local hl = model:FindFirstChild("_ESP_GODSET_HL")
  if not hl then
    hl = Instance.new("Highlight")
    hl.Name = "_ESP_GODSET_HL"
    hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    hl.FillTransparency = 1
    hl.OutlineTransparency = 0
    hl.Adornee = model
    hl.Parent = model
  end
  return hl
end

-- ===== manager =====
local M = { map = {}, loop = nil, add = nil, rem = nil }

local function detach(p: Player)
  local rec = M.map[p]; if not rec then return end
  pcall(function() if rec.charConn then rec.charConn:Disconnect() end end)
  pcall(function() if rec.add      then rec.add:Disconnect()      end end)
  pcall(function() if rec.rem      then rec.rem:Disconnect()      end end)
  pcall(function() if rec.rootAnc  then rec.rootAnc:Disconnect()  end end)
  pcall(function() if rec.bb       then rec.bb:Destroy()          end end)
  pcall(function() if rec.hl       then rec.hl:Destroy()          end end)
  M.map[p] = nil
end

local function attach(p: Player)
  if p == LP then return end
  local m = modelOfPlayer(p); if not m then return end
  local r = rootOf(m); if not r then return end

  local bb, tl = makeBoard(r)
  local hl = ensureHL(m)

  local rec = {
    p = p, model = m, root = r,
    bb = bb, tl = tl, hl = hl,
    count = 0, dirty = true, nextScanAt = 0,
    charConn = nil, add = nil, rem = nil, rootAnc = nil
  }

  rec.charConn = p.CharacterAdded:Connect(function()
    task.defer(function()
      if M.map[p] then detach(p) end
      attach(p)
    end)
  end)

  rec.add = m.DescendantAdded:Connect(function() local t=M.map[p]; if t then t.dirty = true end end)
  rec.rem = m.DescendantRemoving:Connect(function() local t=M.map[p]; if t then t.dirty = true end end)
  rec.rootAnc = r.AncestryChanged:Connect(function(_, parent)
    if not parent then
      if M.map[p] then detach(p) end
      task.defer(function() attach(p) end)
    end
  end)

  M.map[p] = rec
end

-- ===== D1C5D0C2C5D0CdDbC9 C0CdCeCdD1 (C1C5C7 CeC3D0C0CdC8D7C5CdC8Df C4C8D1D2C0CdD6C8C8) =====
local function announceFullGodsServerOnce()
  local meRoot = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") or nil
  local full = {}  -- { {p=Player, d=distance or math.huge}, ... }

  for _,p in ipairs(Players:GetPlayers()) do
    if p ~= LP then
      local m = modelOfPlayer(p)
      local r = m and rootOf(m)
      if m and r then
        local ok, cnt = pcall(function() return recountGod(m) end)
        cnt = ok and cnt or 0
        if cnt >= 3 then
          local d = math.huge
          if meRoot then d = (r.Position - meRoot.Position).Magnitude end
          table.insert(full, { p = p, d = d })
        end
      end
    end
  end

  table.sort(full, function(a,b)
    if meRoot then return a.d < b.d end
    local an = (a.p.DisplayName or a.p.Name)
    local bn = (b.p.DisplayName or b.p.Name)
    return tostring(an) < tostring(bn)
  end)

  local total = #full
  if total == 0 then
    notify("Full God Set: CdC8CaCeC3Ce CdC0 D1C5D0C2C5D0C5 CdC5 CdC0C9C4C5CdCe", 2.5)
    return
  end

  local i, batch = 1, 6
  while i <= total do
    local j = math.min(i + batch - 1, total)
    local parts = {}
    for k = i, j do
      local item = full[k]
      local name = item.p.DisplayName or item.p.Name
      if meRoot and item.d < math.huge then
        table.insert(parts, string.format("%s (%.0f)", name, item.d))
      else
        table.insert(parts, tostring(name))
      end
    end
    local header = string.format("Full God Set CdC0 D1C5D0C2C5D0C5: %d", total)
    notify(header.." | "..table.concat(parts, ", "), 4)
    i = j + 1
  end
end
_G._announceFullGodsServerOnce = announceFullGodsServerOnce

-- ===== main loop =====
local function start()
  if M.loop then return end
  for _,p in ipairs(P:GetPlayers()) do if p ~= LP then attach(p) end end
  M.add = P.PlayerAdded:Connect(function(p) task.defer(function() attach(p) end) end)
  M.rem = P.PlayerRemoving:Connect(function(p) detach(p) end)

  -- D1C5D0C2C5D0-wide C0CdCeCdD1 CfD0C8 C2CaCbDeD7C5CdC8C8 (C5D1CbC8 C2CaCbDeD7E1Cd D2D3CcC1CbC5D0)
  if esp_announce_on.Value then task.defer(announceFullGodsServerOnce) end

  M.loop = task.spawn(function()
    while true do
      if not esp_enable.Value then
        for _,rec in pairs(M.map) do
          if rec.bb then rec.bb.Enabled = false end
          if rec.hl then rec.hl.Enabled = false end
        end
        task.wait(0.2)
      else
        local me = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") or nil
        local now = os.clock()
        for p,rec in pairs(M.map) do
          if not (rec and rec.model and rec.model.Parent and rec.root and rec.root.Parent) then
            detach(p); attach(p); rec = M.map[p]
          end
          if rec then
            if (rec.dirty and now >= rec.nextScanAt) then
              rec.count = 0
              local ok,cnt = pcall(function() return recountGod(rec.model) end)
              rec.count = (ok and cnt) or 0
              rec.dirty = false
              rec.nextScanAt = now + esp_rescan.Value
            end

            local inDist = true
            if me and rec.root then
              inDist = ((rec.root.Position - me.Position).Magnitude <= esp_maxdist.Value)
            end

            local cnt = rec.count or 0
            local col = (cnt>=3 and COLOR_OK) or (cnt>=1 and COLOR_LO) or COLOR_NO
            local passOnly = (not esp_only_full.Value) or (cnt>=3)

            if rec.tl then
              rec.tl.Text = ("God Set %d/3"):format(cnt)
              rec.tl.TextColor3 = col
            end
            if rec.bb then rec.bb.Enabled = esp_showlabel.Value and inDist and passOnly end
            if rec.hl then
              rec.hl.OutlineColor = col
              rec.hl.Enabled = (cnt>=3 and esp_highlight.Value and inDist)
            end
          end
        end
        task.wait(esp_tick.Value)
      end
    end
  end)
end

local function stop()
  if M.loop then task.cancel(M.loop) M.loop=nil end
  if M.add then M.add:Disconnect() M.add=nil end
  if M.rem then M.rem:Disconnect() M.rem=nil end
  for p,_ in pairs(M.map) do detach(p) end
end

esp_enable:OnChanged(function(v) if v then start() else stop() end end)
if esp_enable.Value then start() end
-- ========= [ /TAB: ESP  14 God Set ] =========



-- === Combat compact (INLINE, with TAB, namespaced, UIS-safe, nil-safe, X2-only) ===
do
  -- deps
  local T,W,Lib = Tabs, Window, Library
  local RS      = RunService
  local PX      = packets
  local P,LP    = Players, Players.LocalPlayer

  -- UIS safe
  local UIS do
    local ok,svc = pcall(function() return game:GetService("UserInputService") end)
    UIS = ok and svc or UserInputService
  end

  -- D1CeC7C4C0D2Dc/C2C7DfD2Dc D2C0C1
  T.Combat = T.Combat or W:AddTab({ Title="Combat", Icon="axe" })
  local tab = T.Combat

  -- namespace C4CbDf UI-ID
  local NS = "ci_"
  local function ID(s) return NS..s end

  -- safe getters/setters
  local function V(x, d)
    if not x then return d end
    local ok,val = pcall(function() return x.Value end)
    if ok and val ~= nil then return val end
    return d
  end
  local function SV(x, v) if x and x.SetValue then pcall(function() x:SetValue(v) end) end end

  -- ==== UI (X2 ONLY) ====
  local ui = {}

  -- A0CdC8CcC0D6C8C8 (CeD1D2C0C2CbDfC5Cc  14 C8D1CfCeCbDcC7D3DeD2D1Df C2 x2)
  ui.anim_on  = tab:CreateToggle(ID("ka_anim_on"),{Title="Swing animation",Default=true})
  ui.anim_spd = tab:CreateSlider (ID("ka_anim_spd"),{Title="Anim speed",Min=0.4,Max=2.2,Rounding=2,Default=1.15})
  ui.blend    = tab:CreateSlider (ID("ka_blend_in"),{Title="Blend-in (s)",Min=0.00,Max=0.25,Rounding=2,Default=0.10})
  ui.min_gap  = tab:CreateSlider (ID("ka_min_gap"),{Title="Min gap (s)",Min=0.10,Max=1.00,Rounding=2,Default=0.10})
  ui.only_god = tab:CreateToggle(ID("ka_only_god"),{Title="Only with God Rock (ID 368)",Default=true})

  -- B2C0D0C3C5D2Db C4CbDf X2
  ui.x2_rng   = tab:CreateSlider (ID("x2_range"),  {Title="Range (studs)",Min=4,Max=40,Rounding=0,Default=14})
  ui.x2_tgt   = tab:CreateSlider (ID("x2_targets"),{Title="Max targets", Min=1,Max=8, Rounding=0,Default=3})
  ui.x2_skipfr= tab:CreateToggle(ID("x2_skip_friends"),{Title="X2: Skip Roblox friends",Default=true})

  -- X2 (C4C2CeC9CdCeC9 D3C4C0D0)
  ui.x2_auto    = tab:CreateToggle(ID("x2_auto"),   { Title="Auto x2", Default=false })
  ui.x2_delay   = tab:CreateSlider(ID("x2_delay"),  { Title="x2 delay (ms)", Min=60, Max=400, Rounding=0, Default=120 })
  ui.x2_jitter  = tab:CreateSlider(ID("x2_jitter"), { Title="x2 jitter (±ms)", Min=0, Max=40, Rounding=0, Default=10 })
  ui.x2_tick    = tab:CreateSlider(ID("x2_tick"),   { Title="x2 loop tick (s)", Min=0.10, Max=1.00, Rounding=2, Default=0.25 })

  if tab.CreateButton then
    tab:CreateButton({
      Title = "x2-B3A4A0B0 (D0C0C7CeC2Ce)",
      Callback = function()
        if V(ui.only_god,true) and not isGodRockEquipped() then return end
        local ids = collectTargets(V(ui.x2_rng,14), math.max(1, math.floor(V(ui.x2_tgt,3))))
        if #ids == 0 then return end
        if PX and PX.SwingTool and PX.SwingTool.send then pcall(function() PX.SwingTool.send(ids) end) end
        playSlashOnce()
        local ms = V(ui.x2_delay,120); local j = V(ui.x2_jitter,10); if j>0 then ms = ms + math.random(-j, j) end
        task.wait(math.max(ms,0)/1000)
        if PX and PX.SwingTool and PX.SwingTool.send then pcall(function() PX.SwingTool.send(ids) end) end
        playSlashOnce()
      end
    })
  end

  -- ==== helpers ====
  local function myRoot() local ch=LP.Character return ch and ch:FindFirstChild("HumanoidRootPart") or nil end
  local function isValidPart(p) return typeof(p)=="Instance" and p:IsA("BasePart") and p.Parent and p:IsDescendantOf(workspace) end
  local function ppOf(m) return m and (m.PrimaryPart or m:FindFirstChild("HumanoidRootPart") or m:FindFirstChildWhichIsA("BasePart")) end
  local function eidOfModel(m)
    if not m then return nil end
    if m.GetAttribute then local id=m:GetAttribute("EntityID"); if id then return id end end
    local p=m.Parent; for _=1,4 do if not p then break end; if p.GetAttribute then local id=p:GetAttribute("EntityID"); if id then return id end end; p=p.Parent end
    return nil
  end
  local function readIdFrom(inst)
    if not inst then return nil end
    if inst.GetAttribute then
      for _,k in ipairs({"ItemID","itemID","Id","id"}) do local v=inst:GetAttribute(k); local n=tonumber(v); if n then return n end end
    end
    if inst:IsA("NumberValue") or inst:IsA("IntValue") then return tonumber(inst.Value)
    elseif inst:IsA("StringValue") then return tonumber(inst.Value) end
  end
  local function currentWeapon()
    local ch=LP.Character; if not ch then return nil,nil end
    for _,t in ipairs(ch:GetChildren()) do
      if t:IsA("Tool") then
        local id=readIdFrom(t); if not id then for _,d in ipairs(t:GetDescendants()) do id=readIdFrom(d); if id then break end end end
        return t,id
      end
    end
    for _,d in ipairs(ch:GetDescendants()) do
      local id=readIdFrom(d); if id then return d,id end
      local n=(d.Name or ""):lower(); if n:find("god",1,true) and n:find("rock",1,true) then return d,368 end
    end
    return nil,nil
  end
  function isGodRockEquipped()
    local inst,id=currentWeapon()
    if id==368 then return true,inst end
    if inst and inst.Name then local n=inst.Name:lower(); if n:find("god",1,true) and n:find("rock",1,true) then return true,inst end end
    return false,inst
  end

  -- ==== animation ====
  local animator, slashTrack
  local animAllow, swingBusy, queued = true, false, false
  local nextAllowedAt, animLenGuess = 0, 0.60
  local SLASH_ID = 10761451679

  local function myHum()
    local ch = LP.Character or LP.CharacterAdded:Wait()
    return ch:FindFirstChildOfClass("Humanoid") or ch:WaitForChild("Humanoid")
  end
  local function refreshAnimator()
    local h=myHum()
    animator = h:FindFirstChildOfClass("Animator") or Instance.new("Animator", h)
    slashTrack = nil
  end
  local function ensureSlashTrack(id)
    if not animator then refreshAnimator() end
    if animator and not slashTrack then
      local a=Instance.new("Animation"); a.AnimationId="rbxassetid://"..tostring(id or SLASH_ID)
      local ok; ok,slashTrack=pcall(function() return animator:LoadAnimation(a) end)
      if not ok then slashTrack=nil return end
      slashTrack.Priority=Enum.AnimationPriority.Action; slashTrack.Looped=false
    end
  end
  local function stopSlashSafe(fade) if slashTrack then pcall(function() slashTrack:Stop(fade or 0) end) end swingBusy=false queued=false end
  function playSlashOnce()
    if not V(ui.anim_on,true) or not animAllow then return end
    if V(ui.only_god,true) and not isGodRockEquipped() then stopSlashSafe(0) nextAllowedAt=tick() return end
    ensureSlashTrack(SLASH_ID); if not slashTrack then return end
    local now=tick(); if now<nextAllowedAt or swingBusy then queued=true return end
    swingBusy=true; queued=false
    pcall(function() slashTrack:Play(V(ui.blend,0.10),1,V(ui.anim_spd,1.15)) end)
    task.defer(function() if slashTrack then local len=tonumber(slashTrack.Length); if len and len>0.01 then animLenGuess=len/math.max(V(ui.anim_spd,1.15),0.01) end end end)
    nextAllowedAt = now + math.max(V(ui.min_gap,0.10), animLenGuess*0.70)
    slashTrack.Stopped:Once(function()
      swingBusy=false
      if queued and animAllow and V(ui.anim_on,true) then
        queued=false
        local t=tick(); if t<nextAllowedAt then task.delay(nextAllowedAt-t,playSlashOnce) else playSlashOnce() end
      end
    end)
  end
  LP.CharacterAdded:Connect(function() task.defer(function() animAllow=false; stopSlashSafe(0); refreshAnimator(); task.wait(0.05); animAllow=true end) end)
  ui.anim_on:OnChanged(function(v) animAllow=v; if not v then stopSlashSafe(0.06) end end)
  ui.anim_spd:OnChanged(function(v) if slashTrack and slashTrack.IsPlaying then pcall(function() slashTrack:AdjustSpeed(v) end) end end)

  -- ==== target select (for X2) ====
  function collectTargets(rng,k)
    local r=myRoot(); if not isValidPart(r) then return {} end
    local out={} local pf=workspace:FindFirstChild("Players")
    if pf then
      for _,m in ipairs(pf:GetChildren()) do
        if m.Name~=LP.Name then
          if not (V(ui.x2_skipfr,true) and isFriendByModelName and isFriendByModelName(m.Name)) then
            local pp=ppOf(m)
            if isValidPart(pp) then
              local d=(pp.Position-r.Position).Magnitude
              if d<=rng then local id=eidOfModel(m); if id then out[#out+1]={id=id,d=d} end end
            end
          end
        end
      end
    end
    table.sort(out,function(a,b) return a.d<b.d end)
    local t={} for i=1,math.min(k,#out) do t[#t+1]=out[i].id end
    return t
  end

  -- ====== X2 logic (inline, uses PX.SwingTool) ======
  local x2Conn, lastX2 = nil, 0
  local function x2Once()
    if V(ui.only_god,true) and not isGodRockEquipped() then return end
    local ids = collectTargets(V(ui.x2_rng,14), math.max(1, math.floor(V(ui.x2_tgt,3))))
    if #ids == 0 then return end
    if PX and PX.SwingTool and PX.SwingTool.send then pcall(function() PX.SwingTool.send(ids) end) end
    playSlashOnce()
    local ms = V(ui.x2_delay,120); local j = V(ui.x2_jitter,10); if j>0 then ms = ms + math.random(-j, j) end
    task.wait(math.max(ms,0)/1000)
    if PX and PX.SwingTool and PX.SwingTool.send then pcall(function() PX.SwingTool.send(ids) end) end
    playSlashOnce()
  end

  local function startX2()
    if x2Conn then return end
    x2Conn = RS.Heartbeat:Connect(function()
      if not V(ui.x2_auto,false) then return end
      local now = tick()
      if now - lastX2 >= V(ui.x2_tick,0.25) then
        lastX2 = now
        x2Once()
      end
    end)
  end
  local function stopX2() if x2Conn then x2Conn:Disconnect() x2Conn=nil end end
  ui.x2_auto:OnChanged(function(v) if v then startX2() else stopX2() end end)
  if V(ui.x2_auto,false) then startX2() end
  -- ====== /X2 logic ======

  -- ==== FULL(3/3) detector (fix) ====
  local function countGodPiecesSafe(model)
    if typeof(countGodPieces)=="function" then
      local ok,n=pcall(countGodPieces,model); if ok and type(n)=="number" then return n end
    end
    if type(nameMatch)=="function" and type(GOD_MATCH)=="table" then
      local b={halo=false,chest=false,legs=false}
      for _,d in ipairs(model:GetDescendants()) do
        local nm=d.Name
        if not b.halo  and nameMatch(nm, GOD_MATCH.halo)  then b.halo=true end
        if not b.chest and nameMatch(nm, GOD_MATCH.chest) then b.chest=true end
        if not b.legs  and nameMatch(nm, GOD_MATCH.legs)  then b.legs=true end
        if b.halo and b.chest and b.legs then break end
      end
      return (b.halo and 1 or 0)+(b.chest and 1 or 0)+(b.legs and 1 or 0)
    end
    return 3
  end

  -- ==== FOLLOW (fly) ==== (CeD1D2C0C2CbC5CdCe C1C5C7 C8C7CcC5CdC5CdC8C9)
  ui.f_on     = tab:CreateToggle(ID("follow_on"),{Title="Follow nearest player (FLY)",Default=false})
  ui.f_rng    = tab:CreateSlider (ID("follow_range"),{Title="Search range (studs)",Min=10,Max=400,Rounding=0,Default=160})
  ui.f_face   = tab:CreateToggle(ID("follow_face"),{Title="Face target",Default=true})
  ui.f_skipfr = tab:CreateToggle(ID("follow_skip_friends"),{Title="Skip Roblox friends",Default=true})

  ui.f_push   = tab:CreateSlider (ID("fly_inside_push"),{Title="Push inside (studs)",Min=0.0,Max=4.0,Rounding=1,Default=1.2})
  ui.f_yofs   = tab:CreateSlider (ID("fly_y_offset"),{Title="Height offset (studs)",Min=-6,Max=6,Rounding=1,Default=0})
  ui.f_lead   = tab:CreateSlider (ID("fly_lead"),{Title="Predict lead (studs)",Min=0,Max=12,Rounding=1,Default=2})
  ui.f_force  = tab:CreateSlider (ID("fly_force"),{Title="MaxForce (×1e8)",Min=1,Max=20,Rounding=1,Default=8})
  ui.f_resp   = tab:CreateSlider (ID("fly_resp"),{Title="Responsiveness",Min=10,Max=300,Rounding=0,Default=160})

  ui.f_only   = tab:CreateToggle(ID("follow_only_full"),{Title="Only FULL God set (3/3)",Default=true})
  ui.f_pref   = tab:CreateToggle(ID("follow_prefer_full"),{Title="Prefer FULL if available",Default=true})

  local F={ap=nil,ao=nil,att=nil,rp=nil}
  local function _clear(rp)
    if not rp then return end
    for _,o in ipairs(rp:GetChildren()) do
      if (o:IsA("AlignPosition") and o.Name=="_KA_FLY_AP")
      or (o:IsA("AlignOrientation") and o.Name=="_KA_FLY_AO")
      or (o:IsA("Attachment") and o.Name=="_KA_FLY_ATT") then o:Destroy() end
    end
  end
  local function ensureForces()
    local ch=LP.Character; if not ch then return end
    local rp=ch:FindFirstChild("HumanoidRootPart"); if not isValidPart(rp) then return end
    if (not F.ap) or (not F.ao) or (not F.att) or (F.rp~=rp) then
      _clear(rp)
      local att=Instance.new("Attachment"); att.Name="_KA_FLY_ATT"; att.Parent=rp

      local ap=Instance.new("AlignPosition");  ap.Name="_KA_FLY_AP"
      ap.Mode=Enum.PositionAlignmentMode.OneAttachment
      ap.Attachment0=att; ap.MaxForce=0; ap.Responsiveness=160; ap.RigidityEnabled=true; ap.Parent=rp

      local ao=Instance.new("AlignOrientation"); ao.Name="_KA_FLY_AO"
      ao.Mode=Enum.OrientationAlignmentMode.OneAttachment
      ao.Attachment0=att; ao.MaxTorque=0; ao.Responsiveness=160; ao.RigidityEnabled=true; ao.Parent=rp

      F.ap,F.ao,F.att,F.rp=ap,ao,att,rp
    end
    if not (F.ap and F.ao and F.att) then return end
    local power = V(ui.f_force,8) * 1e8
    F.ap.MaxForce       = power
    F.ap.Responsiveness = V(ui.f_resp,160)
    F.ao.MaxTorque      = power
    F.ao.Responsiveness = math.max(40, V(ui.f_resp,160))
    return F.ap,F.ao,F.att,F.rp
  end
  local function purge() local rp=myRoot(); _clear(rp); F.ap,F.ao,F.att,F.rp=nil,nil,nil,nil end
  LP.CharacterAdded:Connect(function() task.defer(purge) end)

  local function nearestWithin(rng)
    local r=myRoot(); if not isValidPart(r) then return nil,nil end
    local pf=workspace:FindFirstChild("Players"); if not pf then return nil,nil end
    local best_any,bestD_any,best_full,bestD_full
    for _,m in ipairs(pf:GetChildren()) do
      if m:IsA("Model") and m.Name~=LP.Name then
        if not (V(ui.f_skipfr,true) and isFriendByModelName and isFriendByModelName(m.Name)) then
          local pp=ppOf(m)
          if isValidPart(pp) then
            local d=(pp.Position-r.Position).Magnitude
            if d<=rng then
              local pz=countGodPiecesSafe(m)
              if pz>=3 then if (not bestD_full) or d<bestD_full then best_full,bestD_full=pp,d end end
              if (not bestD_any) or d<bestD_any then best_any,bestD_any=pp,d end
            end
          end
        end
      end
    end
    if V(ui.f_only,true) then return best_full,bestD_full end
    if V(ui.f_pref,true) and best_full then return best_full,bestD_full end
    return best_any,bestD_any
  end

  local fConn, lastPickAt, cur
  local function startFollow()
    if fConn then return end
    fConn = RS.Heartbeat:Connect(function()
      if not V(ui.f_on,false) then return end
      local now=tick()
      if (not isValidPart(cur)) or (now-(lastPickAt or 0) >= 0.18) then cur,_ = nearestWithin(V(ui.f_rng,160)); lastPickAt=now end
      if not isValidPart(cur) then return end
      local ap,ao,att,rp=ensureForces(); if not (ap and ao and att and isValidPart(rp)) then return end
      local v = cur.AssemblyLinearVelocity; if typeof(v)~="Vector3" then v = Vector3.new() end
      local lead = (v.Magnitude>0.1) and v.Unit*(V(ui.f_lead,2)) or Vector3.new()
      local base = cur.Position + lead + Vector3.new(0, V(ui.f_yofs,0), 0)
      local me = rp.Position
      local dir = base - me
      if dir.Magnitude > 0.001 then base = base - dir.Unit * (V(ui.f_push,1.2) or 0) end
      ap.Position = base
      ao.CFrame  = V(ui.f_face,true) and CFrame.lookAt(me, Vector3.new(cur.Position.X, me.Y, cur.Position.Z)) or rp.CFrame
    end)
  end
  local function stopFollow() if fConn then fConn:Disconnect() fConn=nil end purge() cur=nil end
  ui.f_on:OnChanged(function(v) if v then startFollow() else stopFollow() end end)
  if V(ui.f_on,false) then startFollow() end

  -- ==== Follow keybind (N) ====
  if _G.__combat_inline_kb then pcall(function() _G.__combat_inline_kb:Disconnect() end) end
  local _key, _arm, _last = Enum.KeyCode.N, false, 0
  local lbl = tab:AddInput(ID("follow_key_label"),{Title="Follow key",Default=_key.Name,Numeric=false,Finished=false})
  lbl:OnChanged(function(v)
    local kc = (_G._parseKeyName and _G._parseKeyName(v)) or (function(txt)
      txt = tostring(txt or ""):upper():gsub("%s+","")
      for _,k2 in ipairs(Enum.KeyCode:GetEnumItems()) do if k2.Name:upper()==txt then return k2 end end
      return Enum.KeyCode.Unknown
    end)(v)
    if kc and kc~=Enum.KeyCode.Unknown then _key=kc end
  end)
  tab:CreateButton({Title="Rebind Follow (click, then press key)", Callback=function() _arm=true; Lib:Notify({Title="Follow",Content="Press a key (Esc = cancel)",Duration=3}) end})

  if UIS then
    _G.__combat_inline_kb = UIS.InputBegan:Connect(function(i,gp)
      if gp or i.UserInputType~=Enum.UserInputType.Keyboard then return end
      if _arm then
        if i.KeyCode==Enum.KeyCode.Escape then _arm=false Lib:Notify({Title="Follow",Content="Rebind canceled",Duration=1.3}) return end
        if i.KeyCode~=Enum.KeyCode.Unknown then _key=i.KeyCode; pcall(function() lbl:SetValue(_key.Name) end); _arm=false; Lib:Notify({Title="Follow",Content=("Bound to %s"):format(_key.Name),Duration=1.5}) end
        return
      end
      if V(ui.f_bind_on,true) and i.KeyCode==_key then
        local now=tick()
        local cd = V(ui.f_bind_cd,0.2)
        if now-_last >= cd then
          _last=now
          local nv = not V(ui.f_on,false); SV(ui.f_on,nv); if not nv then stopFollow() end
          Lib:Notify({Title="Follow",Content=nv and "ON" or "OFF",Duration=1.2})
        end
      end
    end)
  end
end
-- === /Combat INLINE (X2-only) ===



-- === GodTrap compact (INLINE) ===
do
  local W,T,Lib = Window, Tabs, Library
  local PX = packets
  local P  = game:GetService("Players")
  local UI = game:GetService("UserInputService")
  local LP = P.LocalPlayer
  local M  = LP:GetMouse()

  local tab = T.GodTrap or W:AddTab({ Title = "God Trap", Icon = "shield" })
  local ui, ROW, state, U = {}, {}, {}, {}

  ui.only_full     = tab:CreateToggle("gt_onlyfull",     { Title="Only FULL God set (3/3)", Default=true })
  ui.only_alive    = tab:CreateToggle("gt_alive",        { Title="Only alive humanoids",    Default=true })
  ui.range         = tab:CreateSlider ("gt_range",       { Title="Max range (studs)", Min=10, Max=250, Rounding=0, Default=70 })
  ui.snap          = tab:CreateToggle("gt_snap",         { Title="Snap to ground",          Default=true })
  ui.allow_ground  = tab:CreateToggle("gt_allow_ground", { Title="If no target: place at mouse ground", Default=true })
  ui.lead          = tab:CreateSlider ("gt_lead",        { Title="Lead (studs)", Min=0, Max=12, Rounding=1, Default=1.5 })
  ui.yaw           = tab:CreateSlider ("gt_yaw",         { Title="Yaw (deg)",   Min=0, Max=359, Rounding=0, Default=0 })
  ui.yofs          = tab:CreateSlider ("gt_yofs",        { Title="Height offset", Min=-3, Max=8, Rounding=1, Default=0 })
  ui.debug         = tab:CreateToggle("gt_debug",        { Title="Debug prints (F9)", Default=false })

  tab:CreateParagraph("gt_sep", { Title="Manual hotkeys", Content="Per-structure toggles & binds" })

  local STRUCTS = {
    { "Big Ol' Hut", Enum.KeyCode.G, 0.15 },
    { "Iron Wall",   Enum.KeyCode.H, 0.15 },
    { "God Hut",     Enum.KeyCode.J, 0.15 },
    { "Ladder",      Enum.KeyCode.K, 0.15 },
    { "Chest",       Enum.KeyCode.L, 0.15 },
  }
  for _,it in ipairs(STRUCTS) do state[it[1]] = { enabled=(it[1]=="Big Ol' Hut"), key=it[2], cd=it[3], lastAt=0 } end

  local function parseKey(s)
    if type(_G._parseKeyName)=="function" then return _G._parseKeyName(s) end
    s=tostring(s or ""):gsub("%s+",""); return Enum.KeyCode[s] or Enum.KeyCode.Unknown
  end
  local function myRoot() local ch=LP.Character return ch and ch:FindFirstChild("HumanoidRootPart") or nil end
  local function countGodPieces(model)
    if type(_G.countGodPieces)=="function" then local ok,n=pcall(_G.countGodPieces, model); if ok and type(n)=="number" then return n end end
    local MATCH={halo={"God Halo","Halo"},chest={"God Chestplate","Chestplate","God Armor","Armor"},legs={"God Legs","Legs","Greaves"}}
    local function hit(nm,list) nm=string.lower(tostring(nm or "")); for _,v in ipairs(list) do if nm:find(string.lower(v),1,true) then return true end end end
    local b={halo=false,chest=false,legs=false}
    for _,d in ipairs(model:GetDescendants()) do local n=d.Name
      if not b.halo  and hit(n,MATCH.halo)  then b.halo=true end
      if not b.chest and hit(n,MATCH.chest) then b.chest=true end
      if not b.legs  and hit(n,MATCH.legs)  then b.legs=true end
    end
    return (b.halo and 1 or 0)+(b.chest and 1 or 0)+(b.legs and 1 or 0)
  end
  local function modelFromPart(p)
    while p and p~=workspace do
      if p:IsA("Model") and (p:FindFirstChildOfClass("Humanoid") or p:FindFirstChild("HumanoidRootPart")) then return p end
      p=p.Parent
    end
    return nil
  end
  local function inRange(model,maxd)
    local r=myRoot(); if not r then return false end
    local hrp=model:FindFirstChild("HumanoidRootPart") or model:FindFirstChildWhichIsA("BasePart")
    if not hrp then return false end
    return ((hrp.Position-r.Position).Magnitude<=maxd), hrp
  end
  local function snap(pos)
    if not ui.snap.Value then return pos end
    local rp=RaycastParams.new(); rp.FilterType=Enum.RaycastFilterType.Exclude; rp.FilterDescendantsInstances={LP.Character}
    local hit=workspace:Raycast(pos+Vector3.new(0,20,0), Vector3.new(0,-250,0), rp)
    return (hit and hit.Position) and Vector3.new(pos.X, hit.Position.Y+0.1, pos.Z) or pos
  end
  local function place(name, position, yaw)
    if not (PX and PX.PlaceStructure and PX.PlaceStructure.send) then if ui.debug.Value then print("[GTrap] packets missing") end return false end
    local pos=snap(position+Vector3.new(0,ui.yofs.Value,0))
    local ok=pcall(function() PX.PlaceStructure.send{ buildingName=name, yrot=math.floor((yaw or 0)+0.5), vec=pos, isMobile=false } end)
    if ui.debug.Value then print(("[GTrap] '%s' @ (%.1f, %.1f, %.1f) yaw=%d ok=%s"):format(name,pos.X,pos.Y,pos.Z, math.floor((yaw or 0)+0.5), tostring(ok))) end
    return ok
  end
  local function tryOnModel(name, model)
    if not model then return false end
    if ui.only_alive.Value then local h=model:FindFirstChildOfClass("Humanoid"); if not (h and h.Health>0) then return false end end
    local okR,hrp=inRange(model, ui.range.Value); if not (okR and hrp) then return false end
    if ui.only_full.Value and countGodPieces(model)<3 then return false end
    local lead=Vector3.zero; local v=hrp.AssemblyLinearVelocity; if v and v.Magnitude>0.1 then lead=v.Unit*(ui.lead.Value or 0) end
    return place(name, hrp.Position+lead, ui.yaw.Value)
  end
  local function tryAtMouse(name) return (M.Hit and place(name, M.Hit.Position, ui.yaw.Value)) or false end

  local awaiting
  local function mkRow(it)
    local n=it[1]
    local box     = tab:CreateToggle("gt_en_"..n, { Title="Enable: "..n, Default=state[n].enabled })
    local keyShow = tab:AddInput   ("gt_key_"..n, { Title="Key", Default=state[n].key.Name, Numeric=false, Finished=false })
    local cdSld   = tab:CreateSlider("gt_cd_"..n, { Title="Cooldown (s)", Min=0.05, Max=0.8, Rounding=2, Default=state[n].cd })
    tab:CreateButton({ Title="Rebind "..n.." (click, then press key)", Callback=function()
      awaiting=n; Library:Notify({Title="God Trap", Content="Press a key for "..n.." (Esc to cancel)", Duration=3})
    end })
    keyShow:OnChanged(function(v) local kc=parseKey(v); if kc and kc~=Enum.KeyCode.Unknown then state[n].key=kc end end)
    box:OnChanged(function(v) state[n].enabled=v end)
    cdSld:OnChanged(function(v) state[n].cd=v end)
    ROW[n]={keyShow=keyShow, enable=box, cd=cdSld}
  end
  for _,it in ipairs(STRUCTS) do mkRow(it) end

  UI.InputBegan:Connect(function(input,gp)
    if gp then return end
    if awaiting and input.UserInputType==Enum.UserInputType.Keyboard then
      if input.KeyCode==Enum.KeyCode.Escape then awaiting=nil Library:Notify({Title="God Trap",Content="Rebind canceled",Duration=2}) return end
      if input.KeyCode~=Enum.KeyCode.Unknown then
        state[awaiting].key=input.KeyCode; pcall(function() ROW[awaiting].keyShow:SetValue(input.KeyCode.Name) end)
        Library:Notify({Title="God Trap",Content=("Bound %s to %s"):format(awaiting, input.KeyCode.Name),Duration=2})
        awaiting=nil
      end
      return
    end
    if input.UserInputType==Enum.UserInputType.Keyboard then
      for name,st in pairs(state) do
        if st.enabled and input.KeyCode==st.key then
          local now=tick(); if now-st.lastAt<st.cd then if ui.debug.Value then print("[GTrap] cooldown "..name) end return end
          local mdl=modelFromPart(M.Target); local ok=tryOnModel(name, mdl); if (not ok) and ui.allow_ground.Value then ok=tryAtMouse(name) end
          if ok then st.lastAt=now end
          break
        end
      end
    end
  end)

  tab:CreateParagraph("gt_auto_sep", { Title="Auto mode", Content="Nearest God-set target" })
  ui.auto_on    = tab:CreateToggle ("gt_auto_on", { Title="Auto place", Default=false })
  ui.auto_build = tab:CreateDropdown("gt_auto_build", { Title="Auto structure",
    Values=(function() local t={} for _,it in ipairs(STRUCTS) do t[#t+1]=it[1] end return t end)(),
    Default="Big Ol' Hut" })
  ui.auto_cd    = tab:CreateSlider ("gt_auto_cd", { Title="Auto cooldown (s)", Min=0.10, Max=1.00, Rounding=2, Default=0.25 })

  task.spawn(function()
    while true do
      if ui.auto_on.Value then
        local meR=myRoot()
        if meR then
          local pf=workspace:FindFirstChild("Players")
          local bestHRP,bestD
          if pf then
            for _,m in ipairs(pf:GetChildren()) do
              if m:IsA("Model") and m.Name~=LP.Name then
                local okR,hrp=inRange(m, ui.range.Value)
                if okR and hrp then
                  local alive=true; if ui.only_alive.Value then local h=m:FindFirstChildOfClass("Humanoid"); alive=h and h.Health>0 end
                  local okPieces=(not ui.only_full.Value) or countGodPieces(m)>=3
                  if alive and okPieces then
                    local d=(hrp.Position-meR.Position).Magnitude
                    if (not bestD) or d<bestD then bestHRP,bestD=hrp,d end
                  end
                end
              end
            end
          end
          if bestHRP then
            local lead=Vector3.zero; local v=bestHRP.AssemblyLinearVelocity; if v and v.Magnitude>0.1 then lead=v.Unit*(ui.lead.Value or 0) end
            place(ui.auto_build.Value or "Big Ol' Hut", bestHRP.Position+lead, ui.yaw.Value)
          end
        end
        task.wait(ui.auto_cd.Value)
      else
        task.wait(0.15)
      end
    end
  end)
end
-- === /GodTrap INLINE ===


-- === Heal compact (INLINE) ===
do
  local Tab = Window:AddTab({ Title = "Heal", Icon = "heart" })
  local ui = {}

  ui.toggle = Tab:CreateToggle("heal_auto", { Title = "Auto Heal", Default = false })
  ui.item   = Tab:CreateDropdown("heal_item", {
      Title="Item to use",
      Values={ "Bloodfruit","Bluefruit","Berry","Strawberry","Coconut","Apple","Lemon","Orange","Banana" },
      Default="Bloodfruit"
  })

  ui.min    = Tab:CreateSlider("heal_min",  { Title="Heal when HP below (%)", Min=1, Max=99,  Rounding=0, Default=70 })
  ui.max    = Tab:CreateSlider("heal_max",  { Title="Stop when HP reaches (%)", Min=2, Max=100, Rounding=0, Default=90 })

  ui.hb     = Tab:CreateToggle("heal_hb",   { Title="Use Heartbeat pacing", Default=true })
  ui.cd     = Tab:CreateSlider("heal_cd",   { Title="Per-bite delay (s)", Min=0.00, Max=0.30, Rounding=2, Default=0.02 })
  ui.tick   = Tab:CreateSlider("heal_tick", { Title="Check interval (s) [timer mode]", Min=0.00, Max=0.20, Rounding=2, Default=0.01 })

  ui.pause  = Tab:CreateSlider("heal_cycle_pause", { Title="Pause after full heal cycle (s)", Min=0.50, Max=10.00, Rounding=2, Default=3.00 })

  ui.od     = Tab:CreateToggle("heal_overdrive", { Title="Overdrive (aggressive bursts)", Default=true })
  ui.burst  = Tab:CreateSlider("heal_burst",     { Title="Bites per burst", Min=1, Max=8, Rounding=0, Default=3 })
  ui.yieldn = Tab:CreateSlider("heal_yield_n",   { Title="Yield every N bites (avoid lag)", Min=1, Max=20, Rounding=0, Default=6 })

  ui.debug  = Tab:CreateToggle("heal_debug", { Title="Debug logs (F9)", Default=false })

  -- helpers (CbCeCaC0CbDcCdDbC5 C2CdD3D2D0C8 C1CbCeCaC0)
  local function hpPct()
    if not hum or hum.MaxHealth == 0 then return 100 end
    return math.clamp((hum.Health / hum.MaxHealth) * 100, 0, 100)
  end

  local function clampBand()
    if ui.min.Value >= ui.max.Value then
      ui.min:SetValue( (ui.max.Value < 100) and (ui.max.Value - 1) or 99 )
    end
  end
  ui.min:OnChanged(clampBand)
  ui.max:OnChanged(clampBand)

  local function now() return (typeof(time)=="function" and time()) or os.clock() end

  local function biteOnce(it)
    local slot = getSlotByName and getSlotByName(it)
    return (slot ~= nil and consumeBySlot and consumeBySlot(slot))
        or (getItemIdByName and consumeById and consumeById(getItemIdByName(it)))
        or false
  end

  local lastAt, busy = 0, false
  local function runCycle()
    busy = true
    local item   = ui.item.Value or "Bloodfruit"
    local target = math.clamp(ui.max.Value, ui.min.Value + 1, 100)
    local maxB, total = 120, 0

    if ui.debug.Value then
      print(("[AutoHeal] start: hp=%.1f -> %.1f pause=%.2fs overdrive=%s burst=%d")
        :format(hpPct(), target, (ui.pause.Value or 3), tostring(ui.od.Value), ui.burst.Value))
    end

    while hpPct() < target and maxB > 0 do
      local b = (ui.od.Value and math.max(1, math.floor(ui.burst.Value))) or 1
      for _=1,b do
        if hpPct() >= target or maxB <= 0 then break end
        if ui.debug.Value then print("[AutoHeal] bite ->", biteOnce(item)) else biteOnce(item) end
        total += 1; maxB -= 1
        if ui.od.Value then
          local n = math.max(1, math.floor(ui.yieldn.Value))
          if (total % n) == 0 then task.wait() end
        end
      end
      local d = math.max(0, ui.cd.Value)
      if d > 0 then task.wait(d) elseif not ui.od.Value then task.wait() end
    end

    lastAt, busy = now(), false
    if ui.debug.Value then
      print(("[AutoHeal] done (bites=%d); next after %.2fs"):format(total, (ui.pause.Value or 3)))
    end
  end

  -- Heartbeat D0C5C6C8Cc
  local hbConn
  local function stopHB() if hbConn then hbConn:Disconnect() hbConn=nil end end
  local function startHB()
    stopHB()
    hbConn = RunService.Heartbeat:Connect(function()
      if not (ui.toggle.Value and hum and hum.Parent) then return end
      if (now() - lastAt) >= (ui.pause.Value or 3) and (not busy) and hpPct() < ui.min.Value then
        task.spawn(runCycle)
      end
    end)
  end

  -- D2C0C9CcC5D0CdDbC9 D0C5C6C8Cc
  task.spawn(function()
    while true do
      if ui.toggle.Value and hum and hum.Parent and not ui.hb.Value then
        if (now() - lastAt) >= (ui.pause.Value or 3) and (not busy) and hpPct() < ui.min.Value then
          runCycle()
        end
        local dt = ui.tick.Value > 0 and ui.tick.Value or 0.01
        task.wait(dt)
      else
        task.wait(0.10)
      end
    end
  end)

  ui.toggle:OnChanged(function(v) if v and ui.hb.Value then startHB() else stopHB() end end)
  ui.hb:OnChanged(function(v) if ui.toggle.Value then if v then startHB() else stopHB() end end end)
end
-- === /Heal INLINE ===

-- === Movement (TAB, one-burst bind, CAS, + PERSISTENT keybind) ===
do
  local T,W,Lib = Tabs, Window, Library
  local RS      = RunService
  local P,LP    = Players, Players.LocalPlayer
  local UIS     = (pcall(function() return game:GetService("UserInputService") end) and game:GetService("UserInputService")) or nil
  local CAS     = game:GetService("ContextActionService")
  local Http    = game:GetService("HttpService")

  -- TAB
  T.Movement = T.Movement or W:AddTab({ Title="Movement", Icon="zap" })
  local tab = T.Movement

  -- utils
  local NS = "mv_"
  local function ID(s) return NS..s end
  local function V(x,d) local ok,v=pcall(function() return x.Value end); return (ok and v~=nil) and v or d end
  local function myChar() return LP.Character or LP.CharacterAdded:Wait() end
  local function myHum()  local ch=myChar(); return ch:FindFirstChildOfClass("Humanoid") or ch:WaitForChild("Humanoid") end
  local function myHRP()  local ch=LP.Character; return ch and ch:FindFirstChild("HumanoidRootPart") or nil end
  local function supportsJumpPower(h) local ok,val=pcall(function() return h.UseJumpPower end); return ok and (val~=nil) end

  -- fallback CfC0D0D1C5D0 CaCbC0C2C8D8C8
  _G._parseKeyName = _G._parseKeyName or function(txt)
    if typeof(txt)=="EnumItem" and txt.EnumType==Enum.KeyCode then return txt end
    txt = tostring(txt or ""):upper():gsub("%s+","")
    for _,kc in ipairs(Enum.KeyCode:GetEnumItems()) do if kc.Name:upper()==txt then return kc end end
    return Enum.KeyCode.Unknown
  end

  -- ==== UI: Speed ====
  local sp_on  = tab:CreateToggle(ID("speed_on"), { Title="Speed: override WalkSpeed", Default=false })
  local sp_val = tab:CreateSlider (ID("speed_val"),{ Title="WalkSpeed", Min=8, Max=200, Rounding=0, Default=24 })

  -- ==== UI: Jump (CfC5D0CcC0CdC5CdD2) ====
  local jp_on   = tab:CreateToggle(ID("jump_on"),    { Title="Jump: override JumpPower/Height", Default=false })
  local jp_mode = tab:CreateDropdown(ID("jump_mode"),{ Title="Mode", Values={"JumpPower","JumpHeight"}, Default="JumpPower" })
  local jp_pow  = tab:CreateSlider (ID("jump_power"),{ Title="JumpPower",  Min=0, Max=300, Rounding=0, Default=60 })
  local jp_hgt  = tab:CreateSlider (ID("jump_height"),{ Title="JumpHeight", Min=0, Max=50,  Rounding=1, Default=7.2 })

  tab:CreateParagraph(ID("sep_hj"), { Title="High Jump (Burst)", Content="AdC0C6C0D2C8C5 C1C8CdC4C0 = C2DbD1CeCaC8C9 CfD0DbC6CeCa. B0C5C1C8CdC4  14 CaC0Ca C2 Combat. A1C8CdC4 D1CeD5D0C0CdDfC5D2D1Df CcC5C6C4D3 CfC5D0C5C7C0D5CeC4C0CcC8." })

  -- ==== High Jump: CeC4C8Cd C1C8CdC4 (BURST) ====
  local hj_enable = tab:CreateToggle(ID("hj_enable"), { Title="Enable High Jump keybind", Default=true })
  local hj_cd     = tab:CreateSlider (ID("hj_cd"),    { Title="Cooldown (s)", Min=0.10, Max=2.00, Rounding=2, Default=0.60 })
  local hj_dur    = tab:CreateSlider (ID("hj_dur"),   { Title="Boost duration (s)", Min=0.05, Max=0.60, Rounding=2, Default=0.18 })
  local hj_pow    = tab:CreateSlider (ID("hj_pow"),   { Title="Boost JumpPower", Min=50, Max=300, Rounding=0, Default=120 })
  local hj_hgt    = tab:CreateSlider (ID("hj_hgt"),   { Title="Boost JumpHeight", Min=8, Max=40, Rounding=1, Default=16.0 })

  -- C7C0D0C0CdC5C5 CeC1DaDfC2C8Cc D4D3CdCaD6C8C8, D7D2CeC1Db CaCeCbCbC1C5CaC8 CdC5 C7C2C0CbC8 nil
  local function _save() end
  local function _bindHJ() end

  -- CfCeCbC5 + CaCdCeCfCaC0 D0C5C1C8CdC4C0
  local _keyHJ, _armHJ, _lastHJ = Enum.KeyCode.H, false, 0
  local lbl_hj = tab:AddInput(ID("hj_label"), { Title="High Jump key", Default=_keyHJ.Name, Numeric=false, Finished=false })
  lbl_hj:OnChanged(function(v)
    local kc=_G._parseKeyName(v)
    if kc and kc~=Enum.KeyCode.Unknown then _keyHJ=kc; _save(); _bindHJ() end
  end)
  tab:CreateButton({
    Title="Rebind High Jump (click, then press key)",
    Callback=function() _armHJ=true; Library:Notify({Title="Movement",Content="Press a key for High Jump (Esc = cancel)",Duration=3}) end
  })

  -- ------------------------------------------------------------
  -- [PERSISTENCE]
  -- ------------------------------------------------------------
  local CFG_DIR  = "MyHub"
  local CFG_FILE = "MyHub/movement.json"

  local _exists = isfile or function(p) return (pcall(function() return readfile(p) end)) end
  local _read   = readfile or (function(p) local ok,dat=pcall(function() return syn and syn.readfile and syn.readfile(p) end); return ok and dat or nil end)
  local _write  = writefile or (function(p,dat) if syn and syn.writefile then syn.writefile(p,dat) end end)
  local _mkfld  = makefolder or (function(n) if syn and syn.makefolder then syn.makefolder(n) end end)

  function _save()
    pcall(function() if not _exists(CFG_DIR) then _mkfld(CFG_DIR) end end)
    local data = { key = _keyHJ and _keyHJ.Name or "H" }
    local json = Http:JSONEncode(data)
    pcall(function() _write(CFG_FILE, json) end)
  end

  local function _load()
    local ok,raw = pcall(function() return _exists(CFG_FILE) and _read(CFG_FILE) or nil end)
    if not ok or not raw or raw=="" then return end
    local ok2, t = pcall(function() return Http:JSONDecode(raw) end)
    if not ok2 or type(t)~="table" then return end
    if t.key then
      local kc = _G._parseKeyName(t.key)
      if kc and kc ~= Enum.KeyCode.Unknown then
        _keyHJ = kc
        pcall(function() lbl_hj:SetValue(_keyHJ.Name) end)
      end
    end
  end
  -- ------------------------------------------------------------

  -- ==== Enforcer ====
  local enforcerConn, humConn
  local boostUntil = 0

  local function useJumpPower(h)
    local want = (V(jp_mode,"JumpPower")=="JumpPower")
    if supportsJumpPower(h) then pcall(function() h.UseJumpPower = want end) end
    return want or not supportsJumpPower(h)
  end

  local function applyOnce(h)
    if not h then return end
    if V(sp_on,false) then pcall(function() h.WalkSpeed = V(sp_val,24) end) end
    if tick() < boostUntil then return end
    if V(jp_on,false) then
      local wantPower = useJumpPower(h)
      if wantPower then pcall(function() h.JumpPower  = V(jp_pow,60) end)
      else              pcall(function() h.JumpHeight = V(jp_hgt,7.2) end) end
    end
  end

  local function startEnforcer()
    if enforcerConn then enforcerConn:Disconnect() enforcerConn=nil end
    local h = myHum()
    if humConn then humConn:Disconnect() end
    humConn = h.AncestryChanged:Connect(function(_, parent) if not parent and enforcerConn then enforcerConn:Disconnect(); enforcerConn=nil end end)
    enforcerConn = RS.RenderStepped:Connect(function()
      if not (V(sp_on,false) or V(jp_on,false)) then return end
      applyOnce(h)
    end)
  end
  local function reevaluate()
    if V(sp_on,false) or V(jp_on,false) then startEnforcer() end
  end
  sp_on:OnChanged(reevaluate); sp_val:OnChanged(function() if enforcerConn then applyOnce(myHum()) end end)
  jp_on:OnChanged(reevaluate);  jp_mode:OnChanged(function() if enforcerConn then applyOnce(myHum()) end end)
  jp_pow:OnChanged(function() if enforcerConn then applyOnce(myHum()) end end)
  jp_hgt:OnChanged(function() if enforcerConn then applyOnce(myHum()) end end)
  if V(sp_on,false) or V(jp_on,false) then startEnforcer() end
  LP.CharacterAdded:Connect(function() task.defer(function() if enforcerConn then startEnforcer() end end) end)

  -- ==== B1C0Cc CfD0DbC6CeCa (Burst) ====
  local ACTION_HJ = "_MV_HJ_BURST_ONLY"
  local function forceJumpNow(h, impulseY)
    pcall(function() h:ChangeState(Enum.HumanoidStateType.Jumping) end)
    local hrp = myHRP()
    if hrp then
      local v = hrp.AssemblyLinearVelocity
      pcall(function() hrp.AssemblyLinearVelocity = Vector3.new(v.X, math.max(v.Y,0)+impulseY, v.Z) end)
    end
    pcall(function() h.Jump = true end)
  end
  local function doHighJump()
    if not V(hj_enable,true) then return end
    local now=tick()
    if now - _lastHJ < V(hj_cd,0.6) then return end
    _lastHJ = now
    local h = myHum()
    local wantPower = (V(jp_mode,"JumpPower")=="JumpPower") or not supportsJumpPower(h)
    boostUntil = now + V(hj_dur,0.18)
    if wantPower then
      pcall(function() h.UseJumpPower=true  h.JumpPower = V(hj_pow,120) end)
      forceJumpNow(h, 35)
    else
      pcall(function() h.UseJumpPower=false h.JumpHeight= V(hj_hgt,16.0) end)
      forceJumpNow(h, 35)
    end
    task.delay(V(hj_dur,0.18), function()
      if V(jp_on,false) then applyOnce(myHum()) end
    end)
  end

  -- ==== AfD0C8C2DfC7CaC0 C1C8CdC4C0 D7C5D0C5C7 CAS (D1 D4CeCbCbC1C5CaCeCc) ====
  local function bindAction(handler)
    if CAS.BindActionAtPriority then
      CAS:BindActionAtPriority(ACTION_HJ, handler, false, 2000, _keyHJ)
    else
      CAS:BindAction(ACTION_HJ, handler, false, _keyHJ) -- D4CeCbCbC1C5Ca C4CbDf D1D0C5C4 C1C5C7 BindActionAtPriority
    end
  end

  function _bindHJ()
    pcall(function() CAS:UnbindAction(ACTION_HJ) end)
    if not V(hj_enable,true) then return end
    bindAction(function(_,state,input)
      if state==Enum.UserInputState.Begin and input.KeyCode==_keyHJ then
        doHighJump()
        return Enum.ContextActionResult.Sink
      end
      return Enum.ContextActionResult.Pass
    end)
  end

  -- ==== B0C5C1C8CdC4  1cCaC0Ca C2 Combat 1d ====
  if UIS then
    if _G.__mv_kb then pcall(function() _G.__mv_kb:Disconnect() end) end
    _G.__mv_kb = UIS.InputBegan:Connect(function(i,gp)
      if gp or i.UserInputType ~= Enum.UserInputType.Keyboard then return end
      if _armHJ then
        if i.KeyCode==Enum.KeyCode.Escape then
          _armHJ=false; Library:Notify({Title="Movement",Content="Rebind canceled",Duration=1.2}); return
        end
        if i.KeyCode~=Enum.KeyCode.Unknown then
          _keyHJ = i.KeyCode
          pcall(function() lbl_hj:SetValue(_keyHJ.Name) end)
          _armHJ=false
          Library:Notify({Title="Movement",Content=("Bound High Jump to %s"):format(_keyHJ.Name),Duration=1.4})
          _save()
          _bindHJ()
        end
        return
      end
    end)
  end

  hj_enable:OnChanged(function() _save(); _bindHJ() end)

  -- C7C0C3D0D3C7CaC0 C8 C1C8CdC4C8CdC3
  _load()
  _bindHJ()
end
-- === /Movement (persistent keybind) ===


-- ========= [ Big/God Hut  14 D3C4C0CbC8D2Dc C4C2C5D0Dc CfCeD1CbC5 D1CfC0C2CdC0 ] =========
local function _lower(s) return string.lower(tostring(s or "")) end

local HUT_NAMES = { ["Big Ol' Hut"]=true, ["God Hut"]=true }

local function stripHutDoor(hutModel)
    if not (hutModel and hutModel:IsA("Model")) then return end
    local toKill = {}
    for _, d in ipairs(hutModel:GetDescendants()) do
        local n = _lower(d.Name)
        local isDoorPart   = d:IsA("BasePart")        and (n:find("door",1,true) or n:find("gate",1,true))
        local isDoorPrompt = d:IsA("ProximityPrompt") and (n:find("door",1,true) or n:find("open",1,true))
        local isHinge      = d:IsA("HingeConstraint") or (n:find("hinge",1,true) ~= nil)
        if isDoorPart or isDoorPrompt or isHinge then
            toKill[#toKill+1] = d
        end
    end
    for _, obj in ipairs(toKill) do
        pcall(function() obj:Destroy() end)
    end
end

local function processExistingHuts()
    local dep = workspace:FindFirstChild("Deployables")
    if not dep then return end
    for _, m in ipairs(dep:GetChildren()) do
        if m:IsA("Model") and HUT_NAMES[m.Name] then
            task.defer(function() stripHutDoor(m) end) -- C4C0D2Dc C4C5D2C0CbDfCc C4CeC3D0D3C7C8D2DcD1Df
        end
    end
end

local function hookFutureHuts()
    local dep = workspace:FindFirstChild("Deployables")
    if not dep then
        task.spawn(function()
            local t0 = os.clock()
            while not workspace:FindFirstChild("Deployables") and os.clock() - t0 < 10 do
                task.wait(0.2)
            end
            if workspace:FindFirstChild("Deployables") then hookFutureHuts() end
        end)
        return
    end
    dep.ChildAdded:Connect(function(m)
        if m:IsA("Model") and HUT_NAMES[m.Name] then
            task.defer(function() stripHutDoor(m) end)
        end
    end)
end

-- C7C0CfD3D1Ca
processExistingHuts()
hookFutureHuts()

-- ========== [ TAB: Teleport  14 persist + TP to nearest God (3/3) ] ==========
do
  local Players = game:GetService("Players")
  local okUIS, UIS = pcall(function() return game:GetService("UserInputService") end)
  UIS = okUIS and UIS or game:GetService("UserInputService")
  local LP = Players.LocalPlayer

  -- C2CaCbC0C4CaC0
  Tabs.Teleport = Tabs.Teleport or Window:AddTab({ Title = "Teleport", Icon = "crosshair" })
  local Tab = Tabs.Teleport

  -- C1C5C7CeCfC0D1CdDbC9 root
  local function getRoot()
    local ch = LP and LP.Character
    return ch and ch:FindFirstChild("HumanoidRootPart") or nil
  end

  -- notify
  local function notify(msg, dur)
    if Library and Library.Notify then
      Library:Notify({Title="Teleport", Content=tostring(msg), Duration=dur or 1.2})
    else
      print("[Teleport] "..tostring(msg))
    end
  end

  -- CbD3D7 CeD2 CaC0CcC5D0Db (C8D1CaCbDeD7C0C5Cc D1C5C1Df)
  local rayParams = RaycastParams.new()
  rayParams.FilterType = Enum.RaycastFilterType.Exclude
  rayParams.FilterDescendantsInstances = { LP and LP.Character }
  LP.CharacterAdded:Connect(function(ch)
    task.defer(function() rayParams.FilterDescendantsInstances = { ch } end)
  end)

  -- ===== GOD-set detector (CbCeCaC0CbDcCdDbC9, D0C0C1CeD2C0C5D2 C1C5C7 ESP) =====
  _G.GOD_MATCH = _G.GOD_MATCH or {
    halo = {"godhalo","halo"},
    chest= {"godchest","chest","chestplate","godarmor","armor"},
    legs = {"godlegs","legs","greaves"}
  }
  local GOD_MATCH = _G.GOD_MATCH

  local function _norm(s)
    s = tostring(s or ""):lower()
    s = s:gsub("[%s%p_]+","")
    return s
  end
  local function nameMatch(hay, list)
    local h = _norm(hay)
    for _,key in ipairs(list) do
      if h:find(_norm(key), 1, true) then return true end
    end
    return false
  end

  local function modelOfPlayer(p)
    if p.Character and p.Character.Parent then return p.Character end
    local wf = workspace:FindFirstChild("Players")
    if wf then
      local m = wf:FindFirstChild(p.Name)
      if m and m:IsA("Model") then return m end
    end
    for _,m in ipairs(workspace:GetChildren()) do
      if m:IsA("Model") and m.Name==p.Name then
        if m:FindFirstChildOfClass("Humanoid") or m:FindFirstChild("HumanoidRootPart") then
          return m
        end
      end
    end
    return nil
  end
  local function rootOf(model)
    return model:FindFirstChild("HumanoidRootPart")
        or model.PrimaryPart
        or model:FindFirstChildWhichIsA("BasePart")
  end

  local function recountGod(model)
    local got = { halo=false, chest=false, legs=false }
    local scanned = 0
    for _,d in ipairs(model:GetDescendants()) do
      scanned += 1
      local s = d.Name
      local par = d.Parent
      for _=1,2 do
        if not par then break end
        s = par.Name .. " " .. s
        par = par.Parent
      end
      if (not got.halo ) and nameMatch(s, GOD_MATCH.halo ) then got.halo  = true end
      if (not got.chest) and nameMatch(s, GOD_MATCH.chest) then got.chest = true end
      if (not got.legs ) and nameMatch(s, GOD_MATCH.legs ) then got.legs  = true end
      if got.halo and got.chest and got.legs then break end
      if scanned > 1500 then break end
    end
    local cnt = (got.halo and 1 or 0) + (got.chest and 1 or 0) + (got.legs and 1 or 0)
    return cnt
  end

  -- (CeCfD6C8CeCdC0CbDcCdCe) D4D3CdCaD6C8Df C4D0D3C7C5C9 Roblox, C5D1CbC8 D3 D2C5C1Df D3C6C5 C5D1D2Dc C3CbCeC1C0CbDcCdC0Df  14 CeCdC0 C1D3C4C5D2 C8D1CfCeCbDcC7CeC2C0CdC0
  local function isRobloxFriend(name)
    if typeof(isFriendByModelName)=="function" then
      local ok,res = pcall(isFriendByModelName, name)
      if ok then return res end
    end
    return false
  end

  local function nearestGodWithin(range, skipFriends)
    local me = getRoot(); if not me then return nil end
    local best, bestD, bestRoot = nil, nil, nil
    for _,p in ipairs(Players:GetPlayers()) do
      if p ~= LP then
        if not (skipFriends and isRobloxFriend(p.Name)) then
          local m = modelOfPlayer(p)
          if m then
            local cnt = 0
            local ok = pcall(function() cnt = recountGod(m) end)
            if ok and cnt >= 3 then
              local r = rootOf(m)
              if r then
                local d = (r.Position - me.Position).Magnitude
                if d <= range and (not bestD or d < bestD) then
                  best, bestD, bestRoot = p, d, r
                end
              end
            end
          end
        end
      end
    end
    return best, bestRoot, bestD
  end

  -- ===== D1CeD1D2CeDfCdC8C5 (D1 C0C2D2CeD1C5C9C2CeCc) =====
  local TP = {
    enabled  = true,
    key      = Enum.KeyCode.G,
    useMouse = false,
    yOffset  = 0.0,
    cooldown = 0.25,
    saved    = nil,     -- Vector3
    _last    = 0,
    _armRebind = false
  }

  -- ===== UI (CeD1CdCeC2CdCeC5) =====
  local tg_enable = Tab:CreateToggle("tp_enable",    { Title="Enable keybind TP", Default=true })
  local tg_mouse  = Tab:CreateToggle("tp_use_mouse", { Title="Use mouse ray", Default=false })
  local sl_yofs   = Tab:CreateSlider("tp_yofs",      { Title="Y offset (studs)", Min=-20, Max=20, Rounding=1, Default=0 })
  local sl_cd     = Tab:CreateSlider("tp_cd",        { Title="Cooldown (s)", Min=0.05, Max=2.0, Rounding=2, Default=0.25 })
  local inp_key   = Tab:CreateInput ("tp_key_lbl",   { Title="TP key", Default="G", Numeric=false, Finished=false })

  -- ===== UI (God-TP) =====
  local tg_god    = Tab:CreateToggle("tp_god_only",  { Title="TP to nearest God (3/3)", Default=false })
  local sl_grng   = Tab:CreateSlider("tp_god_range", { Title="Search range (studs)", Min=20, Max=2500, Rounding=0, Default=800 })
  local sl_gback  = Tab:CreateSlider("tp_god_back",  { Title="Behind offset (studs)", Min=2, Max=14, Rounding=1, Default=6 })
  local tg_gskip  = Tab:CreateToggle("tp_god_skipfr",{ Title="Skip Roblox friends", Default=true })

  -- «D1CaD0DbD2DbC5» CfCeCbDf C4CbDf C4D3C1CbDf CaCeCeD0C4C8CdC0D2 D2CeD7CaC8 (C4CbDf SaveManager)
  local hid_x = Tab:CreateSlider("tp_saved_x", { Title="(hidden) X", Min=-30000, Max=30000, Rounding=2, Default=0 })
  local hid_y = Tab:CreateSlider("tp_saved_y", { Title="(hidden) Y", Min=-30000, Max=30000, Rounding=2, Default=0 })
  local hid_z = Tab:CreateSlider("tp_saved_z", { Title="(hidden) Z", Min=-30000, Max=30000, Rounding=2, Default=0 })
  pcall(function()
    hid_x.Instance.Visible = false
    hid_y.Instance.Visible = false
    hid_z.Instance.Visible = false
  end)

  Tab:CreateButton({
    Title = "Rebind TP (click, then press key)",
    Callback = function()
      TP._armRebind = true
      notify("Press a key (Esc = cancel)", 2)
    end
  })

  Tab:CreateButton({
    Title = "Save point A (here)",
    Callback = function()
      local r = getRoot(); if not r then return notify("Root not ready", 1.2) end
      TP.saved = r.Position
      hid_x:SetValue(TP.saved.X); hid_y:SetValue(TP.saved.Y); hid_z:SetValue(TP.saved.Z)
      notify(("Saved A: (%.1f, %.1f, %.1f)"):format(TP.saved.X, TP.saved.Y, TP.saved.Z), 1.2)
    end
  })

  Tab:CreateButton({
    Title = "Clear saved point",
    Callback = function()
      TP.saved = nil
      hid_x:SetValue(0); hid_y:SetValue(0); hid_z:SetValue(0)
      notify("Saved point cleared", 1.0)
    end
  })

  -- onchange => C4C5D0C6C8Cc D0C0CdD2C0C9Cc C2 D1C8CdCaC5 D1 UI
  tg_enable:OnChanged(function(v) TP.enabled=v end)
  tg_mouse :OnChanged(function(v) TP.useMouse=v end)
  sl_yofs  :OnChanged(function(v) TP.yOffset=v end)
  sl_cd    :OnChanged(function(v) TP.cooldown=v end)
  inp_key  :OnChanged(function(txt)
    txt = tostring(txt or ""):upper():gsub("%s+","")
    for _,kc in ipairs(Enum.KeyCode:GetEnumItems()) do
      if kc.Name:upper()==txt then TP.key = kc; break end
    end
  end)

  -- ===== CeC1D0C0C1CeD2D7C8Ca CaCbC0C2C8D8 (D0C5C1C8CdC4 + D1C0Cc TP) =====
  if UIS then
    if _G.__tp_bind_conn then pcall(function() _G.__tp_bind_conn:Disconnect() end) end
    _G.__tp_bind_conn = UIS.InputBegan:Connect(function(i,gp)
      if gp or i.UserInputType ~= Enum.UserInputType.Keyboard then return end

      -- D0C5C1C8CdC4
      if TP._armRebind then
        if i.KeyCode == Enum.KeyCode.Escape then
          TP._armRebind = false; notify("Rebind canceled", 1.0); return
        end
        if i.KeyCode ~= Enum.KeyCode.Unknown then
          TP.key = i.KeyCode
          pcall(function() inp_key:SetValue(TP.key.Name) end)
          TP._armRebind = false
          notify(("Bound to %s"):format(TP.key.Name), 1.2)
        end
        return
      end

      -- D1C0Cc TP
      if not TP.enabled or i.KeyCode ~= TP.key then return end
      local now=tick(); if now-TP._last < TP.cooldown then return end
      TP._last = now

      local r = getRoot(); if not r then return end
      local targetPos

      -- CfD0C8CeD0C8D2C5D2: C5D1CbC8 C2CaCbDeD7E1Cd God-D0C5C6C8Cc  14 C8D1CfCeCbDcC7D3C5Cc C5C3Ce
      if tg_god.Value then
        local p, pr, d = nearestGodWithin(sl_grng.Value or 800, tg_gskip.Value)
        if pr then
          -- CfCeC7C8D6C8Df C7C0 D1CfC8CdCeC9 D6C5CbC8
          local back = pr.CFrame.LookVector * - (sl_gback.Value or 6)
          local yofs = TP.yOffset or 0
          targetPos = Vector3.new(pr.Position.X + back.X, pr.Position.Y + yofs, pr.Position.Z + back.Z)
        else
          notify("No God (3/3) in range.", 1.2)
          return
        end
      elseif TP.useMouse then
        local cam = workspace.CurrentCamera
        if cam and cam.CFrame then
          local origin = cam.CFrame.Position
          local dir    = cam.CFrame.LookVector * 2000
          local hit = workspace:Raycast(origin, dir, rayParams)
          if hit and hit.Position then targetPos = hit.Position end
        end
      else
        targetPos = TP.saved
        if not targetPos then
          local x,y,z = hid_x.Value, hid_y.Value, hid_z.Value
          if x ~= 0 or y ~= 0 or z ~= 0 then targetPos = Vector3.new(x,y,z) end
        end
      end

      if not targetPos then
        notify(TP.useMouse and "No mouse hit" or "No saved point  14 press 'Save point A (here)'", 1.4)
        return
      end

      local dst = Vector3.new(targetPos.X, targetPos.Y + 0, targetPos.Z)
      -- D1CcCeD2D0C8Cc D2D3C4C0 C6C5, CaD3C4C0 D1C5C9D7C0D1 D1CcCeD2D0C8Cc (D7D2CeC1Db CdC5 «CaD0D3D2C8CbCe»)
      r.CFrame = CFrame.new(dst, dst + r.CFrame.LookVector)
    end)
  end

  -- ======== persist (CaC0Ca D3 D2C5C1Df C1DbCbCe) ========
  local function tpPath(cfg)
    local function sanitize(s) return tostring(s or "default"):gsub("[^%w%._%-]","_") end
    return ("FluentScriptHub/specific-game/%s.tp.json"):format(sanitize(cfg))
  end
  local function TP_SaveToFile(path)
    if not writefile then return false end
    local data = {
      key = TP.key and TP.key.Name or "G",
      useMouse = TP.useMouse,
      yOffset  = TP.yOffset,
      cooldown = TP.cooldown,
      saved    = (TP.saved and {TP.saved.X, TP.saved.Y, TP.saved.Z}) or
                 ((hid_x.Value~=0 or hid_y.Value~=0 or hid_z.Value~=0) and {hid_x.Value, hid_y.Value, hid_z.Value} or nil),
      god      = {
        enabled = tg_god.Value,
        range   = sl_grng.Value,
        behind  = sl_gback.Value,
        skipfr  = tg_gskip.Value
      }
    }
    local ok, json = pcall(function() return game:GetService("HttpService"):JSONEncode(data) end)
    if not ok then return false end
    local ok2 = pcall(writefile, path, json)
    return ok2 == true or ok2 == nil
  end
  local function TP_LoadFromFile(path)
    if not (isfile and readfile) or not isfile(path) then return false end
    local ok, json = pcall(readfile, path); if not ok then return false end
    local ok2, data = pcall(function() return game:GetService("HttpService"):JSONDecode(json) end)
    if not ok2 or type(data) ~= "table" then return false end

    if data.key then
      for _,kc in ipairs(Enum.KeyCode:GetEnumItems()) do
        if kc.Name == data.key then TP.key = kc; pcall(function() inp_key:SetValue(kc.Name) end) break end
      end
    end
    if typeof(data.useMouse) == "boolean" then tg_mouse:SetValue(data.useMouse) end
    if tonumber(data.yOffset) then sl_yofs:SetValue(tonumber(data.yOffset)) end
    if tonumber(data.cooldown) then sl_cd:SetValue(tonumber(data.cooldown)) end
    if type(data.saved) == "table" and #data.saved >= 3 then
      local v = Vector3.new(tonumber(data.saved[1]) or 0, tonumber(data.saved[2]) or 0, tonumber(data.saved[3]) or 0)
      TP.saved = v
      hid_x:SetValue(v.X); hid_y:SetValue(v.Y); hid_z:SetValue(v.Z)
    end
    if type(data.god)=="table" then
      if typeof(data.god.enabled)=="boolean" then tg_god:SetValue(data.god.enabled) end
      if tonumber(data.god.range)  then sl_grng:SetValue(tonumber(data.god.range)) end
      if tonumber(data.god.behind) then sl_gback:SetValue(tonumber(data.god.behind)) end
      if typeof(data.god.skipfr)=="boolean" then tg_gskip:SetValue(data.god.skipfr) end
    end
    return true
  end

  if Tabs.Configs then
    _G.__TP_Save = function(cfgName) TP_SaveToFile(tpPath(cfgName)) end
    _G.__TP_Load = function(cfgName) TP_LoadFromFile(tpPath(cfgName)) end
  end
  _G.__TP_FromHidden = function()
    local x,y,z = hid_x.Value, hid_y.Value, hid_z.Value
    if x ~= 0 or y ~= 0 or z ~= 0 then TP.saved = Vector3.new(x,y,z) end
  end
end
-- ========== [ /TAB: Teleport ] ==========



-- ========= [ Finish / Autoload ] =========
Window:SelectTab(1)
Library:Notify{ Title="Fuger Hub", Content="Loaded: Configs + Loot + Combat (x2 burst) + ESP + Heal + GodTrap", Duration=6 }

pcall(function() SaveManager:LoadAutoloadConfig() end)
pcall(function() if typeof(SyncRuntimeFromUI) == "function" then SyncRuntimeFromUI() end end)
pcall(function()
    local ok = Route_LoadFromFile(ROUTE_AUTOSAVE, _G.__ROUTE, _G.__ROUTE._redraw)
    if ok then Library:Notify{ Title="Route", Content="Route autosave loaded", Duration=3 } end
end)
           print("script loaded succesfull")
          else
          Rayfield:Notify({
                  Title = "Error",
                  Content = "You are not whitelisted",
                  Image = "badge-alert",
                  Duration = 6.5,
                })
      end
    end    
  end,
})
