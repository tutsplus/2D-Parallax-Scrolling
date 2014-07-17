/***************************************************
  Usage :   draw_background_tiled_vertical(back,x,y)
  Arguments :   argument0   ==  background
                argument1   ==  x
                argument2   ==  y
  Event :   draw event
 ***************************************************/
 
 var back,height,xx,yy,up,down,i;
 
 back=argument0;
 height=background_get_height(back);
 xx=argument1;
 yy=argument2;
 up=-1;
 down=view_yview[view_current]/height+view_hview[view_current]/height+1;
 if (view_enabled)
 {
    for (i=up; i<down; i+=1)
    {
        draw_background(back,xx,yy mod height+height*i);
    };
 }
 else
 {
    for (i=-1; i<room_height/height+1; i+=1)
    {
        draw_background(back,xx,yy mod height+height*i);
    };
 };
