# vim keystroke

[tricks](https://github.com/vim/vim/issues/6349#issuecomment-650565664)


```viml
vim -w .vimkeys "$@"
```

the `.vimkeys` file's encoding is latin1, and the keystroke representation is not human friendly.

[vim internal byte representation](https://github.com/vim/vim/blob/8ea9390b78da9e34a20e7418712921397c0c1989/runtime/doc/todo.txt#L1189-L1193)



## keystroke representation in `.vimkeys`

### missing

If you use Tab Complete in cmdmode, `.vimkeys` will log the actually pressed key i.e. literally keystroke.

### duplicated

If you map shortcuts to cmd mode command, `.vimkeys` will log both keystroke and the command.


### human friendly part

cmd mode input

normal mode Space and English letters [a-zA-Z]



### internal byte representation part


normal mode <kbd>\<Leader></kbd>      <kbd>ý`</kbd>




