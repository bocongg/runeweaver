/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 0F1449C4
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 228531FF
/// @DnDArgument : "expr" ""Start""
/// @DnDArgument : "var" "text"
text = "Start";

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 128CF79B
/// @DnDArgument : "soundid" "sndMusicMenu"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "sndMusicMenu"
audio_play_sound(sndMusicMenu, 0, 1, 1.0, undefined, 1.0);