# Dart Minimal Reproducible Example: Mocktail Issue #247

This repository demonstrates a minimal reproducible example of the issue raised
in [mocktail#247](https://github.com/felangel/mocktail/issues/247).
It is designed to help investigate and debug the
problem.

## Problem Description

This project highlights an issue with **mocktail** version `^1.0.4`, specifically related to `verify` and stubbing
behavior when calling methods on mocks.
For more information, see the original GitHub issue: [mocktail#247](https://github.com/felangel/mocktail/issues/247).

## Environment

- **Dart SDK**: `^3.2.5`
- **mocktail**: `^1.0.4`
- **test**: `^1.24.0`

## Folder Structure

- `pubspec.yaml`: Contains the project dependencies and environment configuration.
- `test/`: Includes test cases that reproduce the issue for verification.
- `lib/`: *Not relevant*
- `mocktail_missing_last_stub_issue_247.dart`: *Not relevant*

## How to Run

1. Ensure you have the correct **Dart SDK** installed (minimum version `^3`).
2. Clone this repository and navigate to the folder:

``` bash
   git clone git@github.com:BrayanCaro/mocktail_missing_last_stub_issue_247.git
   cd mocktail_missing_last_stub_issue_247
```

1. Get the dependencies:

``` bash
   dart pub get
```

1. Run the tests:

``` bash
   dart test
```

The failing test demonstrates the issue.
Feel free to adapt the repo URL or other specifics based on your sharing preferences!
