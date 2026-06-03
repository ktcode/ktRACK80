//
// ktRACK80
//
//

gap1 = 0.001;
gap2 = 0.003;
th = 2.6;



box1();
box2();

module box1()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cylinder(r=(38.2-4)/2, h=th+7-2, $fn=100);
    }

    translate([0, 0, th]) cylinder(r=32/2, h=7+2, $fn=100);
    translate([-10/2, 38.2/2-2, 0]) cube([10, 10, 15]);
    
    translate([0, 25/2, 0]) cylinder(r2=8.5/2, r1=4/2, h=th, $fn=100);
    translate([0, -25/2, 0]) cylinder(r2=8.5/2, r1=4/2, h=th, $fn=100);
    translate([0, 25/2, th]) cylinder(r2=8.5/2, r1=8.5/2, h=7+2, $fn=100);
    translate([0, -25/2, th]) cylinder(r2=8.5/2, r1=8.5/2, h=7+2, $fn=100);
}
}



module box2()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cylinder(r=38.2/2, h=th+7+1+0.7, $fn=100);
    }

    translate([0, 0, -gap1]) cylinder(r=(38.2-4+0.5-4)/2, h=th+7+0.7, $fn=100);
    translate([0, 0, -gap1]) cylinder(r=(38.2-4+0.5-2)/2, h=th+7-0.5+0.7, $fn=100);
    translate([0, 0, -gap1]) cylinder(r=(38.2-4+0.5)/2, h=th+7-1+0.7, $fn=100);
    translate([-10/2, 38.2/2-2-0.5, 0]) cube([10, 10, th+7-2.5+0.5]);
    translate([0, 0, 0]) cylinder(r=21/2, h=th+7+10+0.7, $fn=100);
    
    waku();
}
}




module waku()
{
difference()
{
    union()
    {
        translate([0, 0, th+7+1-3.5+0.7]) cylinder(r1=(40+6)/2, r2=(10+6)/2, h=15, $fn=100);
    }
    
    translate([0, 0, th+7+1-3.5+0.7]) cylinder(r1=40/2, r2=10/2, h=15, $fn=100);
}
}