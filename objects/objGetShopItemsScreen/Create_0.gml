// Play the rune select jingle.
// audio_play_sound(snd_win, 0, 0, 1.0, undefined, 1.0);

getShopItems()

if (!audio_is_playing(sndVendingMachine)){
	audio_play_sound(sndVendingMachine, 0, 1, 1.0, undefined, 1.0);
}