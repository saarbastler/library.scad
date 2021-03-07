/* (c) 2021++ by Saarbastler 
**  https://github.com/saarbastler/library.scad
**
** Switches and Buttons
*/
// ALPS SCCF, ON=+/- 9 .. 36° 
module alpsSCCF( winkel=0 )
{
  color("darkgray")
  {
    translate([-11/2,-6/2,0])cube([11,6,12.5]);

    translate([-2/2,-6/2,12.5]) rotate([0,winkel,0])cube([2,2,20]);
  }
  
  translate([   5-0.3,3-1.2,-3.8]) cube([0.6,0.4,3.8]);
  translate([ 2.5-0.3,3-1.2,-3.8]) cube([0.6,0.4,3.8]);
  translate([    -0.3,3-1.2,-3.8]) cube([0.6,0.4,3.8]);
  translate([-2.5-0.3,3-1.2,-3.8]) cube([0.6,0.4,3.8]);
  translate([  -5-0.3,3-1.2,-3.8]) cube([0.6,0.4,3.8]);
}

module alpsEC11Pin()
{
  translate([-.3/2,-.9/2,-4.5]) cube([0.3, 0.9, 4.5]);
  
  translate([-.3/2,-1.5/2,0]) cube([0.3, 1.5, 3]);
  
  translate([-1.5+.3/2,-1.5/2,3]) cube([1.5, 1.5, .3]);
}

module alpsEC11()
{
  translate([-13.6/2,-11.7/2,0])
  {
    color("green") cube([13.6,11.7,3.5]);
    
    color("silver") translate([0,0,3.5]) cube([13.6,11.7,2.5]);
  }
  
  color("silver")
  {
    translate([0,0,6]) cylinder(d=7,h=4.5);
    
    translate([0,0,10.5]) cylinder(d=4,h=0.7);
    
    translate([0,0,11.2]) difference()
    {
      cylinder(d=6,h=6.6);
      
      translate([-.5, -4, 6.6-3.5]) cube([1, 8, 5]);
    }
    
    translate([ 7.5,-2.5,0]) alpsEC11Pin();
    translate([ 7.5,   0,0]) alpsEC11Pin();
    translate([ 7.5, 2.5,0]) alpsEC11Pin();
    
    translate([-7.5,-2.5,0]) rotate([0,0,180]) alpsEC11Pin();
    translate([-7.5, 2.5,0]) rotate([0,0,180]) alpsEC11Pin();
  }
}

module kippSchalter2UM()
{
  color("blue") translate([-12.5/2, -12/2, 0])cube([12.5, 12, 9]);
  
  color("lightgray")translate([0,0,9])cylinder( d= 6, h= 9, $fn= 100);
  
  color("red")translate([0,0,18])rotate([0,20,0]) cylinder( d=4, h=12, $fn=100);
  
  color("lightgray")
  {
    translate([-.4, 2,-4.5])
    {
      cube([0.8, 2, 4.5]);    
      translate([-4.5,0,0]) cube([0.8, 2, 4.5]);
      translate([4.5,0,0]) cube([0.8, 2, 4.5]);
    }
    translate([-.4, -4,-4.5])
    {
      cube([0.8, 2, 4.5]);    
      translate([-4.5,0,0]) cube([0.8, 2, 4.5]);
      translate([4.5,0,0]) cube([0.8, 2, 4.5]);
    }
  }
}

module kippSchalter1UM()
{
  color("darkgray") translate([-13.5/2, -8.2/2, 0])cube([13.5, 8.2, 10]);
  
  color("lightgray")translate([0,0,10])cylinder( d= 6, h= 9, $fn= 100);
  
  color("lightgray")translate([0,0,18])rotate([0,20,0]) cylinder( d=4, h=12, $fn=100);
  
  color("lightgray")
  {
    translate([-.4, -1,-4.5])
    {
      cube([0.8, 2, 4.5]);    
      translate([-4.5,0,0]) cube([0.8, 2, 4.5]);
      translate([4.5,0,0]) cube([0.8, 2, 4.5]);
    }
  }
}

module taster6x6(len=8.5)
{
  color("darkgrey")
  {
    translate([-3,-3,0]) cube([6,6,4]);
    translate([0,0,4]) cylinder(d=3.3, h=len);
  }
  
  color("silver")
  {
    translate([ 3,   4.5/2-0.3,-3.5]) cube([0.3,0.6,5]);
    translate([ 3,  -4.5/2-0.3,-3.5]) cube([0.3,0.6,5]);
    translate([-3.3, 4.5/2-0.3,-3.5]) cube([0.3,0.6,5]);
    translate([-3.3,-4.5/2-0.3,-3.5]) cube([0.3,0.6,5]);
  }
}

module taster6x6smd(len=8.5, buttonColor= "darkgrey")
{
  color("darkgrey") translate([-3,-3,0]) cube([6,6,4]);
  color(buttonColor) translate([0,0,4]) cylinder(d=3.3, h=len);
  
  color("silver")
  {
    translate([ 3,   4.5/2-0.3, 0]) cube([0.3,0.6,2]);
    translate([ 3,  -4.5/2-0.3, 0]) cube([0.3,0.6,2]);
    translate([-3.3, 4.5/2-0.3, 0]) cube([0.3,0.6,2]);
    translate([-3.3,-4.5/2-0.3, 0]) cube([0.3,0.6,2]);
    
    translate([ 3,   4.5/2-0.3, 0]) cube([1.5,0.6,0.3]);
    translate([ 3,  -4.5/2-0.3, 0]) cube([1.5,0.6,0.3]);
    translate([-4.5, 4.5/2-0.3, 0]) cube([1.5,0.6,.3]);
    translate([-4.5,-4.5/2-0.3, 0]) cube([1.5,0.6,.3]);
  }
}

//kippSchalter1UM();

//alpsEC11();
//alpsSCCF(9);

//taster6x6smd();