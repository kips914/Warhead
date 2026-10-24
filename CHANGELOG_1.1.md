# Warhead 1.1 — Bomber Rework

## Added
- Replaced the Phantom-based bomber with a dedicated `warhead:bomber` flying entity.
- Added a custom low-poly bomber model with fuselage, swept wings, twin engines, tail, propellers and landing gear.
- Propellers spin continuously; the airframe has a subtle flight animation.
- Bomber follows a smooth oval patrol around its deployment center and drops TNT at the configured interval.
- Added low-volume engine pass-by audio and retained the bomb-release sound.
- Added entity attributes, renderer, model layer registration and Russian/English display names.
- Particle trail still respects `effectsLevel`; engine and release sounds respect `soundEffects` and `soundVolume`.

## Notes
- Target Minecraft: 1.20.1, Forge 47.2.0, Java 17.
- This is a custom block-model-style aircraft silhouette, not a high-detail animated mesh. Landing gear is visible and has subtle motion; retracting gear states are not yet gameplay-driven.
- Build verification requires Gradle and dependency access; this environment did not have Gradle installed, so Java compilation could not be confirmed here.
