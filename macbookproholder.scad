// this is untested, but should be adapatable to any device witha bit of testing

slot_width = 8;
length = 190;
height = 70;
width = 50;
difference() { 
// Initial volume
resize([length,width/2,height])sphere(r=10, center=true);
// cutaway for arch
translate([0,0,0])resize([length-70,width*2,50])sphere(r=10);
// slot for device
translate([0,0,height/2])cube([length,slot_width,height-10], center=true);
// flat base
translate([0,0,-height/2])cube([length,width,height], center=true);
}

