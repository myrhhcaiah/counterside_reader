# Project Roadmap

Working with **Counter:Side** involves a massive amount of "under-the-hood" effort—decryption and library management often represent the bulk of the work before a single game element is even visible. Figuring out how to render character sprites alone was a huge undertaking. So, naturally, there are limits to this project.  

### Changelog
Apr 25, 2026
- Initial release: text + character sprites only.  

Apr 26, 2026
- UX tweaks: "Next Scene" button.
- Stage: better character scaling, fix characters appearing twice.

Apr 27, 2026
- StoryBrowser: add descriptions, localize StoryBrowser.
- Reader: better arrow navigation in Story.
- Character rendering: fix broken transitions between animations.

Apr 28, 2026
- Add character viewer ("Spine Viewer").
- StoryBrowser: add search bar, localize Lifetime Contract & CounterCase names.

Apr 29, 2026
- Fix: truncated cutscenes.
- UX tweaks: prefix cutscenes with an index # in dropdown, bold dialog.

Apr 30, 2026
- Reader: Add static backgrounds.
- Reader: Add background music.
- Add Ep 15 spine models.
- Fix: script parsing for multi-line text.

May 1, 2026
- UX tweaks: filter out empty scenes, fullscreen toggle, End of Chapter shortcut.

May 2, 2026
- Stage: use "ONLY_UNIT" skin for characters, improve character zoom.
- StoryLog: move the active cell to 70%, tint neighbors to the active cell.
- Fix: LSY npc renders as LSY OP.

May 3, 2026
- Fix: teleporting LSY, blank Carmen/Noelle, 
- Compress backgrounds.
- Stage: implement hologram effect.
- Fix: character->model mapping for inconsistent IDs.

May 4, 2026
- Reader: Implement stage select "epigraph".

May 5, 2026
- Viewer: Add emotes.
- Viewer: Add 'export .webm' (desktop only).

May 6, 2026
- Android release + portrait mode.
- Persistence (e.g. remember what chapter you were on).

May 7, 2026
- Stage: Improve character rendering via pre-rendered face detection.
- Viewer: Add ultimate cut-ins.
- Add English MTL for untranslated CounterCases.

May 8, 2026
- Reader: Add animated backgrounds to Ep. 1.
- Viewer: Localize more skin names.
- Manually fix Shepherd's Spine animation.

May 9, 2026
- Viewer: Add battle sprites.
- Viewer: Add "automatically cycle animations" button.

May 10, 2026
- Viewer: Add loading screens.
- Viewer: Add login screens.
- Viewer: Add Keyboard shortcuts; up/down changes the viewed item; left/right changes the animation.

May 12, 2026
- Reader: Fix position of non-human/masked faces.
- Stage: Add letterboxing for ultra-wide screens.
- StoryLog: Smoother text fade as you scroll up.
- StoryLog: Change dialog positioning to be further down.
- Add Intro Video, frequency setting.
- Viewer: Add static backgrounds.

May 15, 2026
- Reader: add voices/sfx when available (~10 files are missing?)
- StoryLog: add button to replay voice
- StoryLog: add captions for SFX
- UI: move items from topbar's right side to settings
- Fix: bug where show/hide storyLog loses story position
- Fix: issue where moving to the next chapter scrolls through the next chapter before reaching the top.

May 16, 2026
- Fix: mobile/vertical UI.
- Fix: revive EN MTL translations for untranslated stories.

May 17, 2026
- StoryLog: make the footer navigable via up/down arrow; "next" button can be activated via Enter key.
- Add 'Visual Novel' mode for mobile; bottom of screen: click to advance one line at a time; top of screen: storyLog.

May 18, 2026
- StoryLog: separate "narration" vs "internal monologue" by making the latter grey.
- StoryLog/VNMode: support scene changes that don't have text.
- Fix obvious misattributed nametags in the original scripts

### Future
You should think of the project being mostly done, with only bugfixes on the horizon.  
~~I saw some requests for dubbing/sound effects, which would be cool, but I can't do that without dropping Android support (the max APK size is 4gb and we're at 3.7gb)~~. UPDATE: with compression and narrowing down the exact files needed, I was able to add the story voices/sfx, but we're basically on the line for max size.    
Initially, I thought of open sourcing the project, but it's kind of incomprehensible without all the supporting scripts. Many of which are riddled with filepaths, API keys or otherwise NSFL.  
For anyone that wanted to mess with Counter:Side's innards, I have released the [.lua decryption script](https://gist.github.com/myrhhcaiah/ce200e7f88e60ef957e41335262b36fb).  
