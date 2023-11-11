/// @description map_value(m, rmin, rmax, tmin, tmax)

function map_value() {
///@arg m
///@arg rmin
///@arg rmax
///@arg tmin
///@arg tmax
	var m = argument[0]
	var rmin = argument[1]
	var rmax = argument[2]
	var tmin = argument[3]
	var tmax = argument[4]
    var scaledValue = ((m - rmin) / (rmax - rmin)) * (tmax - tmin) + tmin;
    return scaledValue;
}
