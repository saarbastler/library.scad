$fn=50;

include <connector.scad>
include <switch.scad>

module NucleoG4()
{
  b= 70;
  h= 82.5;
  r= 2;

  color("ghostwhite") difference()
  {
    union()
    {
      hull()
      {
        translate([-b/2+r, h/2-r,0]) cylinder(r=r, h= 1.5);
        translate([ b/2-r, h/2-r,0]) cylinder(r=r, h= 1.5);
        translate([-b/2+r,-(h-2)/2+r,0]) cylinder(r=r, h= 1.5);
        translate([ b/2-r,-(h-2)/2+r,0]) cylinder(r=r, h= 1.5);
      }
      
      translate([-48.26/2, -h/2+2, 0]) linear_extrude(height=1.5) 
        polygon(points=[[0, .01], [2, -2], [35, -2], [37,.01]]);
    }
    
    translate([ b/2-26.11, -h/2+2.8,-1]) cylinder(d=3.6, h=3);
    translate([-b/2+10.87,  h/2-27.93,-1]) cylinder(d=3.6, h=3);
    translate([ b/2-10.87,  h/2-29.2,-1]) cylinder(d=3.6, h=3);
  }

  // Arduino Connector
  translate([ 48.26/2, -h/2+5.08, 1.5]) rotate([0,0,90]) header254f(8,1, 9.5);
  translate([ 48.26/2, 8.5*2.54 -h/2+5.08, 1.5]) rotate([0,0,90]) header254f(10,1, 9.5);
  
  translate([-48.26/2, -h/2+5.08, 1.5]) rotate([0,0,90]) header254f(6,1,9.5);
  translate([-48.26/2, 7*2.54 -h/2+5.08, 1.5]) rotate([0,0,90]) header254f(8,1, 9.5);
  
  // Morpho Connector
  translate([     63.5/2, -h/2+5.08, 1.5]) rotate([0,0,90]) header254(19,2, 9.5);
  translate([2.54-63.5/2, -h/2+5.08, 1.5]) rotate([0,0,90]) header254(19,2, 9.5);
  
  // JP3 Target Reset
  translate([-48.26/2,17*2.54 -h/2+5.08, 1.5]) rotate([0,0,90]) header254(2,1);  
  // CN12
  translate([-63.5/2, h/2-3.8-2.54, 1.5]) rotate([0,0,90]) header254(2,1, 9.5);
  // CN11
  translate([ 63.5/2, h/2-3.8-2.54, 1.5]) rotate([0,0,90]) header254(2,1, 9.5);
  // JP5 Power Source Selection
  translate([ 48.26/2, 22*2.54 -h/2+5.08, 1.5]) rotate([0,0,90]) header254(4,2);
  // JP6 IDD Measurement
  translate([9*2.54-48.26/2, 14*2.54 -h/2+5.08, 1.5]) header254(2,1);
  // JP8 VRef Selection
  translate([ 39.8-b/2, 14*2.54 -h/2+5.08, 1.5]) header254(3,1);
  // JP1
  translate([25-b/2, h/2-2.16, 1.5]) header254(2,1);
  
  translate([-8.5, 12.25, 1.5]) taster6x6smd(6.5, "blue");
  translate([ 8.5, 12.25, 1.5]) taster6x6smd(6.5);
}


  *#translate([-70/2, -82.5/2, -1]) cube([70,82.5,1]);
  
NucleoG4();