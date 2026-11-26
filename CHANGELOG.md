# Changelog

## v0.4.0 (2026-11-26)

- The Window button of the header is the kit's (`fili-ui` v0.7.1): a click maximizes the column (niri's Mod+F) or gives it back its
  width, and its picture shows which; resting the pointer on it for a second opens the window panel, a right click opens it at once.
- A clearer selection from the kit: the current tab, the selected sidebar row and selected text are a translucent wash of the accent
  instead of grey steps; the kit's dialogs have a × at the top right.

## v0.3.1 (2026-11-23)

- The interface controls come from the shared kit `fili-ui` (v0.3.0) instead of local copies: theme, focus ring, kinetic scroll, window glyph, buttons, menu, window panel, debug panel, Lia button, dialogs (new playlist, rename, import, export, welcome) and the filter field.
- The list and queue filters are the kit's text field (boxed, with a clear button); the new-playlist prompt no longer pre-selects the existing text.
- `scripts/check-i18n.py` (run by `make test`) checks the French catalog against the texts of the code and of the kit.

## v0.3.0 (2026-11-22)

- The assistant is now named Lia: the header button and the menu entry say "Ask Lia", and the hidden brief is `shell/lia/<app_id>.md` (the older `rob/` is still read).
- A catalog of the commands of the window (`shell/ctl/<app_id>.json`, `fili-api show`) that follows the shared format; the assistant is driven by `fili-ai` as one client of the Filigrane contracts.

## v0.2.0 (2026-11-19)

- Everything Baladeur brings to the desktop now lives in this repository and is installed with it (`make install`): the launcher (`data/fili-music.desktop`), the icon, and what the Filigrane shell reads, in `shell/`, instead of being kept in the distribution's repository: the `baladeur` module of the fili-bar (`shell/fili-bar/baladeur/`, with its French translations), the fallback menu of the bar (`shell/appmenu/fili-music.json`) and the brief of Rob for this application (`shell/rob/fili-music.md`). The package puts it in `/usr/share/filigrane/shell/`, `fili-bar link-system` (run at login) links it into the bar and the menus; a module, menu or brief of your own with the same name wins.
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
