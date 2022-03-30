<div align="center">

  [<img align="center" alt="mctechnology17.com" width="150px" height="150px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/vimtools2.GIF" />][youtube]

</div>

<div align="center">

  [<img align="center" alt="MC Technology | YouTube" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/youtube.png" />][youtube]
  [<img align="center" alt="@mctechnology17 | Twitter" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/twitter.png" />][twitter]
  [<img align="center" alt="@mctechnology17 | Instagram" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/instagram.png" />][instagram]
  [<img align="center" alt="MC Technology17 | Facebook" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/facebook.png" />][facebook]
  [<img align="center" alt="@mctechnology17 | Reddit" width="22px" src="https://github.com/mctechnology17/mctechnology17/blob/main/src/reddit.png" />][reddit]

</div>
<br>


[Intro](#Intro) | [Fotos](#Fotos) | [Installation](#Installation) | [Description](#Description) | [Integration](#Integration) | [Donate](#Donate) | [LICENSE](#LICENSE)

----

## Intro
`vimtools` is a tool to complement your editor
favorite text / code `vim, vi, nvim, Gvim or MacVim`.
vimtools is fast and lightweight written in 100% vimscript
with no outside dependencies.

`vimtools` is a set of functions and settings that will make it easy for you
life. You are the one who decides what function or command is executed
either automatically or by calling through the `cmd` of` vim / nvim`.
That is why all the variables are available for you
set the `vimtools` to your liking.

`vimtools` some features:
- `VimToolsMaxWindows` the current window to have a more extended view of the
  information
- `VimToolsSpellMorseIdioms` the best Spell administrator for VIM, using a dictionary in Vim was never so easy
- `VimToolsAssistant` the best Asistant for the documentation for Vimscript
- Rapid access to your VIMRC or to your init.vim
- `VimToolsState` a preview to the information of your script
- `VimToolsMakeDirectories` automatic directories for spell, backup copies, folding and others. You no longer have to worry about the annoying temporary files of backup copies, now everything is focused on a single place "$HOME/vimtools_tmp"
- `VimToolsMatheModus` asistant for Mathematical Symbols
- `VimToolsEasyComment` an indispensable complement to comment with the proper format
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
let g:vimtools_directories = 1
let g:vimtools_mapsfolding = 1
let g:vimtools_closingbracke = 1
let g:vimtools_stateruler = 1
let g:vimtools_mathemodus = 1
let g:vimtools_spellmorse = 1
let g:vimtools_spellmorsesuggest = 1
let g:vimtools_easycomment = 1
let g:vimtools_maxwindows = 1
```

### Maping recommended (Simple configuration)
If you want VimTools to work by default without any
copy modification and paste these lines in your `VIMRC` or `init.vim`
```vim
" on/off SpellMorse
nnoremap <silent> <TAB>. :VimToolsSpellMorse<CR>
" next language
nnoremap <silent> <TAB>, :VimToolsSpellMorseIdioms<CR>
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
" Mappings are enabled by default
" 1 = activate 0 = deactivate
let g:vimtools_spellmorse = 1
" 1 = 10 Best suggestions (default) 2 = 20 Best suggestions (default) 0 = all suggestions
let g:vimtools_spellmorsesuggest = 1
" on/off SpellMorse
nnoremap <silent> <TAB>. :VimToolsSpellMorse<CR>
" next language
nnoremap <silent> <TAB>, :VimToolsSpellMorseIdioms<CR>
```

</details>

### VimToolsSpellMorseMaps
When SpellMorse is activated, then you can make movements with the following keys.
The mappings of these keys are only active during the activation of SpellMourse,
when the switch is turned off, the mapping of each key returns to its original state.
<details>
  <summary>:zap: Usage:</summary>

#### Input -> Output
- `mm` -> menu (`z=`)
- `n` ->  next word (`]s`)
- `b` ->  previus word (`[S`)
- `y` ->  add word (`zg`)
- `Y` ->  quit word (`zug`)
- `x` ->  quit bad word (`zw`)
- `X` ->  undo quit bad word (`zuw`)
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

```vim
" activated by default
" 1 = activate 0 = deactivate
let g:vimtools_mathemodus = 1
" on/off MatheModus
inoremap <silent> <TAB>m <Esc>:VimToolsMatheModus<CR>i<RIGHT>
nnoremap <silent> <TAB>m :VimToolsMatheModus<CR>
```

</details>

### VimToolsMaxWindows
Enlarge and restore the current window.
<details>
  <summary>:zap: Usage:</summary>

```vim
" activated by default
" 1 = activate 0 = deactivate
let g:vimtools_maxwindows = 1
" on/off MaxWindows
nnoremap <silent> <Leader>m :VimToolsMaxWindows<CR>
```

</details>

### VimToolsEasyComment
Simply select in visual mode the lines of code you want to comment on and then
press the `c` key. This is adapted so that it works in an easy, fast and
practical way in all scripts.

List of Scripts added so far:

```
vim, cpp, c, go, java, javascript, scala, php, rust, jsonc, json
python, r, ruby, sh, desktop, fstab, profile, text, tmux, make, dockerfile
bashrc, zsh, zshrc, bash_profile, gitignore, yaml, gdb, gitconfig, vimwiki
html, xml, tex, mail, dosbatch, autohotkey, lua
```

<details>
  <summary>:zap: Usage:</summary>

#### Input -> Output (VISUAL MODUS)
Select the block or line you want to comment on in visual mode
and then press the c key
- `C` -> comment in the format of ScriptType / FileType

</details>

## Integration
Adding this line, you can see when SpellMorse is activated.
Note: You have to have "AIRLINE" installed
```vim
let g:airline_symbols.spell = 'SpellMorse'
```

# Donate
If you're enjoy my work, feel free to donate or become a sponsor.
- [paypal]
- [sponsor]

Ambassador and creator/maintainer of vim-better-header,
vimtools, GitManager and more, that are easy to integrate,
but very powerful work tools that allow you to
improve your workflow, integrating with all operating
systems and all possible shells

Here you can see another recently published project:
- [vim-better-header] is a better automated template
- [gm] git manager with a friendly user interface

## [LICENSE](LICENSE)

Released under the GNU General Public License v3.0.

Copyright (c) 2021 MC Technology

[twitter]: https://twitter.com/mctechnology17
[youtube]: https://www.youtube.com/c/mctechnology17
[instagram]: https://www.instagram.com/mctechnology17/
[facebook]: https://m.facebook.com/mctechnology17/
[reddit]: https://www.reddit.com/user/mctechnology17

[vim-better-header]: https://github.com/mctechnology17/vim-better-header
[gm]: https://github.com/mctechnology17/gm
[vimtools]: https://github.com/mctechnology17/vimtools
[jailbreakrepo]: https://mctechnology17.github.io/
[uiglitch]: https://repo.packix.com/package/com.mctechnology.uiglitch/
[uiswitches]: https://repo.packix.com/package/com.mctechnology.uiswitches/
[uibadge]: https://repo.packix.com/package/com.mctechnology.uibadge/
[youtuberepo]: https://github.com/mctechnology17/youtube_repo_mc_technology

[sponsor]: https://github.com/sponsors/mctechnology17
[paypal]: https://www.paypal.me/mctechnology17
