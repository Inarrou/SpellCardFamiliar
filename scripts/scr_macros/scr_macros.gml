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
	invincible,
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