/* (c) 2021++ by Saarbastler 
**  https://github.com/saarbastler/library.scad
**
** Header Connector Library
*/

/** Male Header
*/
module header254(pins, rows, pinDownLen= 3.5)
{
  color("darkgrey") translate([-1.27, -1.27]) cube([2.54*pins,2.54*rows,2.54]);
  
  for(x=[0:pins-1],y=[0:rows-1])
    translate([x*2.54-.6/2,y*2.54-.6/2,-pinDownLen]) cube([0.6,0.6,8 + pinDownLen]);
}

/** Male Header rectangular
*/
module header254w(pins, rows, pinDownLen= 5.08)
{
  color("darkgrey") translate([-1.27, -1.27,0]) cube([2.54*pins,2.54*rows,2.54]);
  
  for(x=[0:pins-1],y=[0:rows-1])
  {
    translate([x*2.54-.6/2,y*2.54-.6/2,-pinDownLen]) cube([0.6,0.6,2.54+.4+pinDownLen + y*2.54]);
    translate([x*2.54-.6/2,-4.4,2.54+0.4 + y*2.54]) cube([0.6, 4.7+y*2.54,0.6]);
  }
}

/** Female Header
*/
module header254f(pins, rows, pinDownLen= 3.2, h=8.5)
{
  color("darkgrey") translate([-1.27, -1.27,0]) difference()
  {
    cube([2.54*pins,2.54*rows,h]);

    for(x=[0:pins-1],y=[0:rows-1])
      translate([1.27-.8 + x*2.54,1.27-.8 + y*2.54,2]) cube([1.6,1.6,h]);
  }
  
  for(x=[0:pins-1],y=[0:rows-1])
    translate([x*2.54-.6/2,y*2.54-.4/2,-pinDownLen]) cube([0.6,0.4,pinDownLen]);
}

