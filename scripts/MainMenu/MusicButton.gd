extends TextureButton

var text = "MUSIC: "

func _ready():
    connect("pressed", self, "_on_pressed")
    $Label.text = text + Utils.translate_boolean_to_on_off(Game.audio_on)
    pass

func _on_pressed():
    Game.switch_audio()
    $Label.text = text + Utils.translate_boolean_to_on_off(Game.audio_on)
    pass
