// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function makeplatform(){
///@arg x
///@arg y
///@arg width
///@arg xspeed
///@arg yspeed
///@arg sticky
///@arg angle

var X = argument[0];
var Y = argument[1];
var WIDTH = argument[2];
var MOVEX = argument[3];
var MOVEY = argument[4];
var STICKY = argument[5];
var ANGLE = argument[6];

platform = instance_create_depth(X,Y,0,battle_platform)
platform.width=WIDTH;
platform.sticky=STICKY;
platform.angle=ANGLE;
platform.move_x=MOVEX;
platform.move_y=MOVEY;

return platform;
}