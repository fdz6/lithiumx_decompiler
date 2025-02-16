local Identifier = 'LithiumX '
local VersionIdentifier = "v1.0"
local Configs = getfenv().SynDecompilerConfigs
local SendDecompile = assert(getfenv().decompile)

getfenv().decompile = (function(Path, ...)
	if typeof(Path) == 'Instance' and Path.ClassName:find('Script') then
		local Output 

		spawn(function()
			Output = SendDecompile(Path)
		end)

		local Tick = 0

		repeat 
			task.wait(1)
			Tick = Tick + 1
		until Output or Tick == Configs.DecompilerTimeout

		if Output and Output:len() > 0 then
			Output = Output:gsub('LithiumX Luau', Identifier)
			Output = Output:gsub('l__', '')
			Output = Output:gsub(';', '; \n')
			Output = Output:gsub('\n\nlocal', '\nlocal')
			Output = Output:gsub('\nend', 'end')
			Output = Output:gsub('\n\n	end ', '\n	end ')
			Output = Output:gsub('\n\n', '\n')

			if Configs.RemoveSemicolon then
				Output = Output:gsub(';', '')
			end

			local VariableMsg = '-- [[ Variables ]] --\n'
			local ConstantMsg = '-- [[ Constants ]] --\n'
			local DefinedConstants = {}
			local DefinedVariables = {}

			for _ = 1, Configs.GetHighestIndex(Output) do
				Output = Output:gsub('__'.._, '')
				Output = Output:gsub('u'.._, 'Constant_'.._)
				Output = Output:gsub('p'.._, 'Parameter_'.._)
				Output = Output:gsub('v'.._, 'Variable_'.._)

				if Output:find('Variable_'.._) and not Configs.IsDefined(DefinedVariables, 'local Variable_'.._) then
					Output = Output:gsub('local Variable_'.._, 'Variable_'.._)

					table.insert(DefinedVariables, 'Variable_'.._..' = nil')
				end

				if Output:find('Constant_'.._) and not Configs.IsDefined(DefinedVariables, 'local Constant_'.._) then
					Output = Output:gsub('local Constant_'.._, 'Constant_'.._)

					table.insert(DefinedConstants, 'Constant_'.._..' = nil')
				end
			end

			if #DefinedVariables > 0 then
				local Split = Output:split('-- Decompiled with the '..Identifier..' decompiler.'..' - '..VersionIdentifier)[2]

				for _, DefinedVariable in pairs(DefinedVariables) do
					VariableMsg = VariableMsg..'\n'..DefinedVariable
				end

				Output = '-- Decompiled with the '..Identifier..' decompiler.\n\n'..VariableMsg..Split..' - '..VersionIdentifier
			end

			if #DefinedConstants > 0 then
				local Split = Output:split('-- Decompiled with the '..Identifier..' decompiler.'..' - '..VersionIdentifier)[2]

				for _, DefinedVariable in pairs(DefinedConstants) do
					ConstantMsg = ConstantMsg..'\n'..DefinedVariable
				end

				Output = '-- Decompiled with the '..Identifier..' decompiler.\n\n'..ConstantMsg..Split..' - '..VersionIdentifier
			end

			if Output:find('bytecode') then
				Output = '--'..Identifier..'\n--No bytecode was found (most likely a LithiumX generated script or script the is empty).'
			end
		elseif Tick == Configs.DecompilerTimeout then
			Output = '--'..Identifier..'\n--Exceeded decompiler timeout.'
		else
			Output = '--'..Identifier..'\n--No bytecode was found (this script most likely contains a anti-decompiler).'
		end

		return Output
	else
		return '--[[ INVALID SCRIPT INSTANCE ]]--'
	end
end)
