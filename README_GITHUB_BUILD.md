# Build Warhead on GitHub Actions

This project targets Minecraft 1.20.1, Minecraft Forge 47.2.0, and Java 17.
The workflow at `.github/workflows/build.yml` compiles the mod on GitHub Actions and uploads the resulting JAR as an artifact.

## How to run the build

1. Create a repository on GitHub.
2. Extract this ZIP and upload the **contents of the `Warhead` folder** to the repository root. The `.github/workflows/build.yml` file must be present at that exact path in the repository.
3. Commit the files to the default branch.
4. Open the repository's **Actions** tab and select **Build Warhead**.
5. Open the newest successful workflow run. Under **Artifacts**, download `warhead-forge-1.20.1-java17`.
6. The downloaded artifact contains the compiled `.jar`. Put it in the `mods` folder of a Minecraft Forge 1.20.1 installation for testing.

If the build fails, open the failed run and expand the **Compile and run checks** step. The workflow also attempts to upload Gradle build reports as a diagnostic artifact.

## Important

A successful JSON/ZIP check is not the same as a successful Java compilation. Treat the JAR as usable only after the GitHub Actions run succeeds and then test it in a separate Minecraft instance. This workflow does not add HBM Community Edition compatibility; that project targets a different Minecraft version.
