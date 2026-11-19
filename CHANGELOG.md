# Changelog

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
