leg_height=320;
leg_width=41;
playfield_width=680;
playfield_height=1200;
sidewall_height=120;
sidewall_thikness=21;


//Sidewall long 1
translate([0,0,leg_height - sidewall_height]){
    rotate([90,0,90])
    cube([playfield_height + 2*leg_width + 2*sidewall_thikness,sidewall_height, sidewall_thikness],false);
}
//Sidewall long 2
translate([playfield_width+sidewall_thikness,0,leg_height - sidewall_height]){
    rotate([90,0,90])
    cube([playfield_height + 2*leg_width + 2*sidewall_thikness,sidewall_height, sidewall_thikness],false);
}
//Sidewall short 1
translate([sidewall_thikness,leg_width + sidewall_thikness,leg_height - sidewall_height]){
    rotate([90,0,0])
    cube([playfield_width, sidewall_height, sidewall_thikness],false);
}
//Sidewall short 2
translate([sidewall_thikness,playfield_height+leg_width + 2*sidewall_thikness,leg_height - sidewall_height]){
    rotate([90,0,0])
    cube([playfield_width, sidewall_height, sidewall_thikness],false);
}

//Leg 1
translate([sidewall_thikness,0]){
    cube([leg_width,leg_width,leg_height],false);
}
//Leg 2
translate([sidewall_thikness,playfield_height + leg_width + 2*sidewall_thikness]){
    cube([leg_width,leg_width,leg_height],false);
}
//Leg 3
translate([playfield_width - leg_width+sidewall_thikness,0]){
    cube([leg_width,leg_width,leg_height],false);
}
//Leg 4
translate([playfield_width - leg_width+sidewall_thikness,playfield_height + leg_width + 2*sidewall_thikness]){
    cube([leg_width,leg_width,leg_height],false);
}
//Bottom
translate([sidewall_thikness/2,leg_width,leg_height - sidewall_thikness - sidewall_height]){
    color([1,0,0])
    cube([700, playfield_height+2*sidewall_thikness,20],false);
}



//Leg
//translate([-playfield_width/2+leg_timber_width/2,-table_depth/2+leg_timber_width/2,0])
//{
//    leg(leg_length,lap_depth,leg_timber_width,strut_timber_width);
//}

//Leg
//translate([playfield_width/2-leg_timber_width/2,-table_depth/2+leg_timber_width/2,0]){
//    rotate([0,0,90]){
//        leg(leg_length,lap_depth,leg_timber_width,strut_timber_width);
//    }
//}

//Leg
//translate([-playfield_width/2+leg_timber_width/2,table_depth/2-leg_timber_width/2,0]){
//    rotate([0,0,-90]){
//        leg(leg_length,lap_depth,leg_timber_width,strut_timber_width);
//    }
//}

//Leg
//translate([playfield_width/2-leg_timber_width/2,table_depth/2-leg_timber_width/2,0]){
//    rotate([0,0,180]){
//        leg(leg_length,lap_depth,leg_timber_width,strut_timber_width);
//    }
//}