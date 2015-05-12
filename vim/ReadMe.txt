Intro tutorial from Shawn Biddle 
	1: Tutorials
		https://www.youtube.com/watch?v=Nim4_f5QUxA&list=PLd-haPBm4f6X8cgU5fViIVL_jaZZl-m-E&index=3
 		https://www.youtube.com/watch?v=2pqipq-UEwQ&index=5&list=PLd-haPBm4f6X8cgU5fViIVL_jaZZl-m-E
	2: Dotfiles
		http://shawnbiddle.com/dotfiles/
	3: .install
		https://github.com/shawncplus/dotfiles/blob/master/install
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

Common Edit commands
	d - Delete: [range]d<motion>
	    dd  - delete current line
	    dj  - delete current and next line (j = down)
	    2dj - delete current and 2 lines downward

	c - Change (Same as d but put me in insert mode)
	    cw - change word
	    cc = S - Delete current line and enter insert mode  
	    2cw - Delete 2 words and enter insert mode

	~  - Toggle the case of character under cursor
	g~ - Toggle case of [motion]
	    g~w - Toggle case of cursor -> end of word
	        tr|ue -> g~w -> trUE
	    g~iw - Toggle case of entire word under cursor
	        tr|ue -> g~iw -> TRUE

Managing multiple files at once
	:tabnew [file]       - Open a new tab with given file (or empty file)
	gt or :tabn[ext]     - Next tab
	gT or :tabp[revious] - Previous tab
	:tabm[ove] # - Move current tab to position # (zero-indexed), no argument = end
	:tabc        - Close current tab
	:tabo        - Close all other tabs except current

Macro
	1. qa - Record and save to a register
	   @a - Repeat a register actions



Online reference
	http://www.radford.edu/~mhtay/CPSC120/VIM_Editor_Commands.htm


NERDTree 
	Start
		vim :NERDTree
			:NERDTreeToggle
			:NERDTreeClose
		vim .
	Switch window
		<Ctrl>+w twice

Powerline - Airline
	Use airline due to Glyph problem about Powerline
	Use setting form http://jchain.github.io/blog/2013/07/17/fly-with-vim-airline/

A simple guide about Solarized theme and Tmux
	http://fideloper.com/mac-vim-tmux

To-read
	1. Color scheme Editor for Vim
		http://bytefluent.com/vivify/




Follow this to download
	A great Vundle guide and .vimrc
	http://c7.se/switching-to-vundle/
Install patched fonts
	git clone https://github.com/powerline/fonts .
	./fonts/install.sh
From Terminal, pick one of the powerline fonts





















