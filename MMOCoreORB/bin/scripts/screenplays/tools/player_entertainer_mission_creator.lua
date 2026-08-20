-- Player-created entertainer mission setup. The mission generator applies the
-- chosen performance and duration when the player next browses an entertainer terminal.

player_entertainer_mission_creator = ScreenPlay:new {
	numberOfActs = 1
}

function player_entertainer_mission_creator:start()
end

function player_entertainer_mission_creator:openWindow(pPlayer)
	if pPlayer == nil then
		return
	end

	local sui = SuiListBox.new("player_entertainer_mission_creator", "typeSelection")
	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())
	sui.setTitle("Create Entertainer Mission")
	sui.setPrompt("Choose the performance required for your custom mission.")
	sui.add("Dance", "")
	sui.add("Play Music", "")
	sui.add("Reset Custom Entertainer Mission", "")
	sui.sendTo(pPlayer)
end

function player_entertainer_mission_creator:typeSelection(pPlayer, pSui, eventIndex, args)
	if eventIndex == 1 or args == "-1" then
		return
	end

	local choice = tonumber(args)
	if choice == 2 then
		deleteScreenPlayData(pPlayer, "player_entertainer_mission_creator", "enabled")
		deleteScreenPlayData(pPlayer, "player_entertainer_mission_creator", "type")
		deleteScreenPlayData(pPlayer, "player_entertainer_mission_creator", "duration")
		CreatureObject(pPlayer):sendSystemMessage("Custom entertainer mission settings have been reset.")
		return
	end

	if choice ~= 0 and choice ~= 1 then
		return
	end

	writeScreenPlayData(pPlayer, "player_entertainer_mission_creator", "type", choice == 0 and "dance" or "music")

	local sui = SuiListBox.new("player_entertainer_mission_creator", "durationSelection")
	sui.setTargetNetworkId(SceneObject(pPlayer):getObjectID())
	sui.setTitle("Performance Duration")
	sui.setPrompt("Choose how long the performance must continue without interruption.")
	sui.add("10 minutes - 100,000 credits", "")
	sui.add("60 minutes - 750,000 credits", "")
	sui.sendTo(pPlayer)
end

function player_entertainer_mission_creator:durationSelection(pPlayer, pSui, eventIndex, args)
	if eventIndex == 1 or args == "-1" then
		return
	end

	local choice = tonumber(args)
	if choice ~= 0 and choice ~= 1 then
		return
	end

	local duration = choice == 0 and "10" or "60"
	local reward = choice == 0 and "100,000" or "750,000"
	writeScreenPlayData(pPlayer, "player_entertainer_mission_creator", "duration", duration)
	writeScreenPlayData(pPlayer, "player_entertainer_mission_creator", "enabled", "1")
	CreatureObject(pPlayer):sendSystemMessage("Custom entertainer mission saved: " .. duration .. " minutes for " .. reward .. " credits. Browse the terminal to generate it.")
end

registerScreenPlay("player_entertainer_mission_creator", true)
