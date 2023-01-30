
 
@Clmeyers-Dev 
SCCapstone
/
Downpour
Private
Code
Issues
29
Pull requests
1
Actions
Projects
Wiki
Security
Insights
Settings
Downpour/README.md.txt
@Wsutton424
Wsutton424 Update README.md.txt
Latest commit fc1cdcf 22 minutes ago
 History
 3 contributors
@kmeiler@Clmeyers-Dev@Wsutton424
73 lines (49 sloc)  2.7 KB

# Project Name
Downpour
# Description
This is a language-learning Android app in a similar vein to Duolingo. Our app diverts from the traditional approach that apps
like Duolingo use by the languages on offer in our app. We are choosing to serve an underserved language group, that being the native languages of Pacific Islanders.
There are many different languages and groups in the Pacific so we are focusing on delivering an app that will allow the user to learn to read and speak the
Micronesian language of Pohnpeian. This app will teach and quiz users about the most used phrases that would give them a good working knowledge that would help users
get around the island and speak to natives.


following your instructions.
1. Install VScode and android stuio and create a virtual android device using the android studio emulator 
1. open the project in VScode and select your emulator device in the bottom right corner in the blue bar (make sure to install the dart and flutter extensions) 
1. Run the VScode debugger and your emulator device should launch with our app lauching aswell
## External Requirements

In order to build this project you first have to install:

* https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter
* https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code


## Setup

1. Create a android emulator device using android studio and select the device in VScode

## Running

1. After selecting your device in vscode press f5 to launch in debug mode


# Testing 

The behavioral and unity tests are located in /app/integration_test

## Running Tests
with a virtual device connected you can run 
`flutter test test/unit_test.dart` to run a specific test 
or
`flutter test directory` to run all tests located in that directory

the unit tests are located in the `/app/test` folder 

The much slower behavioral tests are located in the `/app/integration_test` folder 

Run all behavioral tests with the following command: 

`flutter test integration_test`

Run all unit tests with the following command: 

`flutter test test`

## Style Guide
### Flutter:
https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo
### Dart:
https://dart.dev/guides/language/effective-dart/style
# Authors

Kyle Meiler - kmeiler@email.sc.edu
Christopher Meyers - clmeyers@email.sc.edu

Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Downpour/README.md.txt at main · SCCapstone/Downpour
