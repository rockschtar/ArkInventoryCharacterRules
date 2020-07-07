local ArkInventoryCharacterRules = ArkInventoryRules:NewModule( "ArkInventoryCharacterRules" )

function ArkInventoryCharacterRules:OnEnable( )
	local registered
	registered = ArkInventoryRules.Register( self, "PLAYERNAME", ArkInventoryCharacterRules.PlayerName )
	registered = ArkInventoryRules.Register( self, "CLASS", ArkInventoryCharacterRules.Class )
end

function ArkInventoryCharacterRules.Class( ... )
	local fn = "class"
	local ac = select( '#', ... )

	if ac == 0 then
		error( string.format( ArkInventory.Localise["RULE_FAILED_ARGUMENT_NONE_SPECIFIED"], fn ), 0 )
	end

    local playerClass, englishClass = UnitClass("player");

	for ax = 1, ac do
		local arg = select( ax, ... ) 

        if arg == playerClass then
            return true
        end
	end

	return false

end

function ArkInventoryCharacterRules.PlayerName( ... )
	local fn = "playername"
	local ac = select( '#', ... )

	print(ac)

	if ac == 0 then
		error( string.format( ArkInventory.Localise["RULE_FAILED_ARGUMENT_NONE_SPECIFIED"], fn ), 0 )
	end

	local playerName = UnitName("player")
	
	for ax = 1, ac do
		local arg = select( ax, ... ) 

        if arg == playerName then
            return true
        end
	end
	
	return false

end
