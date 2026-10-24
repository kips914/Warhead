# Warhead — automatic cloud build (no VS Code)

Target: Minecraft 1.20.1, Forge 47.2.0, Java 17.

## Cloud build
1. Create an empty GitHub repository in your own account.
2. Upload the **contents** of this `Warhead` folder to the repository root (make sure `.github/workflows/build.yml` is included).
3. Commit to `main` or `master`. Open **Actions → Build Warhead JAR**. You can also use **Run workflow**.
4. When it finishes, open the run and download artifact `warhead-build-output`. If the build succeeds, it contains the mod JAR. If it fails, the artifact may contain Gradle diagnostic reports; read the first compiler error in the log.

## Local build without installing Gradle
- Install JDK 17 only.
- Double-click `build.bat`, or run `gradlew.bat build` in Command Prompt/PowerShell.
- The script downloads Gradle 8.8 into `.gradle-bootstrap` and runs it; it does not require Gradle on PATH.
- Output on success: `build\libs\*.jar`.

## Important wrapper note
The original archive did not contain `gradlew`, `gradlew.bat`, or the official Gradle Wrapper JAR. To avoid inventing a binary, this package includes a transparent bootstrap `gradlew.bat` that downloads the pinned Gradle distribution and invokes it. The cloud workflow does not need a wrapper JAR because it installs Gradle in the runner.

## Validation status
The ZIP structure and JSON resource syntax can be checked locally, but this package has **not** been compiled here. A successful GitHub Actions run is required before treating the JAR as ready.
