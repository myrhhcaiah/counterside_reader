# Project Roadmap

Working with **Counter:Side** involves a massive amount of "under-the-hood" effort—decryption and library management often represent the bulk of the work before a single game element is even visible. Figuring out how to render character sprites alone was a huge undertaking. So, naturally, there are limits to this project.  

Things we won't/can't do:
- Touch Voices/Battle Voices. This would be 50,000 files to sort and sync up with animations. And that's not even including adding 15 GB to the total size, which makes distribution near impossible.  
- Other graphical/audio assets. Similar reasoning as above.
- Fixing broken Spine animations. Many files from the original game aren't compatible with various Spine Viewers. If you want them to work with apps outside of the Counter:Side Reader, you are free to figure that out yourself.  
- Composite Spine Animations/VFX. There are quite a few animations that involve other animations/effects for things like backgrounds or explosions. It's not feasible to figure out the timing, scaling, and other edge cases in order to get them to work, as I don't have the bandwidth to re-implement the original code or debug each animation.  
- Adding support for additional languages. The app supports the original languages of English/Korean/Japanese/Traditional Chinese, and a lot of work has gone into handling each of them.  

### Future
You should think of the project as being mostly done, with only bug fixes on the horizon.  
Initially, I thought of open-sourcing the project, but there are a lot of pretty incomprehensible supporting scripts and, considering that the game has ended, I do not see the value in going back and cleaning them up.  
For anyone who wants to mess with Counter:Side's innards, I have released the [.lua decryption script](https://gist.github.com/myrhhcaiah/ce200e7f88e60ef957e41335262b36fb).  

### Changelog
August 9, 2026
- Reader: Fix an error that would drop expressions/holographic state early.
- Reader: Fix an error causing characters to linger on screen.
- Reader: Fix corrupted SFX/voice files.

July 11, 2026
- Viewer: If there's only one skin, hide the "Skin:" label and the dropdown.
- Viewer: In the "vertical" version, add << and >> buttons beside the "Characters" menu.
- Viewer: In the "horizontal" fullscreen version, add << and >> buttons to the bottom bar.
- WebM Export (Desktop Only): Reset the animation s.t. it records a clean loop.

Jun 24, 2026
- WebM Export (Desktop Only): Add quality options, scaling.
- Fix: Bug where on older browsers character scaling will grow unbounded (!!!).
- UX: Prevent selecting text in Visual Novel mode

May 22, 2026
- Add 'Comic Viewer'

May 18, 2026
- StoryLog: Separate "narration" vs. "internal monologue" by making the latter grey.
- StoryLog/VNMode: Support scene changes that don't have text.
- Fix: Obvious misattributed nametags in the original scripts.

May 17, 2026
- StoryLog: Make the footer navigable via up/down arrow keys; "next" button can be activated via the Enter key.
- Add 'Visual Novel' mode for mobile. Bottom of screen: click to advance one line at a time; top of screen: StoryLog.

May 16, 2026
- Fix: Mobile/vertical UI.
- Fix: Revive EN MTL translations for untranslated stories.

May 15, 2026
- Reader: Add voices/SFX when available (~10 files are missing?).
- StoryLog: Add button to replay voice.
- StoryLog: Add captions for SFX.
- UI: Move items from the top bar's right side to settings.
- Fix: Bug where showing/hiding the StoryLog loses the story position.
- Fix: Issue where moving to the next chapter scrolls through the next chapter before reaching the top.

May 12, 2026
- Reader: Fix position of non-human/masked faces.
- Stage: Add letterboxing for ultrawide screens.
- StoryLog: Smoother text fade as you scroll up.
- StoryLog: Change dialogue positioning to be further down.
- Add Intro Video and frequency setting.
- Viewer: Add static backgrounds.

May 10, 2026
- Viewer: Add loading screens.
- Viewer: Add login screens.
- Viewer: Add keyboard shortcuts; up/down changes the viewed item; left/right changes the animation.

May 9, 2026
- Viewer: Add battle sprites.
- Viewer: Add "automatically cycle animations" button.

May 8, 2026
- Reader: Add animated backgrounds to Ep. 1.
- Viewer: Localize more skin names.
- Fix: Manually fix Shepherd's Spine animation.

May 7, 2026
- Stage: Improve character rendering via pre-rendered face detection.
- Viewer: Add ultimate cut-ins.
- Add English MTL for untranslated CounterCases.

May 6, 2026
- Android release + portrait mode.
- Persistence (e.g., remember what chapter you were on).

May 5, 2026
- Viewer: Add emotes.
- Viewer: Add 'export .webm' (desktop only).

May 4, 2026
- Reader: Implement stage select "epigraph".

May 3, 2026
- Fix: Teleporting LSY, blank Carmen/Noelle.
- Compress backgrounds.
- Stage: Implement hologram effect.
- Fix: Character->model mapping for inconsistent IDs.

May 2, 2026
- Stage: Use "ONLY_UNIT" skin for characters, improve character zoom.
- StoryLog: Move the active cell to 70%, tint neighbors to the active cell.
- Fix: LSY NPC renders as LSY OP.

May 1, 2026
- UX tweaks: Filter out empty scenes, fullscreen toggle, End of Chapter shortcut.

Apr 30, 2026
- Reader: Add static backgrounds.
- Reader: Add background music.
- Add Ep. 15 Spine models.
- Fix: Script parsing for multiline text.

Apr 29, 2026
- Fix: Truncated cutscenes.
- UX tweaks: Prefix cutscenes with an index # in dropdown, bold dialogue.

Apr 28, 2026
- Add character viewer ("Spine Viewer").
- StoryBrowser: Add search bar, localize Lifetime Contract & CounterCase names.

Apr 27, 2026
- StoryBrowser: Add descriptions, localize StoryBrowser.
- Reader: Better arrow navigation in Story.
- Character rendering: Fix broken transitions between animations.

Apr 26, 2026
- UX tweaks: "Next Scene" button.
- Stage: Better character scaling, fix characters appearing twice.

Apr 25, 2026
- Initial release: text + character sprites only.