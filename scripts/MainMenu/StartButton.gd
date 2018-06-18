# MainMenu/StartButton.gd

extends TextureButton

func _ready():
    connect("pressed", self, "_on_pressed")
    connect("focus_entered", self, "_on_focus_entered")
    connect("mouse_entered", self, "_on_focus_entered")
    pass

func _on_pressed():
    get_tree().change_scene("res://levels/game.tscn")
    pass
    
func _on_focus_entered():
    print("focused")
    pass