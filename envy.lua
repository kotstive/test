local envy = Instance.new("ScreenGui")
local main = Instance.new("ScrollingFrame")
local fly = Instance.new("TextButton")
local speed = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local btools = Instance.new("TextButton")
local gm = Instance.new("TextButton")
local logo = Instance.new("TextLabel")

-- Properties

envy.Name = "envy"
envy.Parent = game.Workspace.MainModule
envy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = envy
main.Active = true
main.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
main.BorderSizePixel = 2
main.Position = UDim2.new(0.488533884, 0, 0.278443098, 0)
main.Size = UDim2.new(0, 169, 0, 255)
main.ScrollBarThickness = 9

fly.Name = "fly"
fly.Parent = main
fly.BackgroundColor3 = Color3.new(0, 0, 0)
fly.Position = UDim2.new(-0.00467008166, 0, 0.111152686, 0)
fly.Size = UDim2.new(0, 164, 0, 50)
fly.Font = Enum.Font.Unknown
fly.Text = "fly"
fly.TextColor3 = Color3.new(0, 0.666667, 0)
fly.TextScaled = true
fly.TextSize = 10
fly.TextWrapped = true

speed.Name = "speed"
speed.Parent = main
speed.BackgroundColor3 = Color3.new(0, 0, 0)
speed.Position = UDim2.new(-0.0263426285, 0, 0.0557341278, 0)
speed.Size = UDim2.new(0, 164, 0, 50)
speed.Font = Enum.Font.Unknown
speed.Text = "speed"
speed.TextColor3 = Color3.new(0, 0.666667, 0)
speed.TextScaled = true
speed.TextSize = 10
speed.TextWrapped = true

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 159, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "World"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextButton.Parent = main
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Position = UDim2.new(-0.0295857992, 0, 0.58431375, 0)
TextButton.Size = UDim2.new(0, 164, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Btools"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 14

btools.Name = "btools"
btools.Parent = main
btools.BackgroundColor3 = Color3.new(0, 0, 0)
btools.Position = UDim2.new(-0.00467008166, 0, 0.167290404, 0)
btools.Size = UDim2.new(0, 164, 0, 50)
btools.Font = Enum.Font.Unknown
btools.Text = "noclip"
btools.TextColor3 = Color3.new(0, 0.666667, 0)
btools.TextScaled = true
btools.TextSize = 10
btools.TextWrapped = true

gm.Name = "gm"
gm.Parent = main
gm.BackgroundColor3 = Color3.new(0, 0, 0)
gm.Position = UDim2.new(0.00916033052, 0, 0.223024547, 0)
gm.Size = UDim2.new(0, 164, 0, 50)
gm.Font = Enum.Font.Unknown
gm.Text = "Godmode"
gm.TextColor3 = Color3.new(0, 0.666667, 0)
gm.TextScaled = true
gm.TextSize = 10
gm.TextWrapped = true

logo.Name = "logo"
logo.Parent = envy
logo.BackgroundColor3 = Color3.new(1, 1, 1)
logo.BackgroundTransparency = 1
logo.Size = UDim2.new(0, 245, 0, 117)
logo.Font = Enum.Font.Unknown
logo.Text = "Envy 0.1"
logo.TextColor3 = Color3.new(0, 0, 0)
logo.TextSize = 68
logo.TextWrapped = true

-- Scripts

local function ZOXPYW_fake_script() -- fly.Button Script 
	local script = Instance.new('LocalScript', fly)

	script.Parent.MouseButton1Click:Connect(function()
	end)
	
end
coroutine.wrap(ZOXPYW_fake_script)()
local function OLJRTN_fake_script() -- fly.Flying Script 
	local script = Instance.new('LocalScript', fly)

	--Flying Script--
	script.parent.MouseButton1Down:connect(function()
		repeat wait() 
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
		local mouse = game.Players.LocalPlayer:GetMouse() 
		repeat wait() until mouse
		local plr = game.Players.LocalPlayer 
		local torso = plr.Character.Head 
		local flying = true --Making This False Will Not Work In Mobile--
		local deb = true 
		local ctrl = {f = 0, b = 0, l = 0, r = 0} 
		local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
		local maxspeed = 50 
		local speed = 0 
	
		function Fly() 
			local bg = Instance.new("BodyGyro", torso) 
			bg.P = 9e4 
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
			bg.cframe = torso.CFrame 
			local bv = Instance.new("BodyVelocity", torso) 
			bv.velocity = Vector3.new(0,0.1,0) 
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
			repeat wait() 
				plr.Character.Humanoid.PlatformStand = true 
				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
					speed = speed+.5+(speed/maxspeed) 
					if speed > maxspeed then 
						speed = maxspeed 
					end 
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
					speed = speed-1 
					if speed < 0 then 
						speed = 0 
					end 
				end 
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
				else 
					bv.velocity = Vector3.new(0,0.1,0) 
				end 
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
			until not flying 
			ctrl = {f = 0, b = 0, l = 0, r = 0} 
			lastctrl = {f = 0, b = 0, l = 0, r = 0} 
			speed = 0 
			bg:Destroy() 
			bv:Destroy() 
			plr.Character.Humanoid.PlatformStand = false 
		end 
		mouse.KeyDown:connect(function(key) 
			if key:lower() == "e" then 
				if flying then flying = false 
				else 
					flying = true 
					Fly() 
				end 
			elseif key:lower() == "w" then 
				ctrl.f = 1 
			elseif key:lower() == "s" then 
				ctrl.b = -1 
			elseif key:lower() == "a" then 
				ctrl.l = -1 
			elseif key:lower() == "d" then 
				ctrl.r = 1 
			end 
		end) 
		mouse.KeyUp:connect(function(key) 
			if key:lower() == "w" then 
				ctrl.f = 0 
			elseif key:lower() == "s" then 
				ctrl.b = 0 
			elseif key:lower() == "a" then 
				ctrl.l = 0 
			elseif key:lower() == "d" then 
				ctrl.r = 0 
			end 
		end)
		Fly()
	end)
end
coroutine.wrap(OLJRTN_fake_script)()
local function PJGH_fake_script() -- main.Drag 
	local script = Instance.new('LocalScript', main)

	
	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	dragify(script.Parent)
end
coroutine.wrap(PJGH_fake_script)()
local function QLWS_fake_script() -- speed.LocalScript 
	local script = Instance.new('LocalScript', speed)

	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed+=10
	end)
end
coroutine.wrap(QLWS_fake_script)()
local function VFFGS_fake_script() -- TextLabel.RainbowText 
	local script = Instance.new('Script', TextLabel)

	local text = script.Parent
	local add = 10
	wait(1)
	local k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(k/255,0/255,0/255)
	k = k + add
	wait()
	end
	while true do
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255,k/255,0/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255 - k/255,255/255,0/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(0/255,255/255,k/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(0/255,255/255 - k/255,255/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(k/255,0/255,255/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255,0/255,255/255 - k/255)
	k = k + add
	wait()
	end
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255 - k/255,0/255,0/255)
	k = k + add
	wait()
	end
	end
end
coroutine.wrap(VFFGS_fake_script)()
local function VERLZSG_fake_script() -- btools.LocalScript 
	local script = Instance.new('LocalScript', btools)

	local keys = {
		LeftShift = false,
	}
	game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
		if key == "0" then
			keys.LeftShift = true
		end
	end)
	game.Players.LocalPlayer:GetMouse().KeyUp:Connect(function(key)
		if key == "0" then
			keys.LeftShift = false
		end
	end)
	local hack = false
	script.Parent.MouseButton1Click:Connect(function()
		hack = not hack
		if hack then
			script.Parent.Text = "Noclip"
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,0,0)
			local humanoid = nil
			while hack do
				local fps = game["Run Service"].RenderStepped:Wait()
				if not humanoid or not humanoid.Parent or not humanoid.Parent.Parent then
					if game.Players.LocalPlayer.Character then
						if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
							humanoid = game.Players.LocalPlayer.Character.Humanoid
							if humanoid.RootPart then
								humanoid.RootPart.Anchored = true
							end
						end
					end
				else
					if humanoid.RootPart then
						humanoid.RootPart.Anchored = true
						local vel = humanoid.MoveDirection*humanoid.WalkSpeed
						if humanoid.Jump then
							vel = vel+Vector3.new(0,humanoid.WalkSpeed,0)
						end
						if keys.LeftShift then
							vel = vel+Vector3.new(0,-humanoid.WalkSpeed,0)
						end
						humanoid.RootPart.Velocity = ((humanoid.RootPart.Velocity-vel)*(0.75^(30/(1/fps))))+vel
						humanoid.RootPart.CFrame = (humanoid.RootPart.CFrame+(humanoid.RootPart.Velocity*fps))*CFrame.Angles(humanoid.RootPart.RotVelocity.X*fps,humanoid.RootPart.RotVelocity.Y*fps,humanoid.RootPart.RotVelocity.Z*fps)
					end
				end
			end
		else
			script.Parent.Text = "Noclip"
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,0,0)
			game["Run Service"].RenderStepped:Wait()
			game["Run Service"].RenderStepped:Wait()
			if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart then
				game.Players.LocalPlayer.Character.Humanoid.RootPart.Anchored = false
			end
		end
	end)
end
coroutine.wrap(VERLZSG_fake_script)()
local function NXUKU_fake_script() -- gm.LocalScript 
	local script = Instance.new('LocalScript', gm)

	local keys = {
		LeftShift = false,
	}
	game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(key)
		if key == "0" then
			keys.LeftShift = true
		end
	end)
	game.Players.LocalPlayer:GetMouse().KeyUp:Connect(function(key)
		if key == "0" then
			keys.LeftShift = false
		end
	end)
	local hack = false
	script.Parent.MouseButton1Click:Connect(function()
		hack = not hack
		if hack then
			script.Parent.Text = "GodMode"
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,0,0)
			local humanoid = nil
			while hack do
				local fps = game["Run Service"].RenderStepped:Wait()
				if not humanoid or not humanoid.Parent or not humanoid.Parent.Parent then
					if game.Players.LocalPlayer.Character then
						if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
							humanoid = game.Players.LocalPlayer.Character.Humanoid
							if humanoid.RootPart then
								humanoid.RootPart.Anchored = true
							end
						end
					end
				else
					if humanoid.RootPart then
						humanoid.RootPart.Anchored = true
						local vel = humanoid.MoveDirection*humanoid.WalkSpeed
						if humanoid.Jump then
							vel = vel+Vector3.new(0,humanoid.WalkSpeed,0)
						end
						if keys.LeftShift then
							vel = vel+Vector3.new(0,-humanoid.WalkSpeed,0)
						end
						humanoid.RootPart.Velocity = ((humanoid.RootPart.Velocity-vel)*(0.75^(30/(1/fps))))+vel
						humanoid.RootPart.CFrame = (humanoid.RootPart.CFrame+(humanoid.RootPart.Velocity*fps))*CFrame.Angles(humanoid.RootPart.RotVelocity.X*fps,humanoid.RootPart.RotVelocity.Y*fps,humanoid.RootPart.RotVelocity.Z*fps)
					end
				end
			end
		else
			script.Parent.Text = "GodMode"
			script.Parent.BackgroundColor3 = Color3.fromRGB(0,0,0)
			game["Run Service"].RenderStepped:Wait()
			game["Run Service"].RenderStepped:Wait()
			if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart then
				game.Players.LocalPlayer.Character.Humanoid.RootPart.Anchored = false
			end
		end
	end)
end
coroutine.wrap(NXUKU_fake_script)()
local function YVYY_fake_script() -- logo.RainbowText 
	local script = Instance.new('Script', logo)

	local text = script.Parent
	local add = 10
	wait(1)
	local k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(k/255,0/255,0/255)
	k = k + add
	wait()
	end
	while true do
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255,k/255,0/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255 - k/255,255/255,0/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(0/255,255/255,k/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(0/255,255/255 - k/255,255/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(k/255,0/255,255/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255,0/255,255/255 - k/255)
	k = k + add
	wait()
	end
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255 - k/255,0/255,0/255)
	k = k + add
	wait()
	end
	end
end
coroutine.wrap(YVYY_fake_script)()
