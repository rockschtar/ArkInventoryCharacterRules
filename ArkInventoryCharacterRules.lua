local ArkInventoryCharacterRules = ArkInventoryRules:NewModule( "ArkInventoryCharacterRules" )

function ArkInventoryCharacterRules:OnEnable( )
	local registered
	registered = ArkInventoryRules.Register( self, "PLAYERNAME", ArkInventoryCharacterRules.PlayerName )
	registered = ArkInventoryRules.Register( self, "CLASS", ArkInventoryCharacterRules.Class )
    registered = ArkInventoryRules.Register( self, "SPEC", ArkInventoryCharacterRules.Spec )
    registered = ArkInventoryRules.Register( self, "ROLE", ArkInventoryCharacterRules.Spec )
end

function ArkInventoryCharacterRules.Class( ... )
	local ac = select( '#', ... )

	if ac == 0 then
		error( string.format( ArkInventory.Localise["RULE_FAILED_ARGUMENT_NONE_SPECIFIED"], "class" ), 0 )
	end

    local playerClass, englishClass = UnitClass("player");

	for ax = 1, ac do
		local arg = select( ax, ... ) 

        if arg == playerClass or arg == englishClass then
            return true
        end
	end

	return false

end

function ArkInventoryCharacterRules.PlayerName( ... )
	local ac = select( '#', ... )

	if ac == 0 then
		error( string.format( ArkInventory.Localise["RULE_FAILED_ARGUMENT_NONE_SPECIFIED"], "playername" ), 0 )
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

function ArkInventoryCharacterRules.Spec( ... )
	local ac = select( '#', ... )

	if ac == 0 then
		error( string.format( ArkInventory.Localise["RULE_FAILED_ARGUMENT_NONE_SPECIFIED"], "spec" ), 0 )
	end

	local currentSpec = GetSpecialization()
    local id, name = GetSpecializationInfo(currentSpec)
   
    local specName = string.lower(name)
    local roleName = string.lower(GetSpecializationRoleByID(id))

	for ax = 1, ac do
		local arg = string.lower(select( ax, ... ))

        if arg == roleName or arg == id or  arg == specName then
            return true
        end
	end
	
	return false

end


