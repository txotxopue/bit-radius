extends AudioStreamPlayer

func _ready():
    Game.connect("audio_switched", self, "_on_audio_switched")
    if Game.audio_on:
        play()
    pass

func _on_audio_switched(audio_on):
    if audio_on:
        play()
    else:
        stop()
    pass