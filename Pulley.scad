//This is a library for creating pulleys for 3/8" V-belts
//To create a pulley call the pulley() module
//Syntax is pulley(pulley_diameter, thickness, shaft_diameter)
//pulley_diameter = outside diameter of pulley
//thickness = thickness of the pulley
//shaft_diameter = diameter of shaft to which pulley is attached


inch=25.4;
$fn=100;

module pulley(pulley_diameter,thickness,shaft_diameter)
{
	translate([0,0,thickness/2])
	difference()
	{
		//main body of pulley
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
