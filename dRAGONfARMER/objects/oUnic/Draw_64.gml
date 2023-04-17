draw_text(camera_get_view_x(view_current) + 20, camera_get_view_y(view_current) + 20,oUnic.hp);
var gb = true;
if(mouse_x > 20 and mouse_x < 50 and mouse_y > 50 and  mouse_x < 70){
	gb = !mouse_check_button(mb_left);
}
draw_button(20,50,50,70,gb);