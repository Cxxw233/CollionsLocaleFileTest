///@desc 创建实例
if (os_type!=os_android){
	var mx=mouse_x,my=mouse_y; // 获取鼠标xy
	instance_create_depth(mx,my,depth,bulletInit); // 创建实例
};
