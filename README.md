<div align="center">

  [<img align="center" alt="mctechnology17.com" width="150px" height="150px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/vimtools2.GIF" />][youtube]

</div>

<div align="right">

  [<img align="right" alt="mctechnology17.com" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/web.png" />][website]
  [<img align="right" alt="MC Technology | YouTube" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/youtube.png" />][youtube]
  [<img align="right" alt="@mctechnology17 | Twitter" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/twitter.png" />][twitter]
  [<img align="right" alt="@mctechnology17 | Instagram" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/instagram.png" />][instagram]
  [<img align="right" alt="MC Technology17 | Facebook" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/facebook.png" />][facebook]
  [<img align="right" alt="@mctechnology17 | Tiktok" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/tiktok.png" />][tiktok]
  [<img align="right" alt="@mctechnology17 | Twicht" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/twitch.png" />][twitch]
  [<img align="right" alt="@mctechnology17 | Telegram" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/telegram.png" />][telegram]
  [<img align="right" alt="@mctechnology17 | Reddit" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/reddit.png" />][reddit]

</div>
<br>


- [Intro](#Intro)
- [Fotos](#Fotos)
- [Installation](#Installation)
- [Description](#Description)
- [Integration with other Plugins](#Integration)
- [LICENSE](#LICENSE)

----

## Intro
`vimtools` is a tool to complement your editor
favorite text / code `vim, vi, nvim, Gvim or MacVim`.

`vimtools` is a set of functions and settings that will make it easy for you
life. You are the one who decides what function or command is executed
either automatically or by calling through the `cmd` of` vim / nvim`.
That is why all the variables are available for you
set the `vimtools` to your liking.

`vimtools` features:
- Maximize the current window to have a more extended view of the
  information
- Spell administrator
- Document assistant for Vimscript
- Rapid access to your VIMRC or to your init.vim
- State Rule
- Automatic directories for spell, backup copies, folding and others
- Mathemodus 🤓
- Others

## Installation

### Using [Vundle](https://github.com/gmarik/vundle):

Just add this line to your `~/.vimrc`:

```vim
Plugin 'mctechnology17/vimtools'
```
And run `:PluginInstall` inside Vim.

### Using [pathogen.vim](https://github.com/tpope/vim-pathogen):

Copy and paste in your shell:

```bash
cd ~/.vim/bundle
git clone https://github.com/mctechnology17/vimtools
```

### Using [vpm](https://github.com/KevinSjoberg/vpm):

Run this command in your shell:

```bash
vpm insert mctechnology17/vimtools
```

### Using [Plug](https://github.com/junegunn/vim-plug):

Just add this line to your `~/.vimrc` inside plug call:

```vim
Plug 'mctechnology17/vimtools'
```

And run `:PlugInstall` inside Vim or `vim +PlugInstall +qa` from shell.

<img src="https://github.com/mctechnology17/mctechnology17/blob/main/src/PlugInstall.gif" height="450">


## Description

### Loading or deactivating global settings
All Tools are activated by default, if some reason you have problems with any,
or you only need some, you can activate it and deactivate it easily as follows:
```vim
" 1 = activate 0 = deactivate
let g:vimtools_loaded = 1
```

### Loading or deactivating specific settings
```vim
" activated by default
" 1 = activate 0 = deactivate
let g:vimtools_assistant = 1
let g:vimtools_viewdir_backupdir_undodir = 1
let g:vimtools_mapsfolding = 1
let g:vimtools_selfclosingbracke = 1
let g:vimtools_ruler = 1
let g:vimtools_mathemodus = 1
let g:vimtools_spell_morse = 1
let g:vimtools_easy_comment = 1
```

### Maping recommended
```vim
" on/off SpellMorse
nnoremap <silent> <TAB>. :setlocal spell! spelllang=en \| VimToolsSpellMorseMaps<CR>
" next language
nnoremap <silent> <TAB>, :VimToolsSpellMorse<CR>
" on/off MatheModus
inoremap <silent> <TAB>m <Esc>:VimToolsMatheModus<CR>i<RIGHT>
" on/off MaxWindows
nnoremap <silent> <Leader>m :VimToolsMaxWindows<CR>
```

### VimToolsAssistant
This add-on will help you with the official documentation of Vimscript.
When you shut up under a function as a `for, while` or `if` (for example), keyword or something
you do not know or the definition of vimscript, just press the `<F1>` key and the
documentation of what is below will be automated of the cursor.
<details>
  <summary>:zap: Usage:</summary>

```vim
" activated by default
" 1 = activate 0 = deactivate
let g:vimtools_assistant = 1
<F1>     " call documentation in VIM if it exists
<S-F1>   " call HELP
<F2>     " call .vimrc
<S-F2>   " call init.vim
```

</details>

### VimToolsCleanUndoDir
With this add-on you can clean the "Undo" folder with the files that have more
than 90 days of existing, if you want them to keep the archives simply do not
invoke this command.
<details>
  <summary>:zap: Usage:</summary>

```vim
" clear Undo-Directory
:VimToolsCleanUndoDir
" Make directory
:VimToolsMakeDirectories
```

</details>

### VimToolsSpellMorse
Spell is a complement that is available to VIM, SpellMorse helps you from a very
easy and intuitive to use it.
In normal mode, simply press `<TAB> + .` Torque Aactivar the plugin and once
activated you can change language with `<TAB> + ,`.

You can change to the language of your preference, consultation your language
in specific [here](http://vimdoc.sourceforge.net/htmldoc/spell.html). Once you know which will be the default language, you can
switch it by simply by modifying the word "in" by the language of your
preference. For example:

- `en`		-> all regions
- `en_au`	-> Australia
- `en_ca`	-> Canada
- `en_gb`	-> Great Britain
- `en_nz`	-> New Zealand
- `en_us`	-> USA
- `de`		-> all German words accepted
- `de_de`	-> old and new spelling
- `de_19`	-> old spelling
- `de_20`	-> new spelling
- `de_at`	-> Austria
- `de_ch`	-> Switzerland

<details>
  <summary>:zap: Usage:</summary>

```vim
" on/off SpellMorse
nnoremap <silent> <TAB>. :setlocal spell! spelllang=en \| VimToolsSpellMorseMaps<CR>
" next language
nnoremap <silent> <TAB>, :VimToolsSpellMorse<CR>
```

</details>

### VimToolsSpellMorseMaps
When SpellMorse is activated, then you can make movements with the following keys.
<details>
  <summary>:zap: Usage:</summary>

#### Input -> Output
- `mm` -> menu (`z=`)
- `e` ->  next word (`]s`)
- `n` ->  next word (`]s`)
- `N` ->  previus word (`[S`)
- `b` ->  previus word (`[S`)
- `a` ->  add word (`zg`)
- `A` ->  quit word (`zug`)
- `w` ->  quit bad word (`zw`)
- `W` ->  undo quit bad word (`zuw`)
- `,` ->  selection first option (`1z=`)
- `.` ->  selection second option (`2z=`)
- `-` ->  selection third option (`3z=`)

</details>

### VimToolsMapsFolding
Mappings are enabled by default. You can read the documentation [here](http://vimdoc.sourceforge.net/htmldoc/fold.html).
This mapping is activated by default, if you do not wish you can deactivate it
by writing 0 instead of 1 in the following global variable.

<details>
  <summary>:zap: Usage:</summary>

```vim
" Mappings are enabled by default
" 1 = activate 0 = deactivate
let g:vimtools_mapsfolding = 1
nnoremap a za
vnoremap a za
nnoremap s zn
nnoremap S zN
vnoremap s zf
vnoremap D zd
```

</details>

### VimToolsMatheModus
With this plugin you can acquire mathematical unicode symbols simply by typing
the abbreviation according to your symbol. These are the keywords added so far.
<details>
  <summary>:zap: Usage:</summary>

#### Input -> Output (INSERT MODUS)
- `eps` -> ε
- `theta` -> θ
- `kappa` -> κ
- `pi` -> π
- `rho` -> ρ
- `phi` -> φ
- `sigma` -> σ
- `beta` -> β
- `alpha` -> α
- `delta` -> ∆
- `sum` -> ∑
- `ang` -> å
- `Ang` -> Å
- `sqr` -> √
- `int` -> ∫
- `micra` -> µ
- `omega` -> Ω
- `fun` -> ƒ
- `lam` -> λ

</details>

```vim
" activated by default
" 1 = activate 0 = deactivate
let g:vimtools_mathemodus = 1
" on/off MatheModus
inoremap <silent> <TAB>m <Esc>:VimToolsMatheModus<CR>i<RIGHT>
nnoremap <silent> <TAB>m :VimToolsMatheModus<CR>
```

### VimToolsMaxWindows
Enlarge and restore the current window.
```vim
" on/off MaxWindows
nnoremap <silent> <Leader>m :VimToolsMaxWindows<CR>
```

## Integration
Adding this line, you can see when SpellMorse is activated.
Note: You have to have "AIRLINE" installed
```vim
let g:airline_symbols.spell = 'SpellMorse'
```

## Fotos
- TODO :D

## [LICENSE](LICENSE)

Released under the GNU General Public License v3.0.

Copyright (c) 2021 MC Technology

[website]: https://mctechnology17.com
[twitter]: https://twitter.com/mctechnology17
[youtube]: https://www.youtube.com/channel/UC_mYh5PYPHBJ5YYUj8AIkcw?view_as=subscriber
[instagram]: https://www.instagram.com/mctechnology17/
[twitch]: https://www.twitch.tv/mctechnology17
[tiktok]: https://www.tiktok.com/@mctechnology17
[facebook]: https://m.facebook.com/mctechnology17/
[telegram]: https://t.me/mctechnology
[reddit]:https://www.reddit.com/user/mctechnology17

[vimtools]: https://github.com/mctechnology17/vimtools
[jailbreakrepo]: https://mctechnology17.github.io/
[uiglitch]: https://repo.packix.com/package/com.mctechnology.uiglitch/
[uiswitches]: https://repo.packix.com/package/com.mctechnology.uiswitches/
[uibadge]: https://repo.packix.com/package/com.mctechnology.uibadge/
[youtuberepo]: https://github.com/mctechnology17/youtube_repo_mc_technology
