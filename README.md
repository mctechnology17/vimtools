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
- [LICENSE](#LICENSE)

----

## Intro
`vimtools` is a tool to complement your editor
favorite text / code `vim, vi, nvim, Gvim or MacVim`. `vimtools` is done
with much care and attention that the developer normally needs.

`vimtools` is a set of functions and settings that will make it easy for you
life. You are the one who decides what function or command is executed
either automatically or by calling through the `cmd` of` vim / nvim`.
That is why all the variables are available for you
set the `vimtools` to your liking.

Among the `vimtools` features are:
- create automatic directories for backups, for doubles as in
  `vscode` etc.
- Maximize the current window to have a more extended view of the
  information
- Several `cmd` in automatics that will make your life easier among others!

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
```vim
" 1 = activate 0 = deactivate
let g:vimtools_loaded = 1
```
### Loading or deactivating specific settings
```vim
" 1 = activate 0 = deactivate
let g:vimtools_vimrc_init = 1
let g:vimtools_viewdir_backupdir_undodir = 1
let g:vimtools_mapsfolding = 1
let g:vimtools_selfclosingbracke = 1
```
### Loading or deactivating specific settings with command
```vim
" clean the undo-directory
:VimToolsCleanUndoDir
" make the undo-directory
:VimToolsMakeUndoDir
" Toogle for MaxWindows
:VimToolsMaxWindows
" Toogle for self closing bracke, example: () [] {}
:VimToolsSelfClosingBracke
```
### Maping recommended
```vim
" on/off MaxWindows
nnoremap <silent> <Leader>m :VimToolsMaxWindows<CR>
nn <silent> <TAB>, :VimToolsSpellMorse<CR>
```

## Fotos
- TODO :D

## [LICENSE](LICENSE)

Released under the GNU General Public License v3.0.

Copyright (c) 2021 MC Technology

<div id="slider" class="slider-dark slider-colored ">
      <div class="flexslider slider-wrapper">
          <ul class="slides">
              <li>
                  <div class="slider-background-image">
                      <div class="layer-stretch">
                          <div class="slider-info">
                              <div class="row">
                                  <div class="col-sm-12 text-center">
                                      <br>
                                      <button class="btn btn-outline btn-light btn-pill btn-outline-1x btn-gradient text-dark m-1">

                                          <a href="https://www.paypal.com/paypalme/mctechnology17"
                                             class="btn btn-lg btn-outline">
                                              Buy Me A <i class="fa fa-coffee"></i>
                                          </a>
                                      </button>

                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </li>
          </ul>
      </div>
</div>

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
