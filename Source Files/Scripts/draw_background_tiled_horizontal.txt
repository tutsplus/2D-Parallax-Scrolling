/***************************************************
  Usage :   draw_background_tiled_horizontal(back,x,y)
  Arguments :   argument0   ==  background
                argument1   ==  x
                argument2   ==  y
  Event :   draw event
 ***************************************************/
 
 var back,width,xx,yy,left,right,i;
 
 back=argument0;
 width=background_get_width(back);
 xx=argument1;
 yy=argument2;
 left=-1;
 right=view_xview[view_current]/width+view_wview[view_current]/width+1;
 if (view_enabled)
 {
    for (i=left; i<right; i+=1)
    {
        draw_background(back,xx mod width+width*i,yy);
    };
 }
 else
 {
    for (i=-1; i<room_width/width+1; i+=1)
    {
        draw_background(back,xx mod width+width*i,yy);
    };
 };
