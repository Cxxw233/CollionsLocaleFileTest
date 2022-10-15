///@desc 世界上最奇妙的碰撞
if (x>=640){
	direction=random_range(-91,-269);
};
if (x<=0){
    direction=random_range(-89,89);
};
if (y>=480){
    direction=random_range(1,179);
};
if (y<=0){
    direction=random_range(-179,-1);
};
image_angle+=4;
i++;
global.ii=make_color_hsv((i%255),255,255);