chestOpened = false;
obtainedRunes = false;

// Assign Variable - Variable used for clicked state.
is_clicked = false;

// Assign Variable - Variable used for button scaling.
target_scale = 1.0;


audio_sound_gain(sndCombatBGM, 0, 1000);
audio_pause_sound(sndCombatBGM);
audio_play_sound(sndStageClear, 0, 0, 1.0);