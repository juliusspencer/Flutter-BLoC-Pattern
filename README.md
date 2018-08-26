# Flutter-BLoC-Pattern

An example of the BLoC pattern.

## Getting Started

This is similar to the Flutter-Redux-Pattern in functionality but is
different in form. The `exampleBloc` contains the business logic and the
`exampleProvider` extends from `InheritedWidget` and is used by wrapping
the main screen where the BLoC is created. Access to the block can be
seen in the `exampleScreen` widget where it is picked up through the
context.

Note that the BLoC contains no Flutter imports.
