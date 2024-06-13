effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();

obj_game.alarm[0] = 120;

audio_play_sound(sfx_game_over, 0, false);