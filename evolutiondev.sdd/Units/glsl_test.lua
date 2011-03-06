unitDef = {
	unitname = "glsl_test",
	name = "GLSL Testbed",
	description	 = "A test Unit for normalmap / depthmap shaders.",
	acceleration = 1,
	activateWhenBuilt = false,
	amphibious = "0",
	autoHeal = 5,
	bmcode 	= "1",
	brakeRate = 2,
	buildCostEnergy = 1,
	buildCostMetal = 1,
	storageMetal=100000,
	storageEnergy=100000,
	canFly = false,
	cruiseAlt = 500,
	maxAcc = 0.1,
	airHoverFactor = 0,
	dontLand = false,

	buildPic = "null.jpg",
	buildTime = 1,
	canAttack = false,
	canCapture = false,
	canDGun  = false,
	canGuard = false,
	canMove  = true,
	canPatrol = false,
	canHover = true,
	canreclamate = "1",
	canstop  = "1",
	category = "COMMANDER CTRL_C",
	commander = true,
	corpse = "",

	energyMake = 1000000,
	energyUse = 0,
	explodeAs = "NOWEAPON",
	footprintX 	= 2,
	footprintZ 	= 2,
	hideDamage = true,
	mass = 1,
	maxDamage = 400000000,
	maxSlope = 9000,
	maxVelocity = 5,
	maxWaterDepth = 5000,
	metalMake = 1000000,
	movementClass = "HOVERTANK2",
	objectName = "Editor_Daemon.s3o",
	selfDestructAs = "NOWEAPON",
	selfDestructCountdown = 100000000,
	sightDistance = 2048,
	smoothAnim = false,
	TEDClass = "COMMANDER",
	turnRate = 10000,
	upright  = true,

	customParams = { normalmap_name = "glsl_test_NormalMap.dds", normalmaps = "yes",}
}

return lowerkeys({ glsl_test = unitDef })