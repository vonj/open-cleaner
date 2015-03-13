module guiderollers() //guide rollers 
{
	difference() 
	{
		union() 
		color("silver")
		{
             translate([-141.2875,152.4,0])
			cylinder(h=38, d=23, $fs=.01); //supply corner roller 
             translate([141.2875,-152.4,0])
			cylinder(h=38, d=23, $fs=.01); // takeup corner roller
           translate([-25.4, 152.4,0]) 
			cylinder(h=5, d=6.35, center = true, $fs=.01); //supplyside initial roller
             translate([-69.85, 76.2,0])
			cylinder(h=38, d=12.6, $fs=.01); //cleaning path guide roller A
             translate([69.85,-76.2,0])
			cylinder(h=38, d=12.6, $fs=.01); //cleaning path guide roller B
             translate([-19.05, 25.4,0])
			cylinder(h=38, d=12.6, $fs=.01); //cleaning path guide roller C
             translate([19.05, -25.4,0])
			cylinder(h=38, d=12.6, $fs=.01); //cleaning path guide roller D
             translate([0,88.9,0])
			cylinder(h=38, d=12.6, $fs=.01); //cleaning path guide roller E
             translate([0, -88.9,0])
			cylinder(h=38, d=12.6, $fs=.01); //cleaning path guide roller F
             translate([-30,65,0])
			cylinder(h=38, d=13.5, $fs=.01); //cleaning path guide roller G //supply-side supply pellon
             translate([30,-65,0])
			cylinder(h=38, d=13.5, $fs=.01); //cleaning path guide roller H //takeup-side supply pellon
             translate([-50.8,108,0])
			cylinder(h=38, d=13.5, $fs=.01); //cleaning path guide roller I //supply-side takeup pellon
             translate([50.8,-108,0])
			cylinder(h=38, d=13.5, $fs=.01); //cleaning path guide roller J //takeup-side takeup pellon
            translate([-83.3, 152.4,0])
			cylinder(h=38, d=23, $fs=.01); //tension arm roller 
             translate([-25.4, 152.4,0]) 
			cylinder(h=38, d=23, $fs=.01); //supplyside initial roller
		}
		union()
        color("silver")
		{
             translate([-141.2875,152.4,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //supply corner roller 
             translate([141.2875,-152.4,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); // takeup corner roller
             translate([-69.85, 76.2,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //cleaning path guide roller A
             translate([69.85,-76.2,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //cleaning path guide roller B
             translate([-19.05,25.4,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //cleaning path guide roller C
             translate([19.05, -25.4,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //cleaning path guide roller D
             translate([0,88.9,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //cleaning path guide roller E
             translate([0, -88.9,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //cleaning path guide roller F
             translate([-30,65,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //cleaning path guide roller G //supply-side supply pellon
             translate([30,-65,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //cleaning path guide roller H //takeup-side supply pellon
             translate([-50.8,108,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //cleaning path guide roller I //supply-side takeup pellon
             translate([50.8,-108,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //cleaning path guide roller J //takeup-side takeup pellon
            translate([-83.3, 152.4,0])
			cylinder(h=80, d=6.35, center = true, $fs=.01); //tension arm roller
			translate([-25.4, 152.4,0]) 
			cylinder(h=80, d=6.35, center = true, $fs=.01); //supplyside initial roller
		}
	}
}

guiderollers();