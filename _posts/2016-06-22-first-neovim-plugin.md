---
layout: post
title: NvimAutoheader
subtitle: Shameless plug for my first Neovim plugin
---

![](/img/posts/NvimAutoheader_main.gif)

I was recently inspired to switch over from Vim to [Neovim](https://neovim.io/) due to reading
Geoff Greer's awesome [blog post](http://geoff.greer.fm/2015/01/15/why-neovim-is-better-than-vim/) on the subject.
It was definitely one of the top 50 best decisions I have ever made in the past few months.

Part of the motivation to switch over was a better plugin API (although documentation is still lacking) which
I was eager to use. Thus I set about creating my first Neovim plugin, a simple extension
that automatically manages headers and is written in Python. With any luck, someone out there might even find it useful.

I chose to write the plugin in Python because, well, Python is great and VimL (Vim's natural scripting language) kind of sucks.
For a simple plugin, this isn't necessarily the best practice since not everyone has Neovim setup with Python.
Then again, there's really no excuse not to have Python support for Neovim, since everyone *should* have Python
installed on their computer, and from there it's just a matter of 
```pip install neovim```.

ANYWAY, if your interested you can see the source code at [github.com/epwalsh/NvimAutoheader](https://github.com/epwalsh/NvimAutoheader).
Basically the plugin will automatically insert headers at the top of a new file when you first open it and update
the 'Last Modified' time everytime you write it. Simple enough, right? You can put custom information
into the header like your name, email, website, etc. by setting some variables in your vimrc:

```vim
let g:NvimAutoheader_author = 'Your Name'
let g:NvimAutoheader_contact = 'youremail@whatever.com'
let g:NvimAutoheader_organization = 'Company A, Inc.'
let g:NvimAutoheader_website = 'yourwebsite.com'
```

You can even insert an open source license automatically by setting 

```vim
let g:NvimAutoheader_license = 'MIT'
```

In addition, if you set 

```vim
g:NvimAutoheader_license_verbose = 1
```
then the full text of the license will be inserted into the header, if it's available.
Currently NvimAutoheader supports this feature for the following licenses:

- MIT
- Apache-2.0
- GPL
- BSD

Most people probably won't want to insert a license into every source file they open,
in which case they can ignore setting the variables above and simply call:

```vim
:HeaderLicense MIT
```

You can also insert arbitrary text files into the header with:

```vim
:HeaderAppend path/to/file1 path/to/file1
```

### A note on installing

As mentioned above, this plugin depends on Python, so make sure you have the latest version
of the Neovim Python client. To install or update:

```bash
pip install neovim
pip install --upgrade neovim
```

Then after installing the NvimAutoheader autoheader, issue the following command from within Neovim:

```vim
:UpdateRemotePlugins
```

Happy (Neo)vimming!
