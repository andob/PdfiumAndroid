set -o allexport

echo "Publishing..."

./gradlew :publishToMavenLocal
