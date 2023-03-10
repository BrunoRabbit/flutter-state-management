# flutter_state_management

## Objectives
- This is a simple study Project using a Counter App
- I use MVVM (Model, View, View Model)
- I used differents state managements
## Features
:white_check_mark: Increment, Decrement and Reset a counter value

## What I used

📱 For App:

- Flutter, Dart, MVVM, Equatable, 
- **state management**: Value Notifier, Change Notifier, BloC, MobX, Provider, GetX

🧪 For Test:

- Mockito, BuildRunner, Bloc_Test, flutter_test

## Tests

![tests](https://media.discordapp.net/attachments/700134976603160596/1083561599375261756/image.png)

## APP Overview
- the images are in order, HOME PAGE, INCREMENT VALUE NOTIFIER, DECREMENT and RESET  

![app](https://media.discordapp.net/attachments/700134976603160596/1083561988585689189/app.png?width=949&height=473)

## Folders
 __Lib folder__
 ```bash
lib
├───models
├───utils
│   └───routes
├───views
│   ├───bloc
│   ├───home
│   └───sections
│       ├───bloc_section
│       ├───change_notifier_section
│       ├───getx_section
│       ├───mobx_section
│       ├───provider_section
│       └───value_notifier_section
└───view_models
    ├───change_notifier_view_model
    ├───getx_view_model
    ├───mobx_view_model
    ├───provider_view_model
    └───value_notifier_view_model
```

 __Test folder__

```bash
test
├───models
├───utils
│   └───routes
├───views
│   └───bloc
└───view_models
    ├───change_notifier_view_model
    ├───getx_view_model
    ├───mobx_view_model_test.dart
    ├───provider_view_model
    └───value_notifier_view_model
```
