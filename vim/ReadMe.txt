Intro tutorial from Shawn Biddle 
1: https://www.youtube.com/watch?v=Nim4_f5QUxA&list=PLd-haPBm4f6X8cgU5fViIVL_jaZZl-m-E&index=3
2: https://www.youtube.com/watch?v=2pqipq-UEwQ&index=5&list=PLd-haPBm4f6X8cgU5fViIVL_jaZZl-m-E

There's notes under his YouTube video but here's a re-organized version:

Starting Vim:
	vim <file>
	vim, :e <file>		// 'e' for edit

Pen to the page:
	i - Enter insert mode at cursor
	I - Enter insert mode at first non-blank character
	s - Delete character under cursor and enter insert mode
	S - Delete line and begin insert at beginning of same line
	a - Enter insert mode _after_ cursor
	A - Enter insert mode at the end of the line
	o - Enter insert mode on the next line
	O - enter insert mode on the above line
	C - Delete from cursor to end of line and begin insert

Picking up the brush
	ESC
	Ctrl+[

Scanning the canvas
	    k
	    ^
	h <   > l
	    v
	    j

	E.g. [number]j
			10j -> execute j command 10 times

Basics: wWbBeE
P.S.
	word - separated by anything that's not a character
	WORD - separated by

	w - Forward to the beginning of next word
	W - Forward to the beginning of the next WORD
	b - Backward to the next beginning of a word
	B - Backward to the next beginning of a WORD
	e - Forward to the next end of word
	E - Forward to the next end of WORD
	0 - Move to the zeroth character of the line
	$ - Move to the last character of the line
	^ - Move to the first non-blank character of the line
	gg - To the top of the file
	G - To the end of the file

Slightly less basic: fFtT All follow [(n)um] syntax

	[n]f<o> - Forward until (nth) (o)  (Inclusive)
	[n]F<o> - Backward until (nth) (o) (Inclusive)
	[n]t<o> - Forward until (nth) (o)  (Exclusive)
	[n]T<o> - Backward until (nth) (o) (Exclusive)

Searching
	/  - Forward
	?  - Backward
	*  - Word under cursor - forward  (bounded)
	g* - Word under cursor - forward  (unbounded)
	#  - Word under cursor - backward (bounded)
	g# - Word under cursor - backward (unbounded)
	n  - Next result, forward
	N  - Next result, backward

Copy/Paste
	y - Yank. Example: yw (yank word)
	yy - yank the line you're on
	p - paste after cursor
	P - paste before cursor
	v - Visual selection

Undoing your changes
	u - undo stuff
	Ctrl-R - redo stuff































