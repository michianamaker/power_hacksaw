inch=25.4;
$fn=100;

diameter=1.5*inch;
pulley_thickness=0.5*inch;
shaft_dia=0.5*inch;

pulley(5*inch,pulley_thickness,shaft_dia);

translate([0,0,0.49*inch])
pulley(diameter,pulley_thickness,shaft_dia);


module pulley(pulley_diameter,thickness,shaft_diameter)
{
	translate([0,0,thickness/2])
	difference()
	{
	
		translate([0,0,-(thickness/2)])
		cylinder(r=pulley_diameter/2,h=thickness);
	
		//cut out groove for 3/8" V-belt
		rotate_extrude()
		translate([(pulley_diameter/2)+0.1*inch,0,0])
		rotate([0,0,90])
		polygon(points=[[-0.11274*inch,0],[0,0.375*inch],[0.11274*inch,0]],paths=[[0,1,2]]);
	
		translate([0,0,-thickness])
		cylinder(r=shaft_diameter/2,h=thickness*2);
	}
}