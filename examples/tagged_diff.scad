include <BOSL/constants.scad>
include <BOSL/transforms.scad>
include <BOSL/primitives.scad>
include <BOSL/shapes.scad>


diff("hole", "body pole")
sphere(d=100, $tags="body") {
	zcyl(d=55, h=100, $tags="pole");  // attach() not needed for center-to-center.
	tags("hole") {
		xcyl(d=55, h=101);
		ycyl(d=55, h=101);
	}
	zcyl(d=15, h=140, $tags="axle");
}


// vim: noexpandtab tabstop=4 shiftwidth=4 softtabstop=4 nowrap