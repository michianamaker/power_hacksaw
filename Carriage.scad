include <Hardware.scad>
inch = 25.4;

height = 35;

difference()
{
	union()
	{
		cube([50,50,height]);

		translate([0,12.5,0])
		beam();

		translate([37,12.5,0])
		beam();

		translate([0,37.5,0])
		beam();

		translate([37,37.5,0])
		beam();

	}

	translate([0,12.5,0])
	bearing_bore();

	translate([0,37.5,0])
	bearing_bore();

	translate([-1,25-(1/16)*inch,-0.1*inch])
	cube([52,0.125*inch,1.1*inch]);

	fasteners();

}

module fasteners()
{
	translate([0,0,0.5*inch])
	rotate([-90,0,0])
	{
		translate([0.5*inch,0,0])
		{
			10_screw(2.5*inch);
			10_nut();
		}

		translate([1.5*inch,0,0])
		{
			10_screw(2.5*inch);
			10_nut();
		}
	}
}

module beam()
{
	translate([0,0,height-2.5])
	rotate([0,90,0])
	cylinder(r=12.5,h=13,$fn=50);
}

module bearing_bore()
{
	translate([13,0,height-2.5])
	rotate([0,90,0])
	lm8uu();

	translate([-1,0,height-2.5])
	rotate([0,90,0])
	cylinder(r=4.25,h=52,$fn=50);

}