--Copyright (C) 2007 <SWGEmu>

--This File is part of Core3.

--This program is free software; you can redistribute
--it and/or modify it under the terms of the GNU Lesser
--General Public License as published by the Free Software
--Foundation; either version 2 of the License,
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules
--is making a combined work based on Engine3.
--Thus, the terms and conditions of the GNU Lesser General Public License
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3
--give you permission to combine Engine3 program with free software
--programs or libraries that are released under the GNU LGPL and with
--code included in the standard release of Core3 under the GNU LGPL
--license (or modified versions of such code, with unchanged license).
--You may copy and distribute such a system following the terms of the
--GNU LGPL for Engine3 and the licenses of the other code concerned,
--provided that you include the source code of that other code when
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated
--to grant this special exception for their modified versions;
--it is their choice whether to do so. The GNU Lesser General Public License
--gives permission to release a modified version without this exception;
--this exception also makes it possible to release a modified version
--which carries forward this exception.
-- Core3 Config File
-- 0 = false, 1 = true

Core3 = {
	------Server Make Options------
	MakeLogin = 1,
	MakeZone = 1,
	MakePing = 1,
	MakeStatus = 1,
	MakeWeb = 0,

	------ORB Server Config------
	ORB = "",
	ORBPort = 44419,

	------Main Database Config------
	DBHost = "127.0.0.1",
	DBPort = 3306,
	DBName = "swgemu",
	DBUser = "Boostersteel",
	DBPass = "Vegeta1982",
	DBInstances = 2,
	DBSecret = "swgemus3cr37!", -- Change this! This value should be unique and of reasonable length.

	------Login Server Config------
	LoginPort = 44453,
	LoginProcessingThreads = 1,
	LoginAllowedConnections = 3000,
	LoginRequiredVersion = "20050408-18:00",

	------Mantis Database Config------
	MantisHost = "127.0.0.1",
	MantisPort = 3306,
	MantisName = "swgemu",
	-- Use the same database account as Core3. The previous legacy Mantis
	-- credentials no longer had access to this database.
	MantisUser = "Boostersteel",
	MantisPass = "Vegeta1982",
	MantisPrfx = "mantis_", -- The prefix for your mantis tables.

	------Metrics Server Config------
	MetricsHost = "localhost",
	MetricsPort = 8125,
	MetricsPrefix = "",

	------Ping Server Config------
	PingPort = 44462,
	PingAllowedConnections = 3000,

	------Zone Server config------
	ZoneProcessingThreads = 10,
	ZoneAllowedConnections = 30000,
	ZoneGalaxyID = 2, --The actual zone server's galaxyID. Should coordinate with your login server.

	-------- GROUND ZONES -------
	ZonesEnabled = {
		--"chandrila",
		"corellia",
		--"coruscant",
		--"dungeon1",
		--"dungeon2",
		"dantooine",
		"dathomir",
		"endor",
		--"geonosis",
		--"hoth",
		--"hutta",
		--"jakku",
		--"kaas",
		--"kashyyyk",
		--"korriban",
		"lok",
		--"mandalore",
		--"mustafar",
		"naboo",
		"rori",
		--"taanab",
		"talus",
		"tatooine",
		"tutorial",
		"yavin4",
	-------- TEST ZONES -------
	--"09",
	--"10",
	--"11",
	--"character_farm",
	--"cinco_city_test_m5",
	--"creature_test",
	--"endor_asommers",
	--"floratest",
	--"godclient_test",
	--"otoh_gunga",
	--"rivertest",
	--"runtimerules",
	--"simple",
	--"taanab",
	--"test_wearables",
	--"umbra",
	--"watertabletest",
	},
	-------- SPACE ZONES -------
	SpaceZonesEnabled = {
		"space_corellia",
		"space_dantooine",
		"space_dathomir",
		"space_endor",
		"space_heavy1",
		"space_light1",
		"space_lok",
		"space_naboo",
		"space_tatooine",
		"space_yavin4"
		---- TEST ZONES ----
		--"space_09",
		--"space_corellia_2",
		--"space_env",
		--"space_halos",
		--"space_naboo_2",
		--"space_tatooine_2",
	},

	------TRE config------
	TrePath = "/root/tre/",
	TreFiles = {
		"top_house_assets.tre",
		"patch_zzz_01.tre",
		"ghosts11.tre",
		"ghosts10.tre",
		"ghosts9.tre",
		"ghosts8.tre",
		"ghosts7.tre",
		"ghosts6.tre",
		"ghosts5.tre",
		"ghosts4.tre",
		"ghosts3.tre",
		"ghosts2.tre",
		"ghosts1.tre",
		"mtg_patch_022.tre",
		"mtg_planets.tre",
		"mtg_patch_021.tre",
		"mtg_patch_019.tre",
		"mtg_patch_018.tre",
		"mtg_patch_017.tre",
		"mtg_patch_016.tre",
		"mtg_patch_015.tre",
		"mtg_patch_014.tre",
		"mtg_patch_013_configurable_02.tre",
		"mtg_patch_012_configurable_01.tre",
		"mtg_patch_011_files_01.tre",
		"mtg_patch_010_object_01.tre",
		"mtg_patch_009_Shader_01.tre",
		"mtg_patch_008_texture_04.tre",
		"mtg_patch_007_texture_03.tre",
		"mtg_patch_006_texture_02.tre",
		"mtg_patch_005_texture_01.tre",
		"mtg_patch_004_appearance_04.tre",
		"mtg_patch_003_appearance_03.tre",
		"mtg_patch_002_appearance_02.tre",
		"mtg_patch_001_appearance_01.tre",
		"bottom_house_assets.tre",
		"droids.tre",
		"mtg_patch_023.tre",
		"patch_09_space_89758_sku0_01.tre",
		"patch_09_space_89758_sku0_02.tre",
		"patch_96290_audio.tre",
		"patch_sku0_89758_89803.tre",
		"patch_sku0_89804_91033.tre",
		"patch_sku0_91034_91085.tre",
		"patch_sku0_91086_91153.tre",
		"patch_sku0_91154_91250.tre",
		"patch_sku0_91251_91609.tre",
		"patch_sku0_91610_91869.tre",
		"patch_sku0_91870_92134.tre",
		"patch_sku0_92135_92786.tre",
		"patch_sku0_92787_94085.tre",
		"patch_sku0_94086_94954.tre",
		"patch_sku0_94955_95334.tre",
		"patch_sku0_95335_95508.tre",
		"patch_sku0_95509_95675.tre",
		"patch_sku0_95676_95714.tre",
		"patch_sku0_95715_95728.tre",
		"patch_sku0_95729_95865.tre",
		"patch_sku0_95866_96086.tre",
		"patch_sku0_96087_96290.tre",
		"patch_sku0_96291_96494.tre",
		"patch_sku0_96495_96606.tre",
		"patch_sku0_96607_96637.tre",
		"patch_sku0_96638_96649.tre",
		"patch_sku0_96650_97023.tre",
		"patch_sku0_97024_97208.tre",
		"patch_sku0_97209_97333.tre",
		"patch_sku0_97334_97365.tre",
		"patch_sku0_97366_97500.tre",
		"patch_sku0_97501_98179.tre",
		"patch_sku0_98180_98396.tre",
		"patch_sku1_89758_89803.tre",
		"patch_sku1_89804_91033.tre",
		"patch_sku1_91086_91153.tre",
		"patch_sku1_91154_91250.tre",
		"patch_sku1_91251_91609.tre",
		"patch_sku1_91610_91869.tre",
		"patch_sku1_91870_92134.tre",
		"patch_sku1_92135_92786.tre",
		"patch_sku1_92787_94085.tre",
		"patch_sku1_94086_94954.tre",
	},


	------Status Server Config------
	StatusPort = 44455,
	StatusAllowedConnections = 500,
	StatusInterval = 30, -- interval to check if zone is locked up (in seconds)

	------Web Server Config------
	WebPorts = 44460, -- Can be multiple ports 44460,44461
	WebAccessLog = "../log/webaccess.log",
	WebErrorLog = "../log/weberror.log",
	WebSessionTimeout = 600, -- Length that inactive web sessions expire

	------Logging Config------
	LogFile = "log/core3.log",
	LogFileLevel = 4, -- -1 NONE, 0 FATAL, 1 ERROR, 2 WARNING, 3 LOG, 4 INFO, 5 DEBUG
	LogJSON = 0, -- global log output in JSON format
	LogSync = 0, -- flush global log file after each write
	LuaLogJSON = 0,
	PathfinderLogJSON = 0,
	PlayerLogLevel = 4, -- -1 NONE, 0 FATAL, 1 ERROR, 2 WARNING, 3 LOG, 4 INFO, 5 DEBUG
	MaxLogLines = 1000000, -- how often to rotate log (currently only log/player.log rotates)

	------REST Server Config------
	RESTServerPort = 0,

	------Account Config------
	InactiveAccountTitle = "Account Disabled",
	InactiveAccountText = "The server administrators have disabled your account.",

	------Character Config------
	CleanupMailCount = 25000,
	DeleteCharacters = 1, -- How often in minutes to purge deleted characters
	PlayerCreationManager = {
		MaxCharactersPerGalaxy = 8,
	},

	------Extra Config ------
	MaxNavMeshJobs = 6,
	MaxAuctionSearchJobs = 1,
	DumpObjFiles = 1,
	ProgressMonitors = "true",
	UnloadContainers = 1, -- Whether to unload container contents from RAM after the container hasn't been accessed for a time

	------Server Config------
	CharacterBuilderEnabled = "true",
	AutoReg = 1,

	------TOS Config------
	TermsOfServiceVersion = 0,
	TermsOfService = "",
}

-- NOTE: conf/config-local.lua is parsed after this file if it exists
