module 608zz()
{
	$fn=50;
	color("silver")
	difference()
	{
		cylinder(r=11,h=7);

		translate([0,0,-1])
		cylinder(r=4,h=9);
	}
}

module lm8uu()
{
	$fn=50;
	color("silver")
	difference()
	{
		cylinder(r=7.5,h=24);
	
	
		translate([0,0,-1])
		cylinder(r=4,h=26);
	}
}

module 10_nut()
{
	color("silver")
	translate([0,0,-0.001*inch])
	cylinder(r=0.23*inch,h=0.126*inch,$fn=6);
}

module 10_screw(length)
{
	color("silver")
	translate([0,0,-0.1*inch])
	cylinder(r=(3/32)*inch,h=length+0.1,$fn=50);
}