# Landmarks

Landmarks is a simple sample iOS application written in SwiftUI. It demonstrates how to build views, manage data, and display information about various locations.

## Project Structure

- **LandmarksApp.swift** – Entry point of the app.
- **Model/** – Swift data models and JSON loading helpers.
- **Resources/** – Contains `landmarkData.json` which holds sample data.
- **Views/** – SwiftUI views such as `ContentView`, `MapView`, and `CircleImage`.
- **Assets.xcassets** – Image assets used across the app.
- **Landmarks.xcodeproj** – Xcode project configuration.

## Running the App

1. Ensure you have the latest version of Xcode (15 or later) installed.
2. Clone this repository and open `Landmarks.xcodeproj` in Xcode.
3. Select a simulator or connected device and build/run the project (\*Cmd+R*).

## About the Sample Data

`landmarkData.json` contains a list of landmarks with names, descriptions, coordinates, and image references. The models in `Model/` decode this file at runtime to populate the UI.

## Screenshots

The app renders a map at the top, a circular image overlay, and descriptive text stacked vertically. It demonstrates basic SwiftUI layout, map integration with MapKit, and simple data loading.

## License

This project is intended as sample code and is provided without a specific license. Feel free to use it for learning purposes.
