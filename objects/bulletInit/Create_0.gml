///@desc 一坨屎
file=get_open_filename("sprite file(.jpg,.png)|*.jpg;*.png;","");
if (file==""){
	show_message("not find file(cancel)");
}
if !(file==""){
	p1=get_integer("imgnumb",0); // 分割
	p2=get_integer("removeback(bool)",true); // 背景透明
	p3=get_integer("smooth(bool)",true); // 如果透明是否平滑
	p4=get_integer("xorig",0); // xOriginal
	p5=get_integer("yorig",0); // yOriginal
	p6=get_integer("scale_x",1); // xscale
	p7=get_integer("scale_y",1); // yscale
	spd=get_integer("speed",15); // spd（动的速度） 旋转速度在eventStep中
	if (p1>=2){
		imgspd=get_integer("img_speed",1); // 如果分割 速度是多少
	}
}
if (!((file)=="")&&(is_real(p1))&&(is_real(p2))&&(is_real(p3))&&(is_real(p4))&&(is_real(p5))&&(is_real(p6))&&(is_real(p7))&&(is_real(spd))){
	index=sprite_add(file,p1,p2,p3,p4,p5);
	sprite_index=index;
	image_xscale=p6;
	image_yscale=p7;
	speed=spd;
	if (p1>=2)&&(is_real(imgspd)){
		image_speed=imgspd;
	}
}else{
	//if (!((file)=="")&&(!((is_real(p1))||(is_real(p2))||(is_real(p3))||(is_real(p4))||(is_real(p5))||(is_real(p6))||(is_real(p7))||(is_real(spd))))){
		
	show_message("Parameters Cancel.");

	instance_destroy(); // 不然就销毁并防止内存泄漏
};
i=0;