# Warhead 1.1 — Bomber

The Bomber Controller now spawns a dedicated `warhead:bomber` entity rather than a renamed vanilla Phantom. It has a custom model, spinning propellers, a gentle airframe animation, smooth patrol movement, bomb drops, and low-volume engine audio.

## Test
1. Use JDK 17 and a Gradle installation with network access to resolve Forge dependencies.
2. From the project root run `gradle build`.
3. Put the resulting JAR from `build/libs` into the `mods` folder of Minecraft 1.20.1 with Forge 47.2.0.
4. In a test world, use the Bomber Controller. Watch the sky for the custom aircraft and verify propeller animation, flight, bomb interval, and sound settings.

## Performance
- No pathfinding or block-volume scans are performed by the aircraft each tick.
- The smoke/cloud trail is throttled by `effectsLevel`.
- Engine audio plays once every 100 ticks, not every tick.
- Bomb cadence uses `bomberDropInterval` in `config/warhead-common.toml`.

Compilation has not been verified in this environment because Gradle is unavailable here.
