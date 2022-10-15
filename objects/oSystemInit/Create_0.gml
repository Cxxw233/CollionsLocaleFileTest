///@desc 我瞎了
var file=get_open_filename("audio file(.ogg,.wav)|*.ogg;*.wav;","");
snd=audio_create_stream(file);
if !(file==""){
	_p=get_integer("pitch",1);
}
if (file==""){
	show_message("not find file(cancel)");
};
if !(file=="")&&!(is_real(_p)){
	audio_destroy_stream(snd);
	show_message("not set pitch");
};
if (file!="")&&(is_real(_p)){
    var ssnd=audio_play_sound(snd,0,true);
	audio_sound_pitch(ssnd,_p)
}else{
	game_restart();
};

//audio_sound_set_track_position(vSnd,20);
enum gmuDepth{
	vIns=0,
	vHigh=-1000,
	vLow=-500,
	vDs=1000,
	vDsh=500
};
depth=gmuDepth.vIns;
