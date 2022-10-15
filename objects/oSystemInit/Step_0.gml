///@desc F2重启 销毁音频
var keys=keyboard_check_pressed;
if (keys(vk_f2)){
	game_restart(); // 有眼就知
	audio_destroy_stream(snd); // 销毁音频防止内存泄漏
};