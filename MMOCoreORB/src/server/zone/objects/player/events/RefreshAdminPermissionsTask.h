#ifndef REFRESHADMINPERMISSIONSTASK_H_
#define REFRESHADMINPERMISSIONSTASK_H_

#include "server/zone/ZoneServer.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/managers/player/PlayerManager.h"

class RefreshAdminPermissionsTask : public Task {
	ManagedWeakReference<CreatureObject*> player;
	int permissionLevel;

public:
	RefreshAdminPermissionsTask(CreatureObject* creature, int level) {
		player = creature;
		permissionLevel = level;
	}

	void run() {
		ManagedReference<CreatureObject*> creature = player.get();

		if (creature == nullptr)
			return;

		ZoneServer* zoneServer = creature->getZoneServer();

		if (zoneServer == nullptr)
			return;

		PlayerManager* playerManager = zoneServer->getPlayerManager();

		if (playerManager == nullptr)
			return;

		Locker locker(creature);

		playerManager->updatePermissionLevel(
			creature,
			permissionLevel);
	}
};

#endif /* REFRESHADMINPERMISSIONSTASK_H_ */
