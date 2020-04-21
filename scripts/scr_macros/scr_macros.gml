//Sets all constants used throughout the project

//Max hand size
#macro handMax 8

//Directions
#macro up 90
#macro down 270
#macro left 180
#macro right 0
#macro upRight 45
#macro upLeft 135
#macro downRight 315
#macro downLeft 225

//States for player
enum actorStates
{
	neutral,
	moving,
	startUp,
	casting,
	recovery,
	hitstunned,
	knockeddown,
	pivot
}

//Friendly status, used for determining collision
enum teams
{
	friendly,
	hostile,
	noTeam
}

//Used to access the grid containing all card data
enum cardData
{
	ID,
	NAME,
	RARITY,
	TYPE,
	ELEMENT,
	COLOUR,
	POWER,
	SCRIPT,
	TAGS,
	DESCRIPTION,
	SPRITE,
	FLAVOUR,
	CLEANUP,
	EXTRA1,
	EXTRA2,
	EXTRA3,
}

enum cardType
{
	active,
	channel,
	freeCast,
	combo,
	reactive
}

enum cardCleanUp
{
	discard,
	deplete,
	disenchant
}

enum camMode
{
	normal,
	fixed,
	overshoot,
	undershoot,
	shake
}

//Things that are used by statuses to determine if they activate
enum hooks
{
	precast,
	casted,
	predraw,
	draw,
	cleanup,
	discard,
	deplete,
	dump,
	prehit,
	hit,
	prehurt,
	hurt
}

enum elemental
{
	neutral,
	wind,
	lightning,
	fire,
	earth,
	water,
	wood,
	ice,
	poison,
	light,
	dark
}