players = game:GetService("Players")
storage = game:GetService("ReplicatedStorage")
lplr = players.LocalPlayer
mouse = lplr:GetMouse()

if _G.ByteSharkRan then
	-- uh oh
else
	_G.ByteSharkRan = true
	function ReturnString()
		local length = math.random(10,20)
		local array = {}
		for i = 1, length do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end
	local Main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local spawnn = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local clear = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
--local uhoh = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Line = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")

--Properties:

Main.Name = ReturnString()
Main.Parent = game:GetService("CoreGui")
Main.ResetOnSpawn = false

	Frame.Parent = Main
	Frame.Name = ReturnString()
Frame.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.818685651, -508, -0.304518968, 482)
Frame.Size = UDim2.new(0, 432, 0, 38)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.409797281, 0, 0.0848193169, 0)
TextLabel.Size = UDim2.new(0, 91, 0, 30)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "Weapon Changer"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 28.000

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 1.01670754, 0)
Frame_2.Size = UDim2.new(0, 432, 0, 223)
Frame_2.ZIndex = 0

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.111186132, 0, 0.858243942, 0)
TextLabel_2.Size = UDim2.new(0, 195, 0, 30)
TextLabel_2.Font = Enum.Font.Cartoon
TextLabel_2.Text = "Made by Telamon#2533"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 18.000

TextBox.Parent = Frame_2
TextBox.BackgroundColor3 = Color3.fromRGB(126, 126, 126)
TextBox.Position = UDim2.new(0.201388881, 0, 0.103139013, 0)
TextBox.Size = UDim2.new(0, 271, 0, 38)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "Enter weapon name (ex: AK47)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 17.000

UICorner.Parent = TextBox

spawnn.Name = "spawnn"
spawnn.Parent = Frame_2
spawnn.BackgroundColor3 = Color3.fromRGB(168, 168, 168)
spawnn.Position = UDim2.new(0.201388896, 0, 0.475336343, 0)
spawnn.Size = UDim2.new(0, 271, 0, 29)
spawnn.Font = Enum.Font.SourceSans
spawnn.Text = "Spawn Item"
spawnn.TextColor3 = Color3.fromRGB(255, 255, 255)
spawnn.TextSize = 14.000

UICorner_2.Parent = spawnn

clear.Name = "overwrite"
clear.Parent = Frame_2
clear.BackgroundColor3 = Color3.fromRGB(168, 168, 168)
clear.Position = UDim2.new(0.201388896, 0, 0.304932743, 0)
clear.Size = UDim2.new(0, 271, 0, 29)
clear.Font = Enum.Font.SourceSans
clear.Text = "Override Weapon ENV"
clear.TextColor3 = Color3.fromRGB(255, 255, 255)
clear.TextSize = 14.000

UICorner_3.Parent = clear

Line.Name = "Line"
Line.Parent = Frame
Line.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.998568892, 0)
Line.Size = UDim2.new(0, 432, 0, 1)
Line.ZIndex = 5

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.620485246, 0, 6.03020287, 0)
TextLabel_3.Size = UDim2.new(0, 144, 0, 30)
TextLabel_3.Font = Enum.Font.Cartoon
TextLabel_3.Text = "Hide/Show Gui - \"=\""
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.TextSize = 15.000
	
	local UIS = game:GetService("UserInputService")
	function dragify(FFrame)
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
		FFrame.InputBegan:Connect(function(input)
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
		FFrame.InputChanged:Connect(function(input)
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

	dragify(Frame)

	FrameVis = true

	mouse.KeyDown:Connect(function(key)
		if key == "=" then
			if FrameVis then
				FrameVis = false
				Frame.Visible = false
			else
				FrameVis = true
				Frame.Visible = true
			end
		else

		end
	end)
	
	clear.MouseButton1Click:Connect(function()
		if getrawmetatable and make_writeable and newcclosure then
			game.ReplicatedStorage.Events.LoadCharacter:FireServer()local b=getrawmetatable(game)pcall(function()make_writeable(b)end)pcall(function()setreadonly(b,false)end)local c=b.__namecall b.__namecall=newcclosure(function(b,...)local d={...}local e=d[#d]if tostring(b)=="HitPart"then local b=game.Players.LocalPlayer.Status.Level local b=game.ReplicatedStorage.Levels[b.Value].Value local b=game.ReplicatedStorage.Weapons[b]local c if b.Name=="Laser Rifle"or b.Name=="Pulse Laser"then c=(b.DMG.Value/36)*10 else c=(b.DMG.Value/36)*100 end if game.Players.LocalPlayer.Status.Level.Value~=32 then local b={[1]=d[1],[2]=b,[3]=c,[4]=Vector3.new(d[1].Position.X,d[1].Position.Y,d[1].Position.Z)}game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(b))else local b={[1]=d[1],[2]=game.ReplicatedStorage.Weapons["Golden Knife"],[3]=99/36,[4]=Vector3.new(d[1].Position.X,d[1].Position.Y,d[1].Position.Z)}game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(b))game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(b))game:GetService("ReplicatedStorage").Events.Burn:FireServer(unpack(b))end end return c(b,...)end)
		else

		end
	end)
	
	spawnn.MouseButton1Click:Connect(function()
			storage.Levels[lplr.Status.Level.Value].Value = TextBox.Text
			storage.Events.LoadCharacter:FireServer()
	end)
				
	end