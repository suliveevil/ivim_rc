*2048.txt* play the game 2048 inside vim


__     _____ __  __ ____   ___  _  _    ___     ~
\ \   / /_ _|  \/  |___ \ / _ \| || |  ( _ )    ~
 \ \ / / | || |\/| | __) | | | | || |_ / _ \    ~
  \ V /  | || |  | |/ __/| |_| |__   _| (_) |   ~
   \_/  |___|_|  |_|_____|\___/   |_|  \___/    ~

    By Sofia Lindqvist

===============================================================================
CONTENTS                                                     *Vim2048-contents*

    1. Intro .......... |Vim2048|
    2. Commands ....... |Vim2048Commands|

===============================================================================
Section 1: Intro                                                      *Vim2048*

Play 2048 in your vim session. See https://gabrielecirulli.github.io/2048/
for the original game.

How to play:
Use h,j,k,l to move the tiles. When two tiles with the same number touch, they
merge. After each move a new tile is added. If there isn't space for a new tile
you lose.

===============================================================================
Section 2: Commands                                           *Vim2048Commands*

-------------------------------------------------------------------------------
2.1. Global Commands                                    *Vim2048GlobalCommands*

:Vim2048
    Opens a new Vim2048 buffer, or changes focus to the existing one.

:Vim2048Close
    Closes the Vim2048 buffer.

-------------------------------------------------------------------------------
2.2. Mappings                                                 *Vim2048Mappings*

    h:      Move left, only works while playing
    j:      Move down, only works while playing
    k:      Move up, only works while playing
    l:      Move right, only works while playing
    n:      Start a new game
    c:      Display controls
    q:      Quit Vim2048

 vim:tw=78:ts=8:ft=help:norl:
