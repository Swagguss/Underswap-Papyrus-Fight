// Function to calculate the position on the edge based on the direction
///@arg direction
///@arg centerX
///@arg centerY
///@arg viewWidth
///@arg viewHeight
function calculateEdgePosition() {
	
	_dir = argument[0]
	centerX = argument[1]
	centerY = argument[2]
	viewWidth = argument[3]
	viewHeight = argument[4]
	
    var _x, _y, xOffset, yOffset;
    // Find the offsets based on the direction
    xOffset = cos(degtorad(_dir));
    yOffset = sin(degtorad(_dir));
    // Scale the offsets to push the point to the edge
    if (abs(xOffset) > abs(yOffset)) {
        // It intersects left/right edges
        _x = xOffset > 0 ? viewWidth : 0;
        _y = centerY + yOffset * (xOffset > 0 ? viewWidth / 2 : -viewWidth / 2) / xOffset;
    } else {
        // It intersects top/bottom edges
        _y = yOffset > 0 ? viewHeight : 0;
        _x = centerX + xOffset * (yOffset > 0 ? viewHeight / 2 : -viewHeight / 2) / yOffset;
    }
    return { x: _x, y: _y };
}