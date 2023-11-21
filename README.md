# Namer App

First Flutter project.

The application generates a random word pair and allows to save favourite pairs

## Resources


A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# About Flutter

Flutter is a UI toolkit developed by Google for building natively compiled applications for mobile, web, and desktop from a single codebase.

## UI Architecture

### Dart Programming Language

  Dart is a client-optimised language for fast applications on multiple platforms.

### Widgets

  Widgets are the basic building blocks of a Flutter application, representing everything from a simple button to complex layouts. Flutter provides a rich set of pre-designed widgets, and an option to create custom widgets.

### Widget Tree

  The entire UI of a Flutter application is represented as a widget tree. Each widget in the tree corresponds to a visual element, and the hierarchy of widgets determines the structure and layout of the interface.

### State Management

  Widgets can be stateless or stateful. Stateless wisgets are immutable components primarily defined by their properties, although they can access and display app state. Stateful widgets can maintain mutable internal state.

## Cross-Platform Rendering

### Rendering Engine

  Flutter's own rendering engine does not rely on the native components of the platform but draws everything on Skia canvas. This approach provides a high degree of consistency across different platforms.

### Flutter Engine

  The Flutter engine is a C++ library that provides low-level rendering support. It interacts with the Skia graphics engine for drawing and manages communication between the Dart code and the native platform.

### Platform Channels

  Flutter allows communication between Dart code and native code using platform channels. This enables developers to access native features and APIs on each platform.

## Tooling & Styling

### Plugins

  Flutter supports a wide range of plugins that provide access to native device features and third-party services, like camera access, GPS, and authentication.

### Material Design and Cupertino

  Flutter includes two sets of widgets for building UIs that follow the design guidelines of both Android (Material Design) and iOS (Cupertino).

### Design System Integration

  Extensive theming support ensures style consistency and calculates correct contracts for accessibility, simplyfing visual element maintenance.

### Accessibility and Responsiveness

  Flutter priotitises accessibility using semantics for users with disabilities. It also allows to build layouts with specified constraints for different screen sizes and operates with device-independent pixels.

### Dart IDE Plugins

  Dart IDE Plugins are powerful tools offering autocompletion, Flutter-specific refactorings, and debugging support, including running the application on different platforms.

# Flutter vs. React

Flutter was developed by Google, uses Dart programming langugae and provides a full framework for building netively compiled applications for mobile, web, and desktop.

React was developed by Facebook, uses JavaScript programming language and was initially designed for web applications, but extended to mobile through React Native.

### Pros Flutter over React

* **Single Codebase**

  Flutter allows to maintain a single codebase for multiple platforms, promoting code reusability and development efficiency.

* **Hot Reload**

  Flutter's Hot Reload feature enables instant rebuild of the application on code changes, without restating the application.

* **Consistent UI**

  Flutter provides a consistent UI experience across different platforms, thanks to its custom rendering engine.

* **Rich Set of Widgets**

  Flutter comes with a comprehensive set of pre-designed widgets for creating complex and custom UIs fast.

* **Performance**

  Flutter's compiled approach contributes to high performance, especially in terms of animations and complex layouts.

### Cons Flutter over React

* **Learning Curve**

  For developers already familiar with JavaScript transitioning to Dart and Flutter. However, the syntax is relatively similar to JavaScript.

* **Community Size**

  While growing, Flutter's community is not as extensive as React's, leading to potentially fewer third-party packages and resources.

* **Integration with Native Features**

  Although Flutter has excellent support for accessing native features, there might be some delays in integrating the latest native functionalities.

* **App Size**

  Flutter apps may hav a larger file size compared to some native apps, which can be a consideration for certain projects.



