# Changelog

## v0.2.0 (2026-11-19)

- Baladeur now ships what the Filigrane shell reads in its own `shell/` folder, instead of leaving it in the distribution's repository: the `baladeur` module of the fili-bar (`shell/fili-bar/baladeur/`, with its French translations), the fallback menu of the bar (`shell/appmenu/fili-music.json`) and the brief of Rob for this application (`shell/rob/fili-music.md`). The package puts it in `/usr/share/filigrane/shell/`, `fili-bar link-system` (run at login) links it into the bar and the menus; a module, menu or brief of your own with the same name wins.
- `scripts/check-shell-menu.py` (run by the CI) checks that the bar menu agrees with the actions and shortcuts of the window.

## v0.1.1 (2026-11-19)

- Header: an Ask Rob button (left of the window button) shows Rob's small floating field for Baladeur (`fili-chat here`).
- Search view: no more binding loop on the height of its text.

## v0.1.0 (2026-11-18)

First version in its own repository (it lived in `apps/fili-music` of filigrane-os/filigrane until then).

- Library, queue, tag editor, MPRIS, volume dial, menu for the fili-bar driven by `fili-music ctl`.
- Lives on when its window is closed (queue loaded or music playing); Quit (Ctrl+Q) really exits. The `baladeur`
  module of the fili-bar (in filigrane-os/filigrane) shows "Artist - Title" and a panel with the player and the queue.
- The volume dial is a visualiser: the lit ticks vary in accent intensity with the sound.
- The album view adapts to a narrow window.
