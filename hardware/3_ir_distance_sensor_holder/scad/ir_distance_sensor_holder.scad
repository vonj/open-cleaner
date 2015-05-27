//
// Sharp GP2Y0A41SK holder
//

sharp_holder_plate_w = 4;
sharp_holder_plate_l = 44.5;
sharp_holder_plate_h = 22;

hole_shift = 3.6;

module sharp_holder_plate()
{
	difference() {
		translate([0, 0, 4]) {
			cube([sharp_holder_plate_w, 
					sharp_holder_plate_l, 
					sharp_holder_plate_h]);
		}

		translate([-1, hole_shift, sharp_holder_plate_h-7]) {
			rotate([0,90,0])
				 cylinder(h = 6, r = 1.6, $fn=100);
		}

		translate([-1, hole_shift+37, sharp_holder_plate_h-7]) {
			rotate([0,90,0])
				 cylinder(h = 6, r = 1.6, $fn=100);
		}
	}
}

holder_holes_shift_x = 4;
holder_holes_shift_y = 8; // left
//holder_holes_shift_y = 4; // right

// mount plate for Makeblock
module sharp_holder_mount_plate()
{
	shift_x = sharp_holder_plate_w + holder_holes_shift_x;
	shift_x2 = sharp_holder_plate_w + holder_holes_shift_x + 16;

	difference() {

		color("Blue")

		translate([0, 0, 0]) {
			cube([sharp_holder_plate_w + 24, 
					sharp_holder_plate_l, 
					sharp_holder_plate_w]);
		}

		translate([sharp_holder_plate_w + 10, 4, -1]) {
			 cube([4, sharp_holder_plate_l-8, sharp_holder_plate_w+2]);
		}

		// holes

		translate([shift_x, holder_holes_shift_y, -1]) {
			 cylinder(h = 6, r = 2, $fn=100);
		}
		translate([shift_x, holder_holes_shift_y+16, -1]) {
			 cylinder(h = 6, r = 2, $fn=100);
		}
		translate([shift_x, holder_holes_shift_y+32, -1]) {
			 cylinder(h = 6, r = 2, $fn=100);
		}

		// holes
		translate([shift_x2, holder_holes_shift_y, -1]) {
			 cylinder(h = 6, r = 2, $fn=100);
		}
		translate([shift_x2, holder_holes_shift_y+16, -1]) {
			 cylinder(h = 6, r = 2, $fn=100);
		}
		translate([shift_x2, holder_holes_shift_y+32, -1]) {
			 cylinder(h = 6, r = 2, $fn=100);
		}

	}
}

module sharp_holder()
{
	union() {
		sharp_holder_plate();

		sharp_holder_mount_plate();
	}
}

sharp_holder();