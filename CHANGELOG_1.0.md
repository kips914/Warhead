# Warhead v1.0 — Collapse Audio

- Added dedicated collapse audio: stone cracking when a weak underground roof starts to fail, followed by gravel/rubble falling sounds as blocks give way.
- Collapse sounds can be toggled independently with `collapseSounds` in `config/warhead-common.toml`.
- Collapse audio respects the global `soundEffects` and `soundVolume` settings.
- Rate-limited to a maximum of three collapse sound bursts per shockwave to reduce audio spam and performance overhead.
- Uses built-in Minecraft sound events, so no external sound assets are needed.
