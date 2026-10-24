# Warhead v1.2 — Bomber mission + creative arsenal

## Bomber call
Using the Bomber Controller no longer creates a permanently circling aircraft. It queues a short 5-second countdown, keeps the entity hidden during that countdown, then reveals a custom Warhead bomber that flies in a straight pass over the player/look direction, drops one primed TNT bomb, continues past the target, and despawns. The flight and drop run server-side; particles and sounds follow the existing effects settings.

## Creative inventory
The creative inventory now has two dedicated tabs:
- **Warhead**: protective equipment, filters, Geiger counter, target map, coordinate sheet and lead ingot.
- **Warhead Arsenal / Вооружение Warhead**: bomb blocks, missile, bomber call item, lead ore/block, ash ground and charred log.

## Build status
Source and JSON structure updated. Build has not been executed in this environment; compile with JDK 17 and Gradle using `gradle build` and test in Forge 1.20.1.
