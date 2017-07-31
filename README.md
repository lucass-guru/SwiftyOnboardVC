# SwiftyOnboardVC
[![Version](https://img.shields.io/cocoapods/v/SwiftyOnboardVC.svg?style=flat)](http://cocoapods.org/pods/SwiftyOnboardVC)
![Swift 3.0.x](https://img.shields.io/badge/Swift-3.0.x-orange.svg)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyOnboardVC.svg?style=flat)](http://cocoadocs.org/docsets/SwiftyOnboardVC)
[![License](https://img.shields.io/cocoapods/l/SwiftyOnboardVC.svg)](https://raw.githubusercontent.com/chaser79/SwiftyOnboardVC/master/LICENSE)
Onboard controler written in swift 3 that uses view controlers.

## Overview
<img src="Demo.gif" width="220"/>

## Installation

### CocoaPods
SwiftyOnboardVC is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

`pod 'SwiftyOnboardVC'`

Then, run `pod install`

In case you haven't installed CocoaPods yet, run the following command

```ruby
sudo gem install cocoapods
```

### Manual

Drag the folder `SwityOnboardVCSource` directory into your project.

## Requirements

* iOS 9.0+
* Xcode 8+
* Swift 3

## Example project
Download and run the example project to see how SwiftyOnboardVC works.

##Code example
Create an array of view controllers
```swift
if let storyboard = self.storyboard {
	let viewOne = storyboard.instantiateViewController(withIdentifier: "ViewOne")
	let viewTwo = storyboard.instantiateViewController(withIdentifier: "ViewTwo")
	let viewThree = storyboard.instantiateViewController(withIdentifier: "ViewThree")
	let viewFour = storyboard.instantiateViewController(withIdentifier: "ViewFour")
	let viewControllers = [viewOne, viewTwo, viewThree, viewFour]
}
```
Create an instance of SwiftyOnboardVC with or without an array of view controllers
``` swift
//Without view controllers
let onboard = SwiftyOnboardVC()
//with view controllers
let onboard = SwiftyOnboardVC(viewControllers: viewControllers)
```
Set some settings for SwiftyOnboardVC
```swift
onboard.backgroundColor = .black
```
Present SwiftyOnboardVC
```swift
self.present(onboard, animated: true, completion: nil)
```

##Settings for SwiftyOnboardVC
Once an instance has been created of SwiftyOnboardVC you can changed all of theses features
```swift
//view settings
onboard.backgroundColor = .white
onboard.bounces = true
onboard.showHorizontalScrollIndicator = false

//Page control settings
onboard.showPageControl = true
onboard.pageControlTintColor = .lightGray
onboard.currentPageControlTintColor = .black
    
//Left button settings
onboard.showLeftButton = true
onboard.leftButtonText = "Previous"
onboard.leftButtonTextColor = .black
onboard.leftButtonBackgroundColor = .orange
onboard.leftButtonCornerRadius = 0
onboard.leftButtonHeightPadding = 5
onboard.leftButtonWidthPadding = 5
    
//Right button settings
onboard.showRightButton = true
onboard.rightButtonText = "Next"
onboard.rightButtonTextColor = .black
onboard.rightButtonBackgroundColor = .orange
onboard.rightButtonCornerRadius = 0
onboard.rightButtonHeightPadding = 5
onboard.rightButtonWidthPadding = 5
    
//Button top margin
onboard.buttonTopMargin = 5
    
//Status bar
onboard.hideStatusBar = false
```

## License

SwiftyOnboardVC is available under the MIT license. See the [LICENSE](https://github.com/chaser79/SwiftyOnboardVC/blob/master/LICENSE) file for more info.