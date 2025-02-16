local LithiumXDecompiler = Instance.new("ScreenGui")
local OpenBTN = Instance.new("TextButton")
local CloseBTN = Instance.new("TextButton")
local MainList = Instance.new("Frame")
local DecompileBTN = Instance.new("TextButton")
local TitleLabel = Instance.new("TextLabel")
local OptionLabel = Instance.new("TextLabel")
local SemicolonBTN = Instance.new("TextButton")
local MainBTN = Instance.new("TextButton")
local InfoBTN = Instance.new("TextButton")
local InfoList = Instance.new("Frame")
local TitleLabel_2 = Instance.new("TextLabel")
local InfoLabel1 = Instance.new("TextLabel")

LithiumXDecompiler.Name = "LithiumXDecompiler"
LithiumXDecompiler.Parent = game:GetService("CoreGui")
LithiumXDecompiler.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OpenBTN.Name = "OpenBTN"
OpenBTN.Parent = LithiumXDecompiler
OpenBTN.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
OpenBTN.BorderColor3 = Color3.fromRGB(2554, 2554, 2554)
OpenBTN.Position = UDim2.new(0.960428655, 0, 0, 0)
OpenBTN.Size = UDim2.new(0.039159108, 0, 0.066155985, 0)
OpenBTN.Font = Enum.Font.Gotham
OpenBTN.Text = "<"
OpenBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenBTN.TextScaled = true
OpenBTN.TextWrapped = true

CloseBTN.Name = "CloseBTN"
CloseBTN.Parent = LithiumXDecompiler
CloseBTN.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
CloseBTN.BorderColor3 = Color3.fromRGB(2554, 2554, 2554)
CloseBTN.Position = UDim2.new(0.68837589, 0, 0, 0)
CloseBTN.Size = UDim2.new(0.039159108, 0, 0.066155985, 0)
CloseBTN.Visible = false
CloseBTN.Font = Enum.Font.Gotham
CloseBTN.Text = ">"
CloseBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBTN.TextScaled = true
CloseBTN.TextWrapped = true

MainList.Name = "MainList"
MainList.Parent = LithiumXDecompiler
MainList.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
MainList.BorderColor3 = Color3.fromRGB(255, 255, 255)
MainList.Position = UDim2.new(0.727535009, 0, 0, 0)
MainList.Size = UDim2.new(0.272052735, 0, 0.999303579, 0)
MainList.Visible = false

DecompileBTN.Name = "DecompileBTN"
DecompileBTN.Parent = MainList
DecompileBTN.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
DecompileBTN.BorderColor3 = Color3.fromRGB(2554, 2554, 2554)
DecompileBTN.Position = UDim2.new(0.204545483, 0, 0.0958188251, 0)
DecompileBTN.Size = UDim2.new(0.590909362, 0, 0.0660892427, 0)
DecompileBTN.Font = Enum.Font.Gotham
DecompileBTN.Text = "Decompile"
DecompileBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
DecompileBTN.TextScaled = true
DecompileBTN.TextWrapped = true

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = MainList
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.BorderSizePixel = 0
TitleLabel.Position = UDim2.new(0.0265165418, 0, 0.00870473403, 0)
TitleLabel.Size = UDim2.new(0.946919858, 0, 0.0870473534, 0)
TitleLabel.Font = Enum.Font.Gotham
TitleLabel.Text = "LithiumX Decompiler"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextScaled = true
TitleLabel.TextSize = 14.000
TitleLabel.TextWrapped = true

OptionLabel.Name = "OptionLabel"
OptionLabel.Parent = MainList
OptionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OptionLabel.BackgroundTransparency = 1.000
OptionLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
OptionLabel.BorderSizePixel = 0
OptionLabel.Position = UDim2.new(0.0265165418, 0, 0.236927733, 0)
OptionLabel.Size = UDim2.new(0.946919858, 0, 0.0870473534, 0)
OptionLabel.Font = Enum.Font.Gotham
OptionLabel.Text = "Options"
OptionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
OptionLabel.TextScaled = true
OptionLabel.TextSize = 14.000
OptionLabel.TextWrapped = true

SemicolonBTN.Name = "SemicolonBTN"
SemicolonBTN.Parent = MainList
SemicolonBTN.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
SemicolonBTN.BorderColor3 = Color3.fromRGB(2554, 2554, 2554)
SemicolonBTN.Position = UDim2.new(0.204545483, 0, 0.353658527, 0)
SemicolonBTN.Size = UDim2.new(0.590909362, 0, 0.0660892427, 0)
SemicolonBTN.Font = Enum.Font.Gotham
SemicolonBTN.Text = "Semicolons (On)"
SemicolonBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
SemicolonBTN.TextScaled = true
SemicolonBTN.TextWrapped = true

MainBTN.Name = "MainBTN"
MainBTN.Parent = LithiumXDecompiler
MainBTN.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainBTN.BorderColor3 = Color3.fromRGB(2554, 2554, 2554)
MainBTN.Position = UDim2.new(0.688030481, 0, 0.0960000008, 0)
MainBTN.Size = UDim2.new(0.039159108, 0, 0.066155985, 0)
MainBTN.Visible = false
MainBTN.Font = Enum.Font.Gotham
MainBTN.Text = "MAIN"
MainBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
MainBTN.TextScaled = true
MainBTN.TextWrapped = true

InfoBTN.Name = "InfoBTN"
InfoBTN.Parent = LithiumXDecompiler
InfoBTN.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
InfoBTN.BorderColor3 = Color3.fromRGB(2554, 2554, 2554)
InfoBTN.Position = UDim2.new(0.688030481, 0, 0.191752076, 0)
InfoBTN.Size = UDim2.new(0.039159108, 0, 0.066155985, 0)
InfoBTN.Visible = false
InfoBTN.Font = Enum.Font.Gotham
InfoBTN.Text = "INFO"
InfoBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
InfoBTN.TextScaled = true
InfoBTN.TextWrapped = true

InfoList.Name = "InfoList"
InfoList.Parent = LithiumXDecompiler
InfoList.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
InfoList.BorderColor3 = Color3.fromRGB(255, 255, 255)
InfoList.Position = UDim2.new(0.727535009, 0, 0, 0)
InfoList.Size = UDim2.new(0.272052735, 0, 0.999303579, 0)
InfoList.Visible = false

TitleLabel_2.Name = "TitleLabel"
TitleLabel_2.Parent = InfoList
TitleLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_2.BackgroundTransparency = 1.000
TitleLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel_2.BorderSizePixel = 0
TitleLabel_2.Position = UDim2.new(0.0265165418, 0, 0.00870473403, 0)
TitleLabel_2.Size = UDim2.new(0.946919858, 0, 0.0870473534, 0)
TitleLabel_2.Font = Enum.Font.Gotham
TitleLabel_2.Text = "LithiumX Decompiler"
TitleLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel_2.TextScaled = true
TitleLabel_2.TextSize = 14.000
TitleLabel_2.TextWrapped = true

InfoLabel1.Name = "InfoLabel1"
InfoLabel1.Parent = InfoList
InfoLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfoLabel1.BackgroundTransparency = 1.000
InfoLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfoLabel1.BorderSizePixel = 0
InfoLabel1.Position = UDim2.new(0.0265165418, 0, 0.170725644, 0)
InfoLabel1.Size = UDim2.new(0.946919858, 0, 0.0870473534, 0)
InfoLabel1.Font = Enum.Font.Gotham
InfoLabel1.Text = "This decompiler is based off the Synapse X  Decompiler"
InfoLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
InfoLabel1.TextScaled = true
InfoLabel1.TextSize = 14.000
InfoLabel1.TextWrapped = true

OpenBTN.MouseButton1Click:Connect(function()
	OpenBTN.Visible = false
	CloseBTN.Visible = true
	MainList.Visible = true
	InfoList.Visible = false
	MainBTN.Visible = true
	InfoBTN.Visible = true
end)

CloseBTN.MouseButton1Click:Connect(function()
	OpenBTN.Visible = true
	CloseBTN.Visible = false
	MainList.Visible = false
	InfoList.Visible = false
	MainBTN.Visible = false
	InfoBTN.Visible = false
end)

MainBTN.MouseButton1Click:Connect(function()
	MainList.Visible = true
	InfoList.Visible = false
end)

InfoBTN.MouseButton1Click:Connect(function()
	MainList.Visible = false
	InfoList.Visible = true
end)

local SemicolonEnabled = true

SemicolonBTN.MouseButton1Click:Connect(function()
	if SemicolonEnabled then
		SemicolonBTN.Text = "Semicolons (Off)"
	else
		SemicolonBTN.Text = "Semicolons (On)"
	end
	SemicolonEnabled = not SemicolonEnabled
end)

DecompileBTN.MouseButton1Click:Connect(function()
	getfenv().SynDecompilerConfigs = {
		DecompilerTimeout = 60,
		ExceedLimit = 10,
		RemoveSemicolon = SemicolonEnabled,
		IsDefined = function(Variables, Variable)
			for _, Defined in pairs(Variables) do
				if Defined == Variable then
					return true
				end
			end

			return false
		end,
		GetHighestIndex = function(Output)
			local Indexs = {}

			for _, Index in pairs(Output:split('v')) do
				local NewIndex = ''

				repeat
					if typeof(tonumber(Index:sub(1, 1))) == 'number' then
						NewIndex = NewIndex..tostring(Index:sub(1, 1))
					end

					Index = Index:sub(2)
				until typeof(tonumber(Index:sub(1, 1))) ~= 'number'

				table.insert(Indexs, tonumber(NewIndex))
			end

			table.sort(Indexs, function(Index1, Index2)
				return Index1 > Index2
			end)

			return Indexs[1] and (Indexs[1] + 10) or 10
		end,
	}
	loadstring(game:HttpGet('https://raw.githubusercontent.com/fdz6/lithiumx_decompiler/refs/heads/main/source.lua'))()
end)
