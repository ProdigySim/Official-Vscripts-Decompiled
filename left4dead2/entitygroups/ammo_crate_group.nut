//-------------------------------------------------------
// Autogenerated from 'ammo_crate.vmf'
//-------------------------------------------------------
AmmoCrate <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.ammo_crate_body,
			EntityGroup.SpawnTables.ammo_crate_button,
			EntityGroup.SpawnTables.ammo_crate_ammo_spawn,
			EntityGroup.SpawnTables.ammo_crate_lid,
			EntityGroup.SpawnTables.ammo_crate_static_lid,
			EntityGroup.SpawnTables.ammo_crate_fireworks,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.ammo_crate_button,
			EntityGroup.SpawnTables.ammo_crate_usetarget,
			EntityGroup.SpawnTables.ammo_crate_template,
			EntityGroup.SpawnTables.ammo_crate_static_lid,
			EntityGroup.SpawnTables.ammo_crate_body,
			EntityGroup.SpawnTables.ammo_crate_lid,
			EntityGroup.SpawnTables.ammo_crate_open_snd,
			EntityGroup.SpawnTables.ammo_crate_lid_rotator,
		]
		return spawnEnts
	}

	//-------------------------------------------------------
	function GetEntityGroup()
	{
		return EntityGroup
	}

	//-------------------------------------------------------
	// Table of entities that make up this group
	//-------------------------------------------------------
	EntityGroup =
	{
		SpawnTables =
		{
			ammo_crate_body = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 270, 0 )
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_urban/plastic_icechest002.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					targetname = "ammo_crate_body"
					origin = Vector( 0.416671, 9.53674e-007, 7.15256e-007 )
				}
			}
			ammo_crate_open_snd = 
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					health = "10"
					message = "Bounce.Metal"
					pitch = "100"
					pitchstart = "100"
					radius = "1250"
					spawnflags = "48"
					targetname = "ammo_crate_open_snd"
					origin = Vector( 0.416671, 9.53674e-007, 31 )
				}
			}
			ammo_crate_usetarget = 
			{
				SpawnInfo =
				{
					classname = "point_script_use_target"
					model = "ammo_crate_button"
					origin = Vector( 0.42, -7.99, 11 )
					targetname = "ammo_crate_usetarget"
					vscripts = "usetargets/ammo_crate_use_target"
					connections =
					{
						OnUser1 =
						{
							cmd1 = "ammo_crate_open_sndPlaySound01"
							cmd2 = "ammo_crate_templateForceSpawn01"
							cmd3 = "ammo_crate_lid_rotatorOpen01"
							cmd4 = "ammo_crate_static_lidKill01"
							cmd5 = "ammo_crate_lidEnable01"
							cmd6 = "ammo_crate_buttonKill01"
							cmd7 = "!selfKill01"
						}
					}
				}
			}
			ammo_crate_button = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					body = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = ".2"
					glowcolor = "121 202 0"
					glowrange = "128"
					glowrangemin = "0"
					glowstate = "3"
					LagCompensate = "0"
					MaxAnimTime = "10"
					maxcpulevel = "0"
					maxgpulevel = "0"
					MinAnimTime = "5"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_buildables/buildable_button.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					targetname = "ammo_crate_button"
					updatechildren = "0"
					origin = Vector( 11.4167, 1.43051e-006, 6 )
				}
			}
			ammo_crate_ammo_spawn = 
			{
				SpawnInfo =
				{
					classname = "weapon_ammo_spawn"
					angles = Vector( 0, 57.5, 0 )
					body = "0"
					count = "5"
					disableshadows = "1"
					model = "models/props_unique/spawn_apartment/coffeeammo.mdl"
					skin = "0"
					solid = "6"
					spawnflags = "2"
					targetname = "ammo_crate_ammo_spawn"
					origin = Vector( -4.58197, 7.62827, 4.99999 )
				}
			}
			ammo_crate_lid = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 270, 0 )
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_urban/plastic_icechest_lid001.mdl"
					parentname = "ammo_crate_lid_rotator"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "1"
					targetname = "ammo_crate_lid"
					origin = Vector( 0.416671, 9.53674e-007, 19 )
				}
			}
			ammo_crate_lid_rotator = 
			{
				SpawnInfo =
				{
					classname = "func_door_rotating"
					always_fire_blocked_outputs = "0"
					angles = Vector( 0, 0, 0 )
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					distance = "220"
					dmg = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					health = "0"
					ignoredebris = "0"
					lip = "0"
					locked_sentence = "0"
					loopmovesound = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					origin = Vector( -9.58, 0.01, 19 )
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					solidbsp = "0"
					spawnflags = "4286"
					spawnpos = "0"
					speed = "300"
					targetname = "ammo_crate_lid_rotator"
					unlocked_sentence = "0"
					wait = "4"
					connections =
					{
						OnFullyOpen =
						{
							cmd1 = "ammo_crate_lidKill0-1"
							cmd2 = "!selfKill0-1"
						}
					}
				}
			}
			ammo_crate_static_lid = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 270, 0 )
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_urban/plastic_icechest_lid001.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "ammo_crate_static_lid"
					origin = Vector( 0.416671, 9.53674e-007, 19 )
				}
			}
			ammo_crate_template = 
			{
				SpawnInfo =
				{
					classname = "point_script_template"
					spawnflags = "2"
					targetname = "ammo_crate_template"
					Template01 = "ammo_crate_ammo_spawn"
					Template02 = "ammo_crate_fireworks"
					origin = Vector( 0.416671, 8, 10 )
				}
			}
			ammo_crate_fireworks = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 90, -90 )
					fademindist = "-1"
					fadescale = "1"
					glowcolor = "0 0 0"
					inertiaScale = "1.0"
					model = "models/props_junk/explosive_box001.mdl"
					physdamagescale = "0.1"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					spawnflags = "257"
					targetname = "ammo_crate_fireworks"
					origin = Vector( 5, -5, 12 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // AmmoCrate

RegisterEntityGroup( "AmmoCrate", AmmoCrate )