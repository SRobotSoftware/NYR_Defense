/// Initialize game variables

globalvar ammo_count,wave,level,larm,dmult,part_sys,mute_sound,highscore,playerx,playery;

ammo_count = 0;
wave = 0;
level = 0;
larm = 0;
dmult = 0;
highscore = 0;
part_enemy = 0;
part_enemy_emitter = 0;
part_enemy_die = 0;
mute_sound = 0;

/// On Game start, process highscores

if file_exists("NYR_Defense_Save.ini") {
ini_open("NYR_Defense_Save.ini");
highscore = ini_read_real("Highscores","score0",0);
ini_close();
} else {
highscore = 0;
}

//Particle Systems
part_sys = part_system_create();
