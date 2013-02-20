Stupid EasyMotion
=================

Stupid EasyMotion is a fork of the popular [EasyMotion][0] plugin that only
applies the target search to the current line.

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

Credit
------

Thanks to the EasyMotion team for providing a such a well written plugin. I know
absolutely nothing about Vimscript, yet I was able to make these adjustments.


[0]: https://github.com/Lokaltog/vim-easymotion
[1]: http://d2o0t5hpnwv4c1.cloudfront.net/951_vimEasyMotion/trigger.jpg
[2]: http://i.imgur.com/aRUxuCu.png
[3]: http://i.imgur.com/J5SEPo3.png
