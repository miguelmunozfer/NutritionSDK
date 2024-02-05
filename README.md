# NutritionSDK

[![CI Status](https://img.shields.io/travis/Miguel/VitaleSDK.svg?style=flat)](https://travis-ci.org/Miguel/VitaleSDK)
[![Version](https://img.shields.io/cocoapods/v/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![License](https://img.shields.io/cocoapods/l/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)
[![Platform](https://img.shields.io/cocoapods/p/VitaleSDK.svg?style=flat)](https://cocoapods.org/pods/VitaleSDK)

## Description
NutritionIASDK is a comprehensive intelligent, automatic, and adaptive nutrition framework programmed in
Swift for iOS and iPadOS. Is the most convenient way of integrating our nutrition features
with any third party.

## Installation

NutritionIASDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NutritionSDK', :git => 'https://github.com/miguelmunozfer/NutritionSDK'
```

Add the following lines to the end of the podfile file

```ruby
post_install do |installer|
installer.pods_project.targets.each do |target|
target.build_configurations.each do |config|
config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
end
end
end
```


## Implementation Guide

### Show nutrition module


```swift
NutritionSDK.sharedInstance.showNutritionModule()

```

### Initializing the SDK

To get started with the NutritionSDK, import it into your AppDelegate and initialize it with your application's credentials:

```swift
import NutritionSDK

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    NutritionSDK.sharedInstance.start(with: "USER_IDENTIFIER", appID: "YOUR_APP_ID", password: "YOUR_SECRET_PASSWORD")
    return true
}
```

- `USER_IDENTIFIER`: A unique identifier for the user.
- `YOUR_APP_ID`: Your application's ID, as provided by NutritionSDK.
- `YOUR_SECRET_PASSWORD`: A password to secure communications with the SDK.

### User Profile Management

Customize user profiles for tailored nutrition advice:

```swift
NutritionSDK.sharedInstance.updateProfile(sex: .female, height: 170, weight: 65, birthDate: Date(), activityLevel: 4)
```

- `sex`: User's gender.
- `height`: User's height in centimeters.
- `weight`: User's weight in kilograms.
- `birthDate`: User's date of birth.
- `activityLevel`: A scale of physical activity level.



### UI Customization

Customize the appearance of the SDK to match your app's theme:

```swift
NutritionSDK.sharedInstance.setMainColor(color: "#HEX_COLOR")
NutritionSDK.sharedInstance.setNavigationBarColor(color: "#HEX_COLOR")
NutritionSDK.sharedInstance.setNavigationTintColor(color: "#HEX_COLOR")
NutritionSDK.sharedInstance.preferLargeTitle(_ preferLarge: Bool)
NutritionSDK.sharedInstance.setNavigationTitle(title: "Your Title")
NutritionSDK.sharedInstance.setCountry(_ country: NutritionUserCountry)
```

### Additional Functionalities

Implement various SDK features to enhance user experience:

```swift
NutritionSDK.sharedInstance.logout()
```
