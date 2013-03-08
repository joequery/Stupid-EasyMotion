Stupid EasyMotion
=================

Stupid EasyMotion is a fork of the popular [EasyMotion][0] plugin that only
applies the target search to the current line.

Screencast
----------

This screencast covers how to install and use Stupid-EasyMotion

[![Screencast](https://s3.amazonaws.com/regexmisc/stupideasymotion.png)](http://www.youtube.com/watch?v=oMnK_llHoK8)

Why?
----

EasyMotion did *too much* to serve my needs effectively. I find navigating the
lines of a document extremely easy thanks to the relative line numbering
feature of Vim 7.3. Consequently, I felt the target characters created after
the current line just added clutter. For example,

![EasyMotion Example][1]

(Image credit: [Nettuts+](http://net.tutsplus.com))

I wanted a version of EasyMotion that only created target characters on the
current line.

What does it look like?
-----------------------

Here's my cursor on a line before calling Stupid EasyMotion

![Stupid EasyMotion Before][2]

And After

![Stupid EasyMotion After][3]

How do I install?
-----------------

Assuming your vim directory is located at `~/.vim`, move the contents of
autoload to `~/.vim/autoload`, and the contents of plugin to `~/.vim/plugin`.

How do I use?
-------------

The available commands are 

* `<Leader><Leader>w` - make every word a target
* `<Leader><Leader>W` - make every space separated word a target
* `<Leader><Leader>fx` - make every character x in the line a target

By default, your `<Leader>` key is "\\"

If you don't like leader based commands, you can remap in your `~/.vimrc` via

    " Easymotion shortcut
    map <C-O> <Leader><Leader>w
    map <C-E> <Leader><Leader>W

I chose Ctrl-o and Ctrl-e because I never use those commands, but you can
change it to whatever.

Can I use Stupid EasyMotion with normal EasyMotion?
---------------------------------------------------

Yes! If you have both EasyMotion and Stupid EasyMotion installed, Stupid
EasyMotion will use the w, W, and f commands, but all other EasyMotion commands
will be executed by the normal EasyMotion plugin.

Additionally, if Stupid EasyMotion overrides an EasyMotion command that you'd
rather not have overridden, you can simply adjust the Default key mapping
section of the `plugin/StupidEasyMotion.vim` file. For example, to free up the
`f` mapping, change

	" Default key mapping {{{
		call StupidEasyMotion#InitMappings({
		\   'f' : { 'name': 'F'  , 'dir': 0 }
		\ , 'w' : { 'name': 'WB' , 'dir': 0 }
		\ , 'W' : { 'name': 'WBW', 'dir': 0 }
		\ })
	" }}}

to 

	" Default key mapping {{{
		call StupidEasyMotion#InitMappings({
		\   'w' : { 'name': 'WB' , 'dir': 0 }
		\ , 'W' : { 'name': 'WBW', 'dir': 0 }
		\ })
	" }}}


Credit
------

Thanks to the EasyMotion team for providing a such a well written plugin. I know
absolutely nothing about Vimscript, yet I was able to make these adjustments.


[0]: https://github.com/Lokaltog/vim-easymotion
[1]: http://d2o0t5hpnwv4c1.cloudfront.net/951_vimEasyMotion/trigger.jpg
[2]: http://i.imgur.com/aRUxuCu.png
[3]: http://i.imgur.com/J5SEPo3.png
