# jiroshin/comment-block.vim
You can easily insert comment outs like the famous OSS.  
Supported extensions: `.toml`, `.zsh`, `.sh`, `.bash`, `.rb`, `.vim`  

example)  

when you edit file which filetype is `.toml`, `.zsh`, `.sh`, `.bash`, `.rb`  
```sh
#------------------------------------------------------------#
#                                                            #
#------------------------------------------------------------#
```

when you edit file which filetype is `.vim`
```vim
"------------------------------------------------------------"
"                                                            "
"------------------------------------------------------------"
```

# usage
you can install like this.
```
Plug 'jiroshin/comment-block.vim'
```

AND, Run `CommentBlock` in command mode.  
Author recommend that you alias this command.  

# Setting variables
you can Adjust the length of comment out by setting `g:comment_length`.  
`g:comment_length` is 60 by default.

# Precautions for use
jiroshin/comment-block.vim Enable the following options automatically.
```vim
  filetype plugin indent on
```
