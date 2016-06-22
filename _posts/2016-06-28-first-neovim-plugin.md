---
layout: post
title: NvimAutoheader
subtitle: The making of my first Neovim plugin
---

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

```bash
pip install neovim
```

