extends Control

@onready var textContainer = $Panel/Label

signal textbox_closed

var textboxThread: Thread
var textLines: Array[String]

func show_textbox(lines: Array[String]):
	textLines = lines
	assert(textboxThread == null, "you IDIOT a textbox is already open. silly.");
	textboxThread = Thread.new()
	textboxThread.start(_show_textbox)

func _show_textbox():
	for i in textLines:
		for c in i:
			textContainer.text += c
			OS.delay_msec(100)
		textContainer.text += "\n"
	textboxThread = null
	call_deferred("emit_signal", "textbox_close")

func _ready():
	pass

func _process(delta):
	pass
