Ext.Osiris.RegisterListener("UsingSpellOnTarget", 6, "after", function (caster, target, name, _, _, _, _)
    if name == 'Nysi_AnimatingSpores' then
		AddPartyFollower(target, caster)
		Nercomancer = caster
		SetOnStage(target,1)
	end
end)

Ext.Osiris.RegisterListener("Died", 1, "before", function(character)
	if HasActiveStatus(character, 'RETURN_SPORE_DEAD') == 1 then
		RemovePartyFollower(character, GetHostCharacter())
		SetOnStage(character,0)
	end
end)
