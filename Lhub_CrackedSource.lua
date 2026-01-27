
local L_180 = loadstring(game:HttpGet("https://raw.githubusercontent.com/LawlietSHub/Library/refs/heads/main/customFluent"))();
loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))();
local L_181 = game.ReplicatedStorage;
local L_182 = require(L_181.Modules.Packets);
local L_183 = require(L_181.Game.animations);
local L_184 = require(L_181.Modules.ItemData);
local L_185 = require(L_181.Modules.ItemIDS);
local L_186 = require(L_181.Modules.GameUtil);
local L_187 = game:GetService("HttpService");
local L_188 = game:GetService("RunService");
local L_189 = game.Players.LocalPlayer;
local L_190 = {};
if L_182 ~= nil and (L_184 ~= nil and (L_185 ~= nil and L_186 ~= nil)) then
    local L_191 = L_180:CreateWindow({ Name = "L Hub!", Icon = 0, LoadingTitle = "L Hub Interface", LoadingSubtitle = "by L", ShowText = "L : Hello!", Theme = "Default", ToggleUIKeybind = "L", DisableRayfieldPrompts = false, DisableBuildWarnings = false, ConfigurationSaving = { Enabled = false, FolderName = "LHub", FileName = "L Hub" }, Discord = { Enabled = true, Invite = "discord.gg/wF5SGgpBqN", RememberJoins = true } });
    task.wait(0.05);
    game.Players.LocalPlayer.Idled:connect(function(...)
        game:GetService("VirtualUser"):CaptureController();
        game:GetService("VirtualUser"):ClickButton2(Vector2.new());
        return ;
    end);
    local L_192 = L_67;
    local L_197 = function(...)
        local L_193 = game:GetService("Players");
        local L_194 = game:GetService("UserInputService");
        local L_195 = L_193.LocalPlayer;
        local L_196 = L_194:GetPlatform();
        return L_196 == Enum.Platform.IOS or L_196 == Enum.Platform.Android;
    end;
    local L_198 = L_191:CreateTab("Main", 4483362458);
    L_198:CreateSection("Fruit Farm!");
    task.wait(0.05);
    local L_199 = L_191:CreateTab("Helpers", 4483362458);
    task.wait(0.05);
    L_199:CreateSection("Movement");
    task.wait(0.05);
    local L_200 = L_191:CreateTab("Combat", 4483362458);
    task.wait(0.05);
    L_200:CreateSection("Auto Eat & Heal");
    task.wait(0.05);
    local L_201 = nil;
    if not L_197() then
        L_201 = L_191:CreateTab("PC Combat", 4483362458);
        task.wait(0.05);
        L_201:CreateSection("THEY ARE SO USEFUL");
        task.wait(0.05);
    end;
    local L_202 = L_191:CreateTab("Tween Settings", 4483362458);
    task.wait(0.05);
    L_202:CreateSection("You must learn here!");
    task.wait(0.05);
    local L_203 = L_191:CreateTab("Tween Customization", 4483362458);
    task.wait(0.05);
    L_203:CreateSection("");
    task.wait(0.05);
    L_203:CreateParagraph({ Title = "You should learn here!", Content = "This place is a bit hard to understand but if u learn It will help you a lot" });
    task.wait(0.05);
    local L_204 = L_191:CreateTab("Utility", 4483362458);
    task.wait(0.05);
    L_204:CreateSection("idk what to say about here");
    task.wait(0.05);
    L_203:CreateDivider();
    task.wait(0.05);
    local L_205 = "Booga/Reborn/Configs";
    local L_206 = Instance.new("Folder", game.Workspace);
    L_206.Name = "Points";
    local L_213 = function(...)
        local L_207 = {};
        local L_208 = { pairs(L_206:GetChildren()) };
        local L_209 = L_208[3];
        local L_210 = L_208[1];
        local L_211 = L_208[2];
        while true do
            local L_212;
            L_209, L_212 = L_210(L_211, L_209);
            if not L_209 then
                break;
            end;
            if L_212:IsA("BasePart") then
                table.insert(L_207, L_212.Name);
            end;
        end;
        return L_207;
    end;
    if not isfile(L_205) then
        makefolder(L_205);
    end;
    local L_214 = "https://raw.githubusercontent.com/LawlietSHub/Library/refs/heads/main/ConfigDaBest";
    local L_215 = "Booga/Reborn/Configs/L_GoldV2.json";
    if not isfile(L_215) then
        local L_216 = game:HttpGet(L_214);
        writefile(L_215, L_216);
    end;
    local L_217 = {};
    local L_218 = {};
    local L_219 = {};
    local L_220 = {};
    local L_221 = 0;
    local L_222 = {};
    local L_223 = game.PlaceId == 11879754496;
    L_180:Notify({ Title = "Join Discord!", Content = "Copied link to your clipboard", Duration = 6.5, Image = 4483362458 });
    setclipboard("discord.gg/wF5SGgpBqN");
    local L_224 = {};
    local L_225 = "Raw Gold";
    local L_226 = "Gold";
    local L_227 = "Coin2";
    local L_228 = "Crystal Chunk";
    local L_229 = "Bloodfruit";
    local L_230 = "Lemon";
    local L_231 = "Bluefruit";
    local L_232 = "Essence";
    local L_233 = "Iron";
    local L_234 = "Sand";
    local L_235 = { "Raw Gold", "Gold", "Crystal Chunk", "Bloodfruit", "Lemon", "Bluefruit", "Wood", "Leaves", "Iron", "Sand", "Log", "Essence" };
    local L_236 = "Reinforced Chest";
    local L_237 = "Nest";
    local L_238 = "Fish Trap";
    local L_239 = "Chest";
    local L_240 = "Barley";
    local L_241 = next;
    local L_242 = nil;
    while true do
        local L_243;
        L_242, L_243 = L_241(L_184, L_242);
        if not L_242 then
            break;
        end;
        if L_243.growthTime ~= nil and not table.find({ L_236, L_237, L_238, L_239, L_240 }, L_242) then
            table.insert(L_224, L_242);
        end;
    end;
    local L_244 = 0;
    local L_245 = nil;
    local L_246 = nil;
    local L_247 = { pairs(getreg()) };
    local L_248 = L_247[1];
    local L_249 = L_247[2];
    local L_250 = L_247[3];
    while true do
        local L_251;
        L_250, L_251 = L_248(L_249, L_250);
        if not L_250 then
            break;
        end;
        L_244 = L_244 + 1;
        if L_244 % 1000 == 0 then
            task.wait();
        end;
        if type(L_251) == "table" then
            if L_245 or L_251[1] ~= "Wood" then
                if L_246 or (type(L_251.Wood) ~= "table" or not L_251.Wood.itemType) then
                    if L_245 and L_246 then
                        break;
                    end;
                else
                    L_246 = L_251;
                end;
            else
                L_245 = L_251;
            end;
        end;
    end;
    local L_253 = function(L_252, ...)
        if not L_223 then
            if not table.find(L_245, L_252) then
                return false;
            end;
            return table.find(L_245, L_252);
        end;
        return L_252;
    end;
    local L_255 = function(L_254, ...)
        if L_253(L_254) then
            L_182.CraftItem.send(L_253(L_254));
            return ;
        end;
        L_180:Notify({ Title = "L : Hey!", Content = "I can't find the item", Duration = 6.5, Image = 4483362458 });
        return ;
    end;
    local L_261 = function(L_256, ...)
        local L_257 = { L_256:GetComponents() };
        local L_258 = L_257[2];
        local L_259 = L_257[1];
        local L_260 = L_257[3];
        return string.format("%f,%f,%f", L_259, L_258, L_260);
    end;
    local L_268 = function(L_262, ...)
        local L_263 = {};
        local L_264 = { string.gmatch(L_262, "[^,]+") };
        local L_265 = L_264[3];
        local L_266 = L_264[2];
        local L_267 = L_264[1];
        while true do
            L_265 = L_267(L_266, L_265);
            if not L_265 then
                break;
            end;
            table.insert(L_263, tonumber(L_265));
        end;
        if #L_263 ~= 3 then
            return nil;
        end;
        return CFrame.new(L_263[1], L_263[2], L_263[3]);
    end;
    ToNumericalString = function(L_269, ...)
        local L_270 = #L_269;
        local L_271 = {};
        local L_272 = 1;
        local L_273 = L_272 < 0;
        local L_274 = 1 - L_272;
        while true do
            L_274 = L_274 + L_272;
            local L_275 = L_274 <= L_270;
            local L_276 = not L_273 and L_275;
            local L_277 = L_274 >= L_270;
            if (not L_273 or not L_277) and not L_276 then
                break;
            end;
            table.insert(L_271, tostring(string.byte(L_269, L_274)));
        end;
        return table.concat(L_271, "-");
    end;
    FromNumericalString = function(L_278, ...)
        local L_279 = {};
        local L_280 = { string.gmatch(L_278, "%d+") };
        local L_281 = L_280[1];
        local L_282 = L_280[2];
        local L_283 = L_280[3];
        while true do
            L_283 = L_281(L_282, L_283);
            if not L_283 then
                break;
            end;
            table.insert(L_279, string.char(tonumber(L_283)));
        end;
        return table.concat(L_279);
    end;
    local L_285 = L_198:CreateDropdown({
        Name = "Select Fruit to Plant",
        Options = L_224,
        CurrentOption = { "Bloodfruit" },
        MultipleOptions = false,
        Flag = "Select_Fruit_To_Plant",
        Callback = function(L_284, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_285.Flag] = L_285;
    local L_286 = nil;
    local L_287 = {};
    local L_288 = { pairs(workspace.Deployables:GetChildren()) };
    local L_289 = L_288[3];
    local L_290 = L_288[2];
    local L_291 = L_288[1];
    while true do
        local L_292;
        L_289, L_292 = L_291(L_290, L_289);
        if not L_289 then
            break;
        end;
        if L_292.Name == "Plant Box" then
            table.insert(L_287, L_292);
        end;
    end;
    workspace.Deployables.ChildAdded:connect(function(L_293, ...)
        if L_293.Name == "Plant Box" then
            table.insert(L_287, L_293);
        end;
        return ;
    end);
    workspace.Deployables.ChildRemoved:connect(function(L_294, ...)
        local L_295 = table.find(L_287, L_294);
        if L_295 then
            table.remove(L_287, L_295);
        end;
        return ;
    end);
    local L_304 = function(...)
        local L_296 = nil;
        local L_297 = math.huge;
        local L_298 = L_189.Character;
        local L_299 = next;
        local L_300 = nil;
        local L_301 = L_287;
        while true do
            local L_302;
            L_300, L_302 = L_299(L_301, L_300);
            if not L_300 then
                break;
            end;
            local L_303 = (L_298:GetPivot().Position - L_302:GetPivot().Position).Magnitude;
            if not L_302:FindFirstChild("Seed") and L_303 < L_297 then
                L_297 = L_303;
                L_296 = L_302;
            end;
        end;
        return L_296;
    end;
    local L_309 = function(...)
        local L_305 = L_285.CurrentOption[1];
        local L_306 = L_189.Character;
        L_306:GetPivot();
        local L_307 = L_306.Humanoid;
        local L_308 = L_304();
        if L_308 then
            L_182.InteractStructure.send({ entityID = L_308:GetAttribute("EntityID"), itemID = L_185[L_305] });
        end;
        return ;
    end;
    local L_311 = L_198:CreateToggle({
        Name = "Plant Fruit",
        CurrentValue = false,
        Flag = "Plant_Fruit",
        Callback = function(L_310, ...)
            if not L_310 then
                if L_286 then
                    L_286:Disconnect();
                    L_286 = nil;
                end;
            else
                L_286 = L_188.Heartbeat:Connect(function(...)
                    task.wait(0.05);
                    L_309();
                    return ;
                end);
            end;
            return ;
        end
    });
    L_311:Set(false);
    task.wait(0.05);
    L_190[L_311.Flag] = L_311;
    local L_312 = nil;
    local L_319 = function(...)
        local L_313 = L_189.Character:GetPivot();
        local L_314 = { pairs(workspace:GetChildren()) };
        local L_315 = L_314[1];
        local L_316 = L_314[3];
        local L_317 = L_314[2];
        while true do
            local L_318;
            L_316, L_318 = L_315(L_317, L_316);
            if not L_316 then
                break;
            end;
            if (string.find(string.lower(L_318.Name), "bush") or (string.find(string.lower(L_318.Name), "tree") or (string.find(string.lower(L_318.Name), "patch") or string.find(string.lower(L_318.Name), "crop")))) and (L_318:GetPivot().Position - L_313.Position).Magnitude < 25 then
                L_182.Pickup.send(L_318:GetAttribute("EntityID"));
            end;
        end;
        return ;
    end;
    local L_321 = L_198:CreateToggle({
        Name = "Harvest Fruit",
        CurrentValue = false,
        Flag = "Harvest_Fruit",
        Callback = function(L_320, ...)
            if not L_320 then
                if L_312 then
                    L_312:Disconnect();
                    L_312 = nil;
                end;
            else
                L_312 = L_188.Heartbeat:Connect(function(...)
                    task.wait(0.05);
                    L_319();
                    return ;
                end);
            end;
            return ;
        end
    });
    L_321:Set(false);
    task.wait(0.05);
    L_190[L_321.Flag] = L_321;
    local L_322 = nil;
    local L_323 = 21;
    local L_336 = function(L_324, ...)
        local L_325 = L_189.Character;
        local L_326 = L_325.Humanoid;
        local L_327 = L_304();
        local L_328 = L_325.HumanoidRootPart;
        local L_329 = L_327:GetPivot().Position;
        local L_330 = RaycastParams.new();
        L_330.FilterType = Enum.RaycastFilterType.Blacklist;
        L_330.FilterDescendantsInstances = { L_325 };
        L_330.IgnoreWater = true;
        local L_331 = L_328.Position + L_328.CFrame.LookVector * 1 + Vector3.new(0, 100, 0);
        local L_332 = L_328.Position + L_328.CFrame.LookVector * L_323 * L_324;
        if workspace:Raycast(L_331, Vector3.new(0, -2000, 0), L_330) and ((L_329 - L_328.Position).Magnitude > 4.5 and (L_329 - L_328.Position).Magnitude < 400) then
            local L_333 = (L_329 - L_328.Position).unit;
            local L_334 = L_328.Position + L_333 * L_323 * L_324;
            local L_335 = L_328.CFrame - L_328.Position;
            L_325.HumanoidRootPart.CFrame = CFrame.new(L_334) * L_335;
        end;
        return ;
    end;
    local L_339 = L_198:CreateToggle({
        Name = "Move Plantboxes",
        CurrentValue = false,
        Flag = "Move_Plantboxes",
        Callback = function(L_337, ...)
            if not L_337 then
                if L_322 then
                    L_322:Disconnect();
                    L_322 = nil;
                end;
            else
                L_322 = L_188.Heartbeat:Connect(function(L_338, ...)
                    L_336(L_338);
                    return ;
                end);
            end;
            return ;
        end
    });
    L_339:Set(false);
    task.wait(0.05);
    L_190[L_339.Flag] = L_339;
    local L_341 = L_198:CreateSlider({
        Name = "Farm Speed",
        Range = { 0, 24 },
        Increment = 1,
        Suffix = "Speed",
        CurrentValue = 21,
        Flag = "Farm_Speed_Slider",
        Callback = function(L_340, ...)
            L_323 = L_340;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_341.Flag] = L_341;
    L_198:CreateDivider();
    task.wait(0.05);
    L_198:CreateSection("Fruit Farm Helpers");
    task.wait(0.05);
    local L_344 = function(L_342, L_343, ...)
        if L_223 then
            packets.PlaceStructure.send(pos, L_342, rot, false);
        else
            L_182.PlaceStructure.send({ buildingName = L_342, cframe = L_343 });
        end;
        return ;
    end;
    local L_348 = function(...)
        local L_345 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
        local L_346 = Vector3.new(math.round(L_345.X / 6.05) * 6.05, L_345.Y, math.round(L_345.Z / 6.05) * 6.05);
        local L_347 = workspace:Raycast(L_346 + Vector3.new(0, 100, 0), Vector3.new(0, -200, 0));
        if L_347 then
            L_344("Plant Box", CFrame.new(L_347.Position));
        end;
        return ;
    end;
    local L_349 = nil;
    local L_350 = 0;
    local L_352 = L_198:CreateToggle({
        Name = "Place Plant Boxes",
        CurrentValue = false,
        Flag = "Place_Plant_Boxes",
        Callback = function(L_351, ...)
            if not L_351 then
                if L_349 then
                    L_349:Disconnect();
                    L_349 = nil;
                end;
            else
                L_349 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_350 < 0.1) then
                        L_350 = tick();
                        L_348();
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_352.Flag] = L_352;
    local L_353 = false;
    local L_355 = L_198:CreateToggle({
        Name = "Leave On Join",
        CurrentValue = false,
        Flag = "Leave_On_Join",
        Callback = function(L_354, ...)
            L_353 = L_354;
            return ;
        end
    });
    task.wait(0.05);
    game.Players.PlayerAdded:Connect(function(L_356, ...)
        if L_353 then
            game.Players.LocalPlayer:Kick("A different player joined the server, therefore you have been kicked! You can turn this off in the farm tab.", L_356);
        end;
        return ;
    end);
    L_190[L_355.Flag] = L_355;
    local L_358 = L_199:CreateToggle({
        Name = "Set Walk Speed",
        CurrentValue = false,
        Flag = "Set_Walk_Speed",
        Callback = function(L_357, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_358.Flag] = L_358;
    local L_360 = L_199:CreateSlider({
        Name = "Walk Speed",
        Range = { 0, 24 },
        Increment = 1,
        Suffix = "Speed",
        CurrentValue = 21,
        Flag = "Walk_Speed_Slider",
        Callback = function(L_359, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_360.Flag] = L_360;
    local L_366 = hookmetamethod(game, "__newindex", function(L_361, L_362, L_363, ...)
        local L_364 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid");
        local L_365 = L_358.CurrentValue;
        if L_365 then
            L_365 = not checkcaller();
            if L_365 then
                if L_364 then
                    L_364 = L_361 == L_364;
                end;
                L_365 = L_364;
            end;
        end;
        if L_365 and L_362 == "WalkSpeed" then
            L_363 = L_360.CurrentValue;
        end;
        return __newindex(L_361, L_362, L_363);
    end);
    __newindex = L_366;
    local L_368 = L_199:CreateToggle({
        Name = "Better Climber",
        CurrentValue = false,
        Flag = "Better_Climber",
        Callback = function(L_367, ...)
            if not L_367 then
                L_189.Character.Humanoid.MaxSlopeAngle = 46;
            else
                L_189.Character.Humanoid.MaxSlopeAngle = 89.9;
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_368.Flag] = L_368;
    L_199:CreateDivider();
    task.wait(0, 5);
    task.wait(0, 5);
    L_199:CreateSection("Buy Items!");
    task.wait(0.05);
    local L_369 = nil;
    local L_370 = { Gold = 597, Crystal = 436, Log = 320, Wood = 1, Leaves = 166, Stone = 336, CookedMeat = 643, Blood = 94, Berry = 35, Bluefruit = 377, Steel = 174, Iron = 177, Lemon = 99, Jelly = 604 };
    local L_371 = {};
    local L_372 = 1;
    local L_373 = require(game.ReplicatedStorage.Modules.Packets);
    local L_374 = {};
    local L_375 = { pairs(L_370) };
    local L_376 = L_375[1];
    local L_377 = L_375[3];
    local L_378 = L_375[2];
    while true do
        local L_379;
        L_377, L_379 = L_376(L_378, L_377);
        if not L_377 then
            break;
        end;
        table.insert(L_374, L_377);
    end;
    L_199:CreateDropdown({
        Name = "Buy Items from Shop",
        Options = L_374,
        CurrentOption = {},
        MultipleOptions = true,
        Flag = "Buy_Dropdown",
        Callback = function(L_380, ...)
            L_371 = L_380;
            return ;
        end
    });
    local L_382 = L_199:CreateInput({
        Name = "Quantity",
        CurrentValue = "",
        PlaceholderText = "Enter amount",
        RemoveTextAfterFocusLost = false,
        Flag = "BuyInput",
        Callback = function(L_381, ...)
            L_372 = tonumber(L_381) or 1;
            return ;
        end
    });
    local L_396 = function(...)
        local L_383 = { ipairs(L_371) };
        local L_384 = L_383[1];
        local L_385 = L_383[2];
        local L_386 = L_383[3];
        while true do
            local L_387;
            L_386, L_387 = L_384(L_385, L_386);
            if not L_386 then
                break;
            end;
            local L_388 = L_370[L_387];
            if L_388 then
                local L_389 = L_372;
                local L_390 = 1;
                local L_391 = L_390 < 0;
                local L_392 = 1 - L_390;
                while true do
                    L_392 = L_392 + L_390;
                    local L_393 = L_392 <= L_389;
                    local L_394 = not L_391 and L_393;
                    local L_395 = L_392 >= L_389;
                    if (not L_391 or not L_395) and not L_394 then
                        break;
                    end;
                    L_373.PurchaseFromShop.send(L_388);
                end;
            end;
        end;
        return ;
    end;
    local L_398 = L_199:CreateToggle({
        Name = "Auto Buy",
        CurrentValue = false,
        Flag = "ToggleBuy",
        Callback = function(L_397, ...)
            if L_397 then
                L_396();
                L_369:Set(false);
            end;
            return ;
        end
    });
    L_190[L_398.Flag] = L_398;
    L_190[L_382.Flag] = L_382;
    L_199:CreateSection("Pick Up Items!");
    task.wait(0.05);
    local L_400 = L_199:CreateDropdown({
        Name = "Select Items to Pick Up!",
        Options = { L_225, L_226, L_227, L_228, L_229, L_230, L_231, L_232, L_233, L_234 },
        CurrentOption = { "Raw Gold" },
        MultipleOptions = true,
        Flag = "Select_PickUp_Item",
        Callback = function(L_399, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_400.Flag] = L_400;
    local L_401 = nil;
    local L_402 = 0;
    local L_410 = L_199:CreateToggle({
        Name = "Pick Up Items",
        CurrentValue = false,
        Flag = "Pick_Up_Items",
        Callback = function(L_403, ...)
            if not L_403 then
                if L_401 then
                    L_401:Disconnect();
                    L_401 = nil;
                end;
            else
                L_401 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_402 < 0.1) then
                        L_402 = tick();
                        local L_404 = L_400.CurrentOption;
                        local L_405 = { pairs(workspace.Items:GetChildren()) };
                        local L_406 = L_405[1];
                        local L_407 = L_405[2];
                        local L_408 = L_405[3];
                        while true do
                            local L_409;
                            L_408, L_409 = L_406(L_407, L_408);
                            if not L_408 then
                                break;
                            end;
                            if not table.find(L_404, L_409.Name) then
                                if (L_409.Name == "Coin2" or L_409.Name == "Coin") and table.find(L_404, "Coins") then
                                    L_373.Pickup.send(L_409:GetAttribute("EntityID"));
                                end;
                            else
                                L_373.Pickup.send(L_409:GetAttribute("EntityID"));
                            end;
                        end;
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_410.Flag] = L_410;
    local L_411 = nil;
    local L_412 = 0;
    L_199:CreateToggle({
        Name = "Pick Up Chest Items",
        CurrentValue = false,
        Flag = "Pick_Up_Chest_Items",
        Callback = function(L_413, ...)
            if not L_413 then
                if L_411 then
                    L_411:Disconnect();
                    L_411 = nil;
                end;
            else
                L_411 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_412 < 0.2) then
                        L_412 = tick();
                        local L_414 = L_400.CurrentOption;
                        local L_415 = { ipairs(workspace.Deployables:GetChildren()) };
                        local L_416 = L_415[1];
                        local L_417 = L_415[3];
                        local L_418 = L_415[2];
                        while true do
                            local L_419;
                            L_417, L_419 = L_416(L_418, L_417);
                            if not L_417 then
                                break;
                            end;
                            if L_419:IsA("Model") and L_419:FindFirstChild("Contents") then
                                local L_420 = { ipairs(L_419.Contents:GetChildren()) };
                                local L_421 = L_420[1];
                                local L_422 = L_420[3];
                                local L_423 = L_420[2];
                                while true do
                                    local L_424;
                                    L_422, L_424 = L_421(L_423, L_422);
                                    if not L_422 then
                                        break;
                                    end;
                                    if L_424:IsA("BasePart") or L_424:IsA("MeshPart") then
                                        local L_425 = L_424.Name;
                                        local L_426 = L_424:GetAttribute("EntityID");
                                        local L_427 = L_426;
                                        if L_426 then
                                            L_427 = table.find(L_414, L_425);
                                        end;
                                        if L_427 then
                                            L_373.Pickup.send(L_426);
                                        end;
                                    end;
                                end;
                            end;
                        end;
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_410.Flag] = L_410;
    L_199:CreateDivider();
    task.wait(0.05);
    L_199:CreateSection("Drop Item!");
    task.wait(0.05);
    local L_429 = L_199:CreateDropdown({
        Name = "Select Items to Drop!",
        Options = L_235,
        CurrentOption = { "Raw Gold" },
        MultipleOptions = false,
        Flag = "Select_Drop_Item",
        Callback = function(L_428, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_429.Flag] = L_429;
    local L_446 = function(...)
        local L_430 = 1;
        local L_431 = {};
        local L_432 = L_189.PlayerGui.MainGui.RightPanel.Inventory.List;
        local L_433 = L_429.CurrentOption;
        local L_434 = L_432.GetChildren;
        local L_435 = L_433[1];
        name = L_435;
        local L_436 = { pairs(L_434(L_432)) };
        local L_437 = L_436[3];
        local L_438 = L_436[2];
        local L_439 = L_436[1];
        while true do
            local L_440;
            L_437, L_440 = L_439(L_438, L_437);
            if not L_437 then
                break;
            end;
            if L_440.Name ~= "UIGridLayout" then
                table.insert(L_431, { Name = L_440.Name, Count = L_430 });
                L_430 = L_430 + 1;
            end;
        end;
        local L_441 = { pairs(L_431) };
        local L_442 = L_441[3];
        local L_443 = L_441[2];
        local L_444 = L_441[1];
        local L_445;
        repeat
            L_442, L_445 = L_444(L_443, L_442);
            if not L_442 then
                return false;
            end;
        until L_445.Name == name;
        return L_445.Count;
    end;
    local L_447 = function(...)
        if L_446() then
            L_373.DropBagItem.send(L_446());
        end;
        return ;
    end;
    local L_448 = nil;
    local L_449 = 0;
    local L_451 = L_199:CreateToggle({
        Name = "Drop Item",
        CurrentValue = false,
        Flag = "Drop_Item",
        Callback = function(L_450, ...)
            if not L_450 then
                if L_448 then
                    L_448:Disconnect();
                    L_448 = nil;
                end;
            else
                L_448 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_449 < 0.05) then
                        L_449 = tick();
                        L_447();
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_451.Flag] = L_451;
    L_199:CreateDivider();
    task.wait(0.05);
    L_199:CreateSection("Queen Ant Helpers!");
    task.wait(0.05);
    local L_452 = 0;
    local L_453 = nil;
    local L_466 = L_199:CreateToggle({
        Name = "Hit Queen Ant Servants",
        CurrentValue = false,
        Flag = "Hit_Queen_Ant_Servants",
        Callback = function(L_454, ...)
            if not L_454 then
                if L_453 then
                    L_453:Disconnect();
                    L_453 = nil;
                end;
            else
                L_453 = L_188.Heartbeat:Connect(function(...)
                    if not (os.clock() - L_452 < 0.1) then
                        L_452 = os.clock();
                        local L_455 = L_189.Character;
                        if L_455 then
                            local L_456 = workspace:FindFirstChild("Critters");
                            if L_456 then
                                local L_457 = L_455:GetPivot().Position;
                                local L_458 = L_456.GetChildren;
                                local L_459 = {};
                                local L_460 = { ipairs(L_458(L_456)) };
                                local L_461 = L_460[1];
                                local L_462 = L_460[3];
                                local L_463 = L_460[2];
                                while true do
                                    local L_464;
                                    L_462, L_464 = L_461(L_463, L_462);
                                    if not L_462 then
                                        break;
                                    end;
                                    if L_464:IsA("Model") and L_464.Name == "Queen Ants Servant" and (L_457 - L_464:GetPivot().Position).Magnitude <= 35 then
                                        local L_465 = L_464:GetAttribute("EntityID");
                                        if L_465 then
                                            table.insert(L_459, L_465);
                                        end;
                                    end;
                                end;
                                if #L_459 > 0 then
                                    L_373.SwingTool.send(L_459);
                                end;
                                return ;
                            end;
                            return ;
                        end;
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    L_190[L_466.Flag] = L_466;
    local L_467 = nil;
    local L_468 = 0;
    local L_470 = L_199:CreateToggle({
        Name = "Auto Rebirth",
        CurrentValue = false,
        Flag = "Auto_Rebirth",
        Callback = function(L_469, ...)
            if not L_469 then
                if L_467 then
                    L_467:Disconnect();
                    L_467 = nil;
                end;
            else
                L_467 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_468 < 1) then
                        L_468 = tick();
                        if L_186.Data.level == 100 then
                            L_373.Rebirth.send();
                        end;
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_470.Flag] = L_470;
    local L_471 = nil;
    local L_472 = 0;
    local L_478 = function(L_473, ...)
        local L_474 = game.Players.LocalPlayer;
        local L_475 = { game.ReplicatedStorage.Events.SpawnFirst:InvokeServer(L_473) };
        local L_476 = L_475[1];
        local L_477 = L_475[2];
        if L_476 then
            L_474:SetAttribute("hasSpawned", true);
        end;
        return ;
    end;
    local L_480 = L_199:CreateToggle({
        Name = "Bed Spawn",
        CurrentValue = false,
        Flag = "Bed_Spawn",
        Callback = function(L_479, ...)
            if not L_479 then
                if L_471 then
                    L_471:Disconnect();
                    L_471 = nil;
                end;
            else
                L_471 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_472 < 1) then
                        L_472 = tick();
                        if L_189:GetAttribute("hasSpawned") == false then
                            L_478(true);
                        end;
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_480.Flag] = L_480;
    L_199:CreateDivider();
    task.wait(0.05);
    L_199:CreateSection("Gold Farm Helpers!");
    task.wait(0.05);
    local L_489 = function(L_481, ...)
        local L_482 = game.Players.LocalPlayer.Character;
        if L_482 then
            local L_483 = {};
            local L_484 = { ipairs(workspace.Resources:GetChildren()) };
            local L_485 = L_484[2];
            local L_486 = L_484[3];
            local L_487 = L_484[1];
            while true do
                local L_488;
                L_486, L_488 = L_487(L_485, L_486);
                if not L_486 then
                    break;
                end;
                if (L_482:GetPivot().Position - L_488:GetPivot().Position).Magnitude <= L_481 then
                    table.insert(L_483, L_488:GetAttribute("EntityID"));
                end;
            end;
            if #L_483 > 0 then
                L_373.SwingTool.send(L_483);
            end;
            return ;
        end;
        return ;
    end;
    local L_490 = nil;
    local L_491 = 0;
    local L_493 = L_199:CreateToggle({
        Name = "Break Resources",
        CurrentValue = false,
        Flag = "Break_Resources",
        Callback = function(L_492, ...)
            if not L_492 then
                if L_490 then
                    L_490:Disconnect();
                    L_490 = nil;
                end;
            else
                L_490 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_491 < 0.1) then
                        L_491 = tick();
                        L_489(35);
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_493.Flag] = L_493;
    local L_494 = nil;
    local L_496 = L_199:CreateToggle({
        Name = "NoClip",
        CurrentValue = false,
        Flag = "No_Clip",
        Callback = function(L_495, ...)
            L_494 = L_495;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_496.Flag] = L_496;
    game.Players.LocalPlayer.Character.HumanoidRootPart.Touched:Connect(function(L_497, ...)
        if L_497.Parent.Name ~= "Gold Node" then
            if L_494 then
                L_497.CanCollide = false;
                return ;
            end;
            return ;
        end;
        return ;
    end);
    local L_498 = {};
    local L_500 = L_199:CreateDropdown({
        Name = "Select Items to Teleport Chest!",
        Options = L_235,
        CurrentOption = { "Raw Gold" },
        MultipleOptions = true,
        Flag = "Select_Tp_Chest_Item",
        Callback = function(L_499, ...)
            L_498 = L_499;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_500.Flag] = L_500;
    local L_510 = function(L_501, ...)
        local L_502 = nil;
        local L_503 = math.huge;
        local L_504 = { pairs(workspace.Deployables:GetChildren()) };
        local L_505 = L_504[2];
        local L_506 = L_504[1];
        local L_507 = L_504[3];
        while true do
            local L_508;
            L_507, L_508 = L_506(L_505, L_507);
            if not L_507 then
                break;
            end;
            if L_508.Name == L_501 then
                local L_509 = (L_508:GetPivot().Position - game.Players.LocalPlayer.Character:GetPivot().Position).Magnitude;
                if L_509 < L_503 then
                    L_503 = L_509;
                    L_502 = L_508;
                end;
            end;
        end;
        return L_502, L_503;
    end;
    local L_517 = function(...)
        local L_511 = { pairs(workspace.Items:GetChildren()) };
        local L_512 = L_511[1];
        local L_513 = L_511[3];
        local L_514 = L_511[2];
        while true do
            local L_515;
            L_513, L_515 = L_512(L_514, L_513);
            if not L_513 then
                break;
            end;
            if table.find(L_498, L_515.Name) then
                local L_516 = L_510("Chest");
                if L_516 then
                    L_373.ForceInteract.send(L_515:GetAttribute("EntityID"));
                    L_515:PivotTo(L_516:GetPivot() * CFrame.new(0, 2, 0));
                end;
            end;
        end;
        return ;
    end;
    local L_518 = nil;
    local L_519 = false;
    local L_520 = 0;
    local L_522 = L_199:CreateToggle({
        Name = "Teleport Items To Chest",
        CurrentValue = false,
        Flag = "Teleport_Chest",
        Callback = function(L_521, ...)
            if not L_521 then
                if L_518 then
                    L_518:Disconnect();
                    L_518 = nil;
                end;
            else
                L_518 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_520 < 0.1) then
                        L_520 = tick();
                        if not L_519 then
                            L_519 = true;
                            L_517();
                            task.wait(0.05);
                            L_519 = false;
                            return ;
                        end;
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_522.Flag] = L_522;
    L_199:CreateDivider();
    task.wait(0.05);
    L_199:CreateSection("Coin Press Helpers!");
    task.wait(0.05);
    local L_524 = function(...)
        local L_523 = L_510("Coin Press");
        L_373.InteractStructure.send({ entityID = L_523:GetAttribute("EntityID"), itemID = L_185.Gold });
        return ;
    end;
    local L_525 = nil;
    local L_526 = 0;
    local L_528 = L_199:CreateToggle({
        Name = "Auto Press Coins",
        CurrentValue = false,
        Flag = "Auto_Press_Coins",
        Callback = function(L_527, ...)
            if not L_527 then
                if L_525 then
                    L_525:Disconnect();
                    L_525 = nil;
                end;
            else
                L_525 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_526 < 0.05) then
                        L_526 = tick();
                        L_524();
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_528.Flag] = L_528;
    local L_530 = L_200:CreateDropdown({
        Name = "Select Campfire Waste",
        Options = { "Stick", "Leaves", "Wood", "Coal" },
        CurrentOption = { "Leaves" },
        MultipleOptions = false,
        Flag = "Select_Oil",
        Callback = function(L_529, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_530.Flag] = SelectEatFruit;
    local L_552 = function(...)
        local L_531 = { pairs(workspace.Deployables:GetChildren()) };
        local L_532 = L_531[3];
        local L_533 = L_531[2];
        local L_534 = L_531[1];
        while true do
            local L_535;
            L_532, L_535 = L_534(L_533, L_532);
            if not L_532 then
                break;
            end;
            local L_536 = (L_535:GetPivot().Position - L_189.Character:GetPivot().Position).Magnitude;
            if L_535.Name == "Campfire" and (L_535:GetAttribute("EntityID") and (L_535:FindFirstChild("Board"):FindFirstChild("Billboard") and L_536 <= 40)) then
                local L_537 = tonumber(L_535.Board.Billboard.Backdrop.TextLabel.Text);
                if L_537 <= 200 then
                    local L_538 = 0;
                    local L_539 = 10;
                    local L_540 = 1;
                    local L_541 = L_540 < 0;
                    local L_542 = 1 - L_540;
                    while true do
                        L_542 = L_542 + L_540;
                        local L_543 = L_542 <= L_539;
                        local L_544 = not L_541 and L_543;
                        local L_545 = L_542 >= L_539;
                        if not (L_541 and L_545 or L_544) or L_537 >= 250 then
                            break;
                        end;
                        L_538 = L_538 + 1;
                        L_537 = L_537 + 50;
                    end;
                    local L_546 = 1;
                    local L_547 = L_546 < 0;
                    local L_548 = 1 - L_546;
                    while true do
                        L_548 = L_548 + L_546;
                        local L_549 = L_548 <= L_538;
                        local L_550 = not L_547 and L_549;
                        local L_551 = L_548 >= L_538;
                        if (not L_547 or not L_551) and not L_550 then
                            break;
                        end;
                        L_373.InteractStructure.send({ entityID = L_535:GetAttribute("EntityID"), itemID = L_185[L_530.CurrentOption[1]] });
                    end;
                end;
            end;
        end;
        return ;
    end;
    local L_553 = nil;
    local L_554 = 0;
    local L_556 = L_199:CreateToggle({
        Name = "Auto Fill Campfire",
        CurrentValue = false,
        Flag = "Auto_Fill_Campfire",
        Callback = function(L_555, ...)
            if not L_555 then
                if L_553 then
                    L_553:Disconnect();
                    L_553 = nil;
                end;
            else
                L_553 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_554 < 0.05) then
                        L_554 = tick();
                        L_552();
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_556.Flag] = L_556;
    L_199:CreateDivider();
    task.wait(0.05);
    local L_558 = L_199:CreateInput({
        Name = "Item Name",
        CurrentValue = "",
        PlaceholderText = "Kurdish.Porn",
        RemoveTextAfterFocusLost = false,
        Flag = "Item_Name_Helper",
        Callback = function(L_557, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_558.Flag] = L_558;
    local L_559 = false;
    L_189.CharacterAdded:Connect(function(L_560, ...)
        if L_559 then
            task.wait(2);
            L_255(L_558.CurrentValue);
        end;
        return ;
    end);
    local L_562 = L_199:CreateToggle({
        Name = "Create Item On Death",
        CurrentValue = false,
        Flag = "Create_Item_On_Death",
        Callback = function(L_561, ...)
            L_559 = L_561;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_562.Flag] = L_562;
    local L_563 = nil;
    local L_564 = 0;
    local L_566 = L_199:CreateToggle({
        Name = "Create Item Loop",
        CurrentValue = false,
        Flag = "Create_Item_Loop",
        Callback = function(L_565, ...)
            if not L_565 then
                if L_563 then
                    L_563:Disconnect();
                    L_563 = nil;
                end;
            else
                L_563 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_564 < 0.1) then
                        L_564 = tick();
                        L_255(L_558.CurrentValue);
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_566.Flag] = L_566;
    local L_568 = L_200:CreateDropdown({
        Name = "Select Fruit to Eat",
        Options = L_224,
        CurrentOption = { "Lemon" },
        MultipleOptions = false,
        Flag = "Select_Eat_Fruit",
        Callback = function(L_567, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_568.Flag] = L_568;
    local L_570 = L_200:CreateSlider({
        Name = "Auto Eat HP",
        Range = { 1, 100 },
        Increment = 1,
        Suffix = "",
        CurrentValue = 80,
        Flag = "Auto_Eat_HP",
        Callback = function(L_569, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_570.Flag] = L_570;
    local L_572 = L_200:CreateSlider({
        Name = "Auto Eat Speed (CPS based)",
        Range = { 1, 100 },
        Increment = 1,
        Suffix = "",
        CurrentValue = 25,
        Flag = "Auto_Eat_Rate",
        Callback = function(L_571, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_572.Flag] = L_572;
    local L_573 = 0;
    local L_580 = function(L_574, ...)
        local L_575 = nil;
        local L_576 = next;
        local L_577 = L_186.Data.inventory;
        local L_578 = nil;
        while true do
            local L_579;
            L_578, L_579 = L_576(L_577, L_578);
            if not L_578 then
                break;
            end;
            if L_579.name == L_574 then
                L_575 = L_578;
            end;
        end;
        return L_575;
    end;
    local L_582 = function(...)
        local L_581 = L_580(L_568.CurrentOption[1]);
        if L_581 then
            L_373.UseBagItem.send(L_581);
        end;
        return ;
    end;
    local L_583 = nil;
    local L_585 = L_200:CreateToggle({
        Name = "Fill Your Stomatch :)",
        CurrentValue = false,
        Flag = "Auto_Eat",
        Callback = function(L_584, ...)
            if not L_584 then
                if L_583 then
                    L_583:Disconnect();
                    L_583 = nil;
                end;
            else
                L_583 = L_188.Heartbeat:Connect(function(...)
                    if L_186.Data.stats.food < L_570.CurrentValue and tick() - L_573 > 1 / L_572.CurrentValue then
                        L_582();
                        L_573 = tick();
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_585.Flag] = L_585;
    L_200:CreateDivider();
    task.wait(0.05);
    local L_587 = L_200:CreateDropdown({
        Name = "Select Fruit to Heal",
        Options = L_224,
        CurrentOption = { "Bloodfruit" },
        MultipleOptions = false,
        Flag = "Heal_Fruit",
        Callback = function(L_586, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_587.Flag] = L_587;
    local L_589 = L_200:CreateSlider({
        Name = "Auto Heal HP",
        Range = { 1, 100 },
        Increment = 1,
        Suffix = "",
        CurrentValue = 80,
        Flag = "Auto_Heal_HP",
        Callback = function(L_588, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_589.Flag] = L_589;
    local L_591 = L_200:CreateSlider({
        Name = "Auto Heal Speed (CPS based)",
        Range = { 1, 100 },
        Increment = 1,
        Suffix = "",
        CurrentValue = 25,
        Flag = "Auto_Heal_Rate",
        Callback = function(L_590, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_591.Flag] = L_591;
    local L_592 = 0;
    local L_594 = function(...)
        local L_593 = L_580(L_587.CurrentOption[1]);
        if L_593 then
            L_373.UseBagItem.send(L_593);
        end;
        return ;
    end;
    local L_595 = nil;
    local L_597 = L_200:CreateToggle({
        Name = "Auto Heal",
        CurrentValue = false,
        Flag = "Auto_Heal_Toggle",
        Callback = function(L_596, ...)
            if not L_596 then
                if L_595 then
                    L_595:Disconnect();
                    L_595 = nil;
                end;
            else
                L_595 = L_188.Heartbeat:Connect(function(...)
                    if L_189.Character.Humanoid.Health < L_589.CurrentValue and tick() - L_592 > 1 / L_591.CurrentValue then
                        L_594();
                        L_592 = tick();
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_597.Flag] = L_597;
    if not L_197() then
        local L_599 = L_200:CreateKeybind({
            Name = "Auto Heal Key",
            CurrentKeybind = "Q",
            HoldToInteract = false,
            Flag = "Auto_Heal_Key",
            Callback = function(L_598, ...)
                L_597:Set(not L_597.CurrentValue);
                return ;
            end
        });
        task.wait(0.05);
        L_190[L_599.Flag] = L_599;
    end;
    L_200:CreateDivider();
    task.wait(0.05);
    local L_612 = function(...)
        local L_600 = game.Players.LocalPlayer;
        local L_601 = L_600.Character;
        if L_601 and L_601:FindFirstChild("HumanoidRootPart") then
            local L_602 = L_601.HumanoidRootPart;
            local L_603 = {};
            local L_604 = { pairs(game.Players:GetPlayers()) };
            local L_605 = L_604[2];
            local L_606 = L_604[3];
            local L_607 = L_604[1];
            while true do
                local L_608;
                L_606, L_608 = L_607(L_605, L_606);
                if not L_606 then
                    break;
                end;
                if L_608 ~= L_600 and (L_608.Character and L_608.Character:FindFirstChild("HumanoidRootPart")) then
                    local L_609 = L_608.Character.HumanoidRootPart;
                    if (L_609.Position - L_602.Position).Magnitude <= 15 then
                        local L_610 = (L_609.Position - L_602.Position).Unit;
                        local L_611 = L_602.CFrame.LookVector;
                        if math.deg(math.acos(L_611:Dot(L_610))) <= 90 then
                            table.insert(L_603, L_608.Character);
                        end;
                    end;
                end;
            end;
            return L_603;
        end;
        return {};
    end;
    local L_622 = function(L_613, ...)
        local L_614 = game.Players.LocalPlayer.Character;
        if L_614 then
            local L_615 = L_612();
            local L_616 = {};
            local L_617 = { ipairs(L_615) };
            local L_618 = L_617[3];
            local L_619 = L_617[1];
            local L_620 = L_617[2];
            while true do
                local L_621;
                L_618, L_621 = L_619(L_620, L_618);
                if not L_618 then
                    break;
                end;
                if (L_614:GetPivot().Position - L_621:GetPivot().Position).Magnitude <= L_613 then
                    table.insert(L_616, L_621:GetAttribute("EntityID"));
                end;
            end;
            if #L_616 > 0 then
                L_183.playAnimation("Slash");
                L_373.SwingTool.send(L_616);
            end;
            return ;
        end;
        return ;
    end;
    local L_623 = nil;
    local L_624 = false;
    local L_625 = 0;
    local L_627 = L_200:CreateToggle({
        Name = "Kill Aura",
        CurrentValue = false,
        Flag = "Kill_Aura",
        Callback = function(L_626, ...)
            if not L_626 then
                if L_623 then
                    L_623:Disconnect();
                    L_623 = nil;
                end;
            else
                L_623 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_625 < 0.1) then
                        L_625 = tick();
                        if not L_624 then
                            L_624 = true;
                            L_622(10);
                            task.wait(0.35);
                            L_624 = false;
                            return ;
                        end;
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_627.Flag] = L_627;
    if not L_197() then
        local L_629 = L_200:CreateKeybind({
            Name = "Kill Aura Key",
            CurrentKeybind = "E",
            HoldToInteract = false,
            Flag = "Kill_Aura_Keybind",
            Callback = function(L_628, ...)
                L_627:Set(not L_627.CurrentValue);
                return ;
            end
        });
        task.wait(0.05);
        L_190[L_629.Flag] = L_629;
    end;
    if not L_197() then
        local L_630 = L_189;
        local L_631 = L_630:GetMouse();
        local L_632 = nil;
        local L_633 = nil;
        local L_634 = nil;
        local L_635 = true;
        local L_636 = { "None", "Chest" };
        local L_637 = 1;
        local L_638 = L_636[L_637];
        local L_639 = 0;
        local L_640 = -0.06;
        local L_642 = function(...)
            L_632 = nil;
            if L_633 then
                L_633:Disconnect();
                L_633 = nil;
            end;
            if L_634 then
                L_634:Destroy();
                L_634 = nil;
            end;
            local L_641 = L_630.PlayerGui:FindFirstChild("PlayerSelectGui");
            if L_641 then
                L_641:Destroy();
            end;
            return ;
        end;
        local L_649 = function(L_643, ...)
            local L_644 = L_643:FindFirstChild("LowerTorso");
            local L_645 = L_643:FindFirstChild("LeftFoot");
            local L_646 = L_643:FindFirstChild("RightFoot");
            local L_647 = L_645;
            if L_645 then
                L_647 = L_646;
            end;
            if not L_647 then
                if not L_644 then
                    local L_648 = L_643:FindFirstChild("HumanoidRootPart");
                    if not L_648 then
                        return nil;
                    end;
                    return L_648.Position - Vector3.new(0, 3, 0);
                end;
                return L_644.Position - Vector3.new(0, L_644.Size.Y / 2, 0);
            end;
            return (L_645.Position + L_646.Position) / 2;
        end;
        local L_651 = function(...)
            local L_650 = 0.3 - L_630:GetNetworkPing() * 1000 * 0.001;
            return math.clamp(L_650 + L_640 + L_639, 0.05, 0.4);
        end;
        local L_661 = function(L_652, ...)
            local L_653 = L_652;
            local L_654 = L_653:FindFirstChild("HumanoidRootPart");
            if L_654 then
                local L_655 = 0;
                if L_633 then
                    L_633:Disconnect();
                end;
                L_633 = L_188.Heartbeat:Connect(function(...)
                    if L_632 and L_632.Character then
                        local L_656 = L_654.Velocity.Y;
                        if L_656 > -0.2 and L_655 <= -0.2 then
                            task.wait(L_651());
                            if not L_632 or not L_632.Character then
                                return ;
                            end;
                            local L_657 = L_649(L_653);
                            if L_657 then
                                local L_658 = L_657 + Vector3.new(L_654.Velocity.X, 0, L_654.Velocity.Z).Unit * 4;
                                local L_659 = workspace:Raycast(L_658, Vector3.new(0, -10, 0));
                                local L_660 = L_659;
                                if L_659 then
                                    L_660 = (L_657 - L_659.Position).Magnitude <= 10;
                                end;
                                if L_660 then
                                    L_344("Reinforced Chest", CFrame.new(L_659.Position));
                                end;
                            end;
                        end;
                        L_655 = L_656;
                        return ;
                    end;
                    L_642();
                    return ;
                end);
                return ;
            end;
            return ;
        end;
        local L_665 = function(...)
            local L_662 = L_630.PlayerGui:FindFirstChild("PlayerSelectGui");
            if L_662 then
                L_662:Destroy();
            end;
            local L_663 = Instance.new("ScreenGui", L_630.PlayerGui);
            L_663.Name = "PlayerSelectGui";
            local L_664 = Instance.new("TextButton", L_663);
            L_664.Name = "UnselectButton";
            L_664.Size = UDim2.new(0, 200, 0, 50);
            L_664.Position = UDim2.new(0.5, -100, 0.9, -25);
            L_664.Text = "Unselect Player";
            L_664.MouseButton1Click:Connect(L_642);
            return ;
        end;
        local L_667 = function(L_666, ...)
            if L_634 then
                L_634:Destroy();
            end;
            if L_666 then
                L_634 = Instance.new("Highlight", L_666);
                L_634.FillColor = Color3.new(1, 0, 0);
                L_634.FillTransparency = 0.5;
                L_634.OutlineColor = Color3.new(1, 1, 1);
                L_634.OutlineTransparency = 0;
            end;
            return ;
        end;
        local L_669 = function(L_668, ...)
            if L_668 and L_668.Character then
                L_642();
                L_632 = L_668;
                L_667(L_668.Character);
                L_665();
                if L_638 == "Chest" then
                    L_661(L_668.Character);
                end;
                return ;
            end;
            return ;
        end;
        local L_673 = function(L_670, ...)
            local L_671 = L_670;
            if L_670 then
                L_671 = L_670.Parent and L_670.Parent:FindFirstChild("Humanoid");
            end;
            if L_671 then
                local L_672 = game.Players:GetPlayerFromCharacter(L_670.Parent);
                if L_672 then
                    if L_632 ~= L_672 then
                        L_669(L_672);
                    else
                        L_642();
                    end;
                end;
            end;
            return ;
        end;
        L_631.Button1Down:Connect(function(...)
            if L_635 then
                L_673(L_631.Target);
                return ;
            end;
            return ;
        end);
        local L_675 = L_201:CreateToggle({
            Name = "Enable Auto Action",
            CurrentValue = true,
            Flag = "AutoAction_Enabled",
            Callback = function(L_674, ...)
                L_635 = L_674;
                if not L_674 then
                    L_642();
                end;
                return ;
            end
        });
        task.wait(0.05);
        L_190[L_675.Flag] = L_675;
        local L_676 = L_201:CreateSection("Mode: " .. L_638);
        task.wait(0.05);
        L_201:CreateButton({
            Name = "Cycle Mode",
            Callback = function(...)
                L_637 = L_637 % #L_636 + 1;
                L_638 = L_636[L_637];
                L_676:Set("Mode: " .. L_638);
                if L_632 then
                    L_669(L_632);
                end;
                return ;
            end
        });
        L_201:CreateSection("--- Chest Settings ---");
        task.wait(0.05);
        local L_677 = L_201:CreateSection("Current Delay: 0s");
        task.wait(0.05);
        local L_678 = true;
        local L_679 = L_201:CreateKeybind({
            Name = "Auto Chest Key",
            CurrentKeybind = "B",
            HoldToInteract = false,
            Flag = "AutoChest_Keybind",
            Callback = function(...)
                L_678 = not L_678;
                return ;
            end
        });
        task.wait(0.05);
        L_190[L_679.Flag] = L_679;
        local L_681 = L_201:CreateSlider({
            Name = "Delay Offset",
            Range = { 0, 0.2 },
            Increment = 0.01,
            Suffix = "s",
            CurrentValue = L_639,
            Flag = "AutoChest_DelayOffset",
            Callback = function(L_680, ...)
                L_639 = L_680;
                return ;
            end
        });
        task.wait(0.05);
        L_190[L_681.Flag] = L_681;
        L_188.Heartbeat:Connect(function(...)
            local L_682 = L_651();
            L_677:Set("Current Delay: " .. string.format("%.3f", L_682) .. "s");
            return ;
        end);
    end;
    local L_684 = L_202:CreateInput({
        Name = "Config Name!",
        CurrentValue = " ",
        PlaceholderText = "Hentai_Bondage",
        RemoveTextAfterFocusLost = false,
        Flag = "Config_Name_Input",
        Callback = function(L_683, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_684.Flag] = L_684;
    local L_693 = function(...)
        local L_685 = listfiles(L_205) or {};
        local L_686 = {};
        local L_687 = { ipairs(L_685) };
        local L_688 = L_687[3];
        local L_689 = L_687[2];
        local L_690 = L_687[1];
        while true do
            local L_691;
            L_688, L_691 = L_690(L_689, L_688);
            if not L_688 then
                break;
            end;
            local L_692 = L_691:match("([^/\\]+)%.json$");
            if L_692 then
                table.insert(L_686, L_692);
            end;
        end;
        return L_686;
    end;
    local L_695 = L_202:CreateDropdown({
        Name = "Select Config",
        Options = L_693(),
        CurrentOption = { "L_Gold" },
        MultipleOptions = false,
        Flag = "Select_Config_Dropdown",
        Callback = function(L_694, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_695.Flag] = L_695;
    local L_724 = function(...)
        local L_696 = {};
        local L_697 = { pairs(L_218) };
        local L_698 = L_697[3];
        local L_699 = L_697[1];
        local L_700 = L_697[2];
        while true do
            local L_701;
            L_698, L_701 = L_699(L_700, L_698);
            if not L_698 then
                break;
            end;
            L_696[L_698] = L_261(L_701);
        end;
        local L_702 = {};
        local L_703 = { pairs(L_220) };
        local L_704 = L_703[3];
        local L_705 = L_703[2];
        local L_706 = L_703[1];
        while true do
            local L_707;
            L_704, L_707 = L_706(L_705, L_704);
            if not L_704 then
                break;
            end;
            L_702[tostring(L_704)] = L_707;
        end;
        local L_708 = {};
        local L_709 = { pairs(L_219) };
        local L_710 = L_709[2];
        local L_711 = L_709[1];
        local L_712 = L_709[3];
        while true do
            local L_713;
            L_712, L_713 = L_711(L_710, L_712);
            if not L_712 then
                break;
            end;
            L_708[tostring(L_712)] = L_713;
        end;
        local L_714 = {};
        local L_715 = { pairs(L_190) };
        local L_716 = L_715[2];
        local L_717 = L_715[1];
        local L_718 = L_715[3];
        while true do
            local L_719;
            L_718, L_719 = L_717(L_716, L_718);
            if not L_718 then
                break;
            end;
            L_714[L_718] = L_719.CurrentOption or L_719.CurrentValue;
        end;
        local L_720 = { positions = L_696, functions = L_702, Numbero = L_708, uiSettings = L_714 };
        local L_721 = L_695.CurrentOption[1];
        local L_722 = game:GetService("HttpService"):JSONEncode(L_720);
        local L_723 = ToNumericalString(L_722);
        writefile(string.format("%s/%s.json", L_205, L_721), L_723);
        L_180:Notify({ Title = "L : yeppi!", Content = string.format("Saved to %s", L_721), Duration = 6.5, Image = 4483362458 });
        return ;
    end;
    L_202:CreateButton({
        Name = "Create Config",
        Callback = function(L_725, ...)
            local L_726 = L_684.CurrentValue;
            local L_727 = string.format("%s/%s.json", L_205, L_726);
            if not isfile(L_727) then
                writefile(L_727, ToNumericalString("{}"));
                L_180:Notify({ Title = "L : Yeppi", Content = "Config created!", Duration = 6.5, Image = 4483362458 });
                L_695:Refresh(L_693());
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_202:CreateButton({
        Name = "Refresh Configs",
        Callback = function(L_728, ...)
            L_695:Refresh(L_693());
            L_180:Notify({ Title = "Refreshed", Content = "Configs refreshed", Duration = 6.5, Image = 4483362458 });
            return ;
        end
    });
    task.wait(0.05);
    local L_730 = L_202:CreateSlider({
        Name = "Tween Speed",
        Range = { 0, 24 },
        Increment = 0.1,
        Suffix = "Speed",
        CurrentValue = 21,
        Flag = "Tween_Speed",
        Callback = function(L_729, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_730.Flag] = L_730;
    local L_731 = 21;
    local L_732 = "Switch Item";
    local L_733 = "Wait";
    local L_734 = "Change Speed";
    local L_739 = {
        [L_732] = function(L_735, ...)
            L_373.EquipTool.send(L_219[L_735]);
            return ;
        end,
        [L_733] = function(L_736, ...)
            L_221 = tonumber(L_219[L_736]);
            return ;
        end,
        [L_734] = function(L_737, ...)
            local L_738 = tonumber(L_219[L_737]);
            if L_738 then
                L_731 = L_738;
            end;
            return ;
        end
    };
    local L_740 = false;
    local L_744 = function(L_741, ...)
        if not L_740 then
            L_740 = true;
            local L_742 = L_220[L_741];
            local L_743 = L_742;
            if L_742 then
                L_743 = L_739[L_742];
            end;
            if L_743 then
                L_739[L_742](L_741);
            end;
            return ;
        end;
        return ;
    end;
    local L_745 = 1;
    local L_755 = function(L_746, ...)
        local L_747 = L_189.Character or L_189.CharacterAdded:Wait();
        if L_747 then
            local L_748 = L_747:FindFirstChild("HumanoidRootPart");
            if L_748 then
                if not (#L_218 < 1) then
                    local L_749 = L_747:FindFirstChild("Humanoid");
                    if L_749 then
                        local L_750 = L_731;
                        local L_751 = L_218[L_745].Position - L_748.Position;
                        local L_752 = L_751.Magnitude;
                        if not L_740 then
                            if not (L_752 > 0.5) then
                                L_744(L_745);
                                if not (L_221 > 0) then
                                    L_745 = L_745 + 1;
                                    if L_745 > #L_218 then
                                        L_745 = 1;
                                    end;
                                    L_740 = false;
                                else
                                    task.delay(L_221, function(...)
                                        L_221 = 0;
                                        L_745 = L_745 + 1;
                                        if L_745 > #L_218 then
                                            L_745 = 1;
                                        end;
                                        L_740 = false;
                                        return ;
                                    end);
                                end;
                            else
                                local L_753 = L_751.Unit;
                                L_748.Velocity = Vector3.new(0, 0, 0);
                                L_749.WalkSpeed = L_750;
                                L_749:Move(L_753, false);
                                local L_754 = L_753 * L_750 * L_746;
                                L_748.CFrame = L_748.CFrame + L_754;
                            end;
                            return ;
                        end;
                        return ;
                    end;
                    return ;
                end;
                return ;
            end;
            return ;
        end;
        return ;
    end;
    local L_756 = nil;
    local L_759 = L_202:CreateToggle({
        Name = "Start Tweening",
        CurrentValue = false,
        Flag = "Start_Tween",
        Callback = function(L_757, ...)
            if not L_757 then
                if L_756 then
                    L_756:Disconnect();
                    L_756 = nil;
                    L_745 = 1;
                end;
            else
                L_731 = L_730.CurrentValue;
                L_756 = L_188.Heartbeat:Connect(function(L_758, ...)
                    L_755(L_758);
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_759.Flag] = L_759;
    L_202:CreateDivider();
    task.wait(0.05);
    local L_764 = function(L_760, L_761, ...)
        if L_760 and L_760.Parent then
            if L_760:FindFirstChild("NumLabel") then
                L_760:FindFirstChild("NumLabel"):Destroy();
            end;
            local L_762 = Instance.new("BillboardGui", L_760);
            L_762.Name = "NumLabel";
            L_762.AlwaysOnTop = false;
            L_762.Size = UDim2.new(0, 50, 0, 25);
            L_762.StudsOffset = Vector3.new(0, 3, 0);
            local L_763 = Instance.new("TextLabel", L_762);
            L_763.Size = UDim2.new(1, 0, 1, 0);
            L_763.BackgroundTransparency = 1;
            L_763.TextScaled = true;
            L_763.Text = tostring(L_761);
            L_763.TextColor3 = Color3.new(1, 1, 1);
            return ;
        end;
        return ;
    end;
    local L_766 = function(L_765, ...)
        return ;
    end;
    local L_772 = function(L_767, L_768, ...)
        local L_769 = game.Players.LocalPlayer;
        if L_769 then
            L_769 = L_769.Character;
        end;
        if L_769 and L_769:FindFirstChild("HumanoidRootPart") then
            if not L_768 then
                L_768 = L_769.HumanoidRootPart.CFrame;
            end;
            table.insert(L_218, L_768);
            local L_770 = #L_218;
            local L_771 = Instance.new("Part");
            L_771.Size = Vector3.new(0.1, 0.1, 0.1);
            L_771.Anchored = true;
            L_771.CanCollide = false;
            L_771.CFrame = L_768;
            L_771.Transparency = 0;
            L_771.Material = "Neon";
            L_771.Color = Color3.fromRGB(0, 255, 255);
            L_771.Parent = L_206;
            L_771.Name = tostring(L_770);
            L_764(L_771, L_770);
            table.insert(L_217, L_771);
            return ;
        end;
        return ;
    end;
    local L_775 = function(...)
        if #L_218 > 0 then
            local L_773 = #L_218;
            table.remove(L_218, L_773);
            table.remove(L_217, L_773);
            local L_774 = L_206:FindFirstChild(tostring(L_773));
            if L_774 then
                L_774:Destroy();
            end;
        end;
        return ;
    end;
    L_202:CreateButton({
        Name = "Add Point",
        Callback = function(L_776, ...)
            L_772(1.5);
            return ;
        end
    });
    task.wait(0.05);
    L_202:CreateButton({
        Name = "Remove Last Point",
        Callback = function(L_777, ...)
            L_775();
            return ;
        end
    });
    task.wait(0.05);
    local L_779 = L_202:CreateDropdown({
        Name = "Select Point to Bring",
        Options = L_213(),
        CurrentOption = { "None" },
        MultipleOptions = false,
        Flag = "Select_Point_To_Bring",
        Callback = function(L_778, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_779.Flag] = L_779;
    L_202:CreateButton({
        Name = "Reload Points",
        Callback = function(L_780, ...)
            L_779:Refresh(L_213());
            return ;
        end
    });
    task.wait(0.05);
    L_202:CreateButton({
        Name = "Bring Selected Point",
        Callback = function(L_781, ...)
            local L_782 = L_779.CurrentOption[1];
            local L_783 = L_206:FindFirstChild(L_782);
            if L_783 then
                local L_784 = L_189.Character.HumanoidRootPart;
                L_783.CFrame = L_784.CFrame;
                L_218[tonumber(L_782)] = L_784.CFrame;
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_202:CreateDivider();
    task.wait(0.1);
    L_202:CreateButton({
        Name = "Save Selected Config",
        Callback = function(L_785, ...)
            L_724();
            return ;
        end
    });
    task.wait(0.05);
    local L_792 = function(L_786, L_787, ...)
        if L_787 then
            if L_787:FindFirstChild("Function") then
                L_787:FindFirstChild("Function"):Destroy();
            end;
            local L_788 = Instance.new("BillboardGui", L_787);
            L_788.Size = UDim2.new(4, 0, 2, 0);
            L_788.StudsOffset = Vector3.new(0, 7, 0);
            L_788.Name = "Function";
            local L_789 = Instance.new("TextLabel", L_788);
            L_789.Size = UDim2.new(1, 0, 1, 0);
            L_789.BackgroundTransparency = 1;
            L_789.TextScaled = true;
            L_789.TextColor3 = Color3.new(1, 1, 1);
            local L_790 = L_220[L_786];
            local L_791 = "Text";
            if not L_790 then
                L_790 = "No Function";
            end;
            L_789[L_791] = L_790;
            return ;
        end;
        return ;
    end;
    local L_817 = function(...)
        local L_793 = L_695.CurrentOption[1];
        local L_794 = string.format("%s/%s.json", L_205, L_793);
        if isfile(L_794) then
            local L_795 = readfile(L_794);
            if string.sub(L_795, 1, 1) ~= "{" then
                L_795 = FromNumericalString(L_795);
            end;
            local L_796 = { pcall(L_187.JSONDecode, L_187, L_795) };
            local L_797 = L_796[2];
            if L_796[1] and type(L_797) == "table" then
                local L_798 = { ipairs(L_206:GetChildren()) };
                local L_799 = L_798[3];
                local L_800 = L_798[1];
                local L_801 = L_798[2];
                while true do
                    local L_802;
                    L_799, L_802 = L_800(L_801, L_799);
                    if not L_799 then
                        break;
                    end;
                    L_802:Destroy();
                end;
                L_217 = {};
                L_218 = {};
                L_219 = {};
                L_220 = {};
                if L_797.positions then
                    local L_803 = { ipairs(L_797.positions) };
                    local L_804 = L_803[1];
                    local L_805 = L_803[3];
                    local L_806 = L_803[2];
                    while true do
                        local L_807;
                        L_805, L_807 = L_804(L_806, L_805);
                        if not L_805 then
                            break;
                        end;
                        local L_808 = L_268(L_807);
                        if L_808 then
                            L_772(1.5, L_808);
                            local L_809 = L_797.functions and L_797.functions[tostring(L_805)];
                            if L_809 then
                                L_220[L_805] = L_809;
                                L_792(L_805, L_206:FindFirstChild(tostring(L_805)));
                            end;
                            local L_810 = L_797.Numbero and L_797.Numbero[tostring(L_805)];
                            if L_810 then
                                L_219[L_805] = L_810;
                            end;
                        end;
                    end;
                end;
                if L_797.uiSettings then
                    local L_811 = { pairs(L_797.uiSettings) };
                    local L_812 = L_811[2];
                    local L_813 = L_811[1];
                    local L_814 = L_811[3];
                    while true do
                        local L_815;
                        L_814, L_815 = L_813(L_812, L_814);
                        if not L_814 then
                            break;
                        end;
                        local L_816 = L_190[L_814];
                        if L_816 then
                            L_816:Set(L_815);
                        end;
                    end;
                end;
                print("\226\156\133 Config Loaded");
                L_180:Notify({ Title = "L : Loaded", Content = "Config Loaded Successfully", Duration = 6.5, Image = 4483362458 });
                return ;
            end;
            L_180:Notify({ Title = "L : Error", Content = "Config Corrupt", Duration = 6.5, Image = 4483362458 });
            return ;
        end;
        L_180:Notify({ Title = "L : hey!", Content = "Config not found.", Duration = 6.5, Image = 4483362458 });
        return ;
    end;
    L_202:CreateButton({
        Name = "Load Selected Config",
        Callback = function(L_818, ...)
            L_817();
            return ;
        end
    });
    task.wait(0.05);
    L_202:CreateButton({
        Name = "Delete Selected Config",
        Callback = function(L_819, ...)
            local L_820 = L_695.CurrentOption[1];
            local L_821 = string.format("%s/%s.json", L_205, L_820);
            if isfile(L_821) then
                delfile(L_821);
                L_695:Refresh(L_693());
            end;
            return ;
        end
    });
    task.wait(0.05);
    local L_830 = L_203:CreateDropdown({
        Name = "Select Point",
        Options = {},
        CurrentOption = { "Rape_China!" },
        MultipleOptions = false,
        Flag = "Select_Point_Custom",
        Callback = function(L_822, ...)
            local L_823 = L_206:FindFirstChild(tonumber(L_822[1]));
            if L_823 then
                local L_824 = L_823.GetChildren;
                local L_825 = { pairs(L_824(L_823)) };
                local L_826 = L_825[1];
                local L_827 = L_825[2];
                local L_828 = L_825[3];
                while true do
                    local L_829;
                    L_828, L_829 = L_826(L_827, L_828);
                    if not L_828 then
                        break;
                    end;
                    if L_829:IsA("BasePart") then
                        L_829.Color = Color3.fromRGB(255, 255, 0);
                    end;
                end;
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_830.Flag] = L_830;
    L_203:CreateButton({
        Name = "Reload Points",
        Callback = function(L_831, ...)
            L_830:Refresh(L_213());
            return ;
        end
    });
    task.wait(0.05);
    L_203:CreateDivider();
    task.wait(0.05);
    local L_833 = L_203:CreateDropdown({
        Name = "Select Function to Assign",
        Options = { "Switch Item", "Wait", "Change Speed" },
        CurrentOption = { "Rape_Israel!" },
        MultipleOptions = false,
        Flag = "Select_Function_Assign",
        Callback = function(L_832, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_833.Flag] = L_833;
    local L_835 = L_203:CreateInput({
        Name = "Seconds for Wait or Tool Number",
        CurrentValue = "",
        PlaceholderText = "0",
        RemoveTextAfterFocusLost = false,
        Flag = "Func_Number_Input",
        Callback = function(L_834, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_835.Flag] = L_835;
    L_203:CreateDivider();
    task.wait(0.05);
    L_203:CreateButton({
        Name = "Assign the Function",
        Callback = function(L_836, ...)
            local L_837 = L_833.CurrentOption[1];
            local L_838 = tonumber(L_835.CurrentValue);
            local L_839 = tonumber(L_830.CurrentOption[1]);
            if L_837 and L_838 then
                if L_837 ~= "Switch Item" or not (L_838 > 6) and not (L_838 < 1) then
                    L_219[L_839] = L_838;
                    L_220[L_839] = L_837;
                    local L_840 = L_206:FindFirstChild(tostring(L_839));
                    L_792(L_839, L_840);
                    return ;
                end;
                return ;
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_204:CreateButton({
        Name = "Teleport to Void",
        Callback = function(...)
            game:GetService("TeleportService"):TeleportToPlaceInstance(11879754496, 11879754496, L_189);
            return ;
        end
    });
    task.wait(0.05);
    L_204:CreateDivider();
    task.wait(0.05);
    local L_842 = L_204:CreateInput({
        Name = "Item Name",
        CurrentValue = "",
        PlaceholderText = "Turkish.Porn",
        RemoveTextAfterFocusLost = false,
        Flag = "Item_Name_Craft_Util",
        Callback = function(L_841, ...)
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_842.Flag] = L_842;
    L_204:CreateButton({
        Name = "Create Item",
        Callback = function(L_843, ...)
            L_255(L_842.CurrentValue);
            return ;
        end
    });
    task.wait(0.05);
    local L_847 = function(...)
        L_373.RodBubble.listen(function(L_844, ...)
            if L_844.should_bubble then
                L_373.RodEnd.send();
            end;
            return ;
        end);
        task.spawn(function(...)
            local L_845 = game.Players.LocalPlayer:GetMouse();
            local L_846 = workspace.CurrentCamera:ScreenPointToRay(L_845.X, L_845.Y);
            L_373.RodSwing.send({ origin = L_846.Origin, direction = L_846.Direction * 2000 });
            return ;
        end);
        return ;
    end;
    local L_848 = false;
    local L_849 = nil;
    local L_851 = L_204:CreateToggle({
        Name = "Auto Fish",
        CurrentValue = false,
        Flag = "Auto_Fish_Util",
        Callback = function(L_850, ...)
            if not L_850 then
                if L_849 then
                    L_849:Disconnect();
                    L_849 = nil;
                end;
            else
                L_849 = L_188.Heartbeat:Connect(function(...)
                    if not L_848 then
                        L_848 = true;
                        L_847();
                        task.wait(1);
                        L_848 = false;
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_851.Flag] = L_851;
    L_204:CreateDivider();
    task.wait(0.05);
    L_204:CreateSection("Auto Potions");
    task.wait(0.05);
    local L_860 = function(...)
        local L_852 = game.Players.LocalPlayer;
        local L_853 = workspace.CurrentCamera;
        local L_854 = RaycastParams.new();
        L_854.FilterDescendantsInstances = { L_852.Character };
        L_854.FilterType = Enum.RaycastFilterType.Exclude;
        local L_855 = game:GetService("UserInputService"):GetMouseLocation();
        local L_856 = L_853:ScreenPointToRay(L_855.X, L_855.Y);
        local L_857 = workspace:Raycast(L_856.Origin, L_856.Direction * 500, L_854);
        if L_857 then
            local L_858 = { point = L_857.Position };
            local L_859 = L_857.Instance.Parent:GetAttribute("EntityID");
            if L_859 then
                L_858.mound = L_859;
            end;
            L_373.Dig.send(L_858);
        end;
        return ;
    end;
    local L_861 = nil;
    local L_862 = 0;
    local L_864 = L_204:CreateToggle({
        Name = "Dig Sands",
        CurrentValue = false,
        Flag = "Dig_Sand_Util",
        Callback = function(L_863, ...)
            if not L_863 then
                if L_861 then
                    L_861:Disconnect();
                    L_861 = nil;
                end;
            else
                L_861 = L_188.Heartbeat:Connect(function(...)
                    if not (tick() - L_862 < 0.25) then
                        L_862 = tick();
                        L_860();
                        return ;
                    end;
                    return ;
                end);
            end;
            return ;
        end
    });
    task.wait(0.05);
    L_190[L_864.Flag] = L_864;
    return ;
end;
