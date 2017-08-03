# SwiftyOnboardVC
[![Version](https://img.shields.io/cocoapods/v/SwiftyOnboardVC.svg?style=flat)](http://cocoapods.org/pods/SwiftyOnboardVC)
[![Platform](https://img.shields.io/badge/platform-iOS-blue.svg?style=flat)](http://cocoapods.org/pods/SwiftyOnboardVC)
[![Swift 3.0.x](https://img.shields.io/badge/Swift-3.0.x-orange.svg)](https://developer.apple.com/swift/resources/)
[![Twitter](https://img.shields.io/badge/twitter-@FrontFlipDevs-blue.svg?style=flat)](https://twitter.com/FrontFlipDevs)
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=N8JBV5QTY2BJL)
[![License](https://img.shields.io/cocoapods/l/SwiftyOnboardVC.svg)](https://raw.githubusercontent.com/chaser79/SwiftyOnboardVC/master/LICENSE)

Onboard controler written in swift 3 that uses view controlers.
By [FrontFlip Studios](http://www.frontflipstudios.com)

## Overview
<img src="Demo.gif" width="220"/>

## Installation

### CocoaPods
SwiftyOnboardVC is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

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

## Code example
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

If you create an instance without an array of view controllers set it
``` swift
onboard.viewControllers = [viewOne, viewTwo, viewThree, viewFour]
```
Set some settings for SwiftyOnboardVC
```swift
onboard.backgroundColor = .black
```
Present SwiftyOnboardVC
```swift
self.present(onboard, animated: true, completion: nil)
```
You can get a handle on SwiftyOnboardVC control in any of your view controler classes
```swift
//Get the parent view controler which is SwiftyOnboardVC
if let parentVC = self.parent as? SwiftyOnboardVC {
	//Then do whatever you like with the parent view controler
	parentVC.dismiss(animated: true, completion: nil)
}
``` 

## Settings for SwiftyOnboardVC
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

## Functions of SwiftyOnboardVC
Theses are the functions you can call on the SwiftyOnboardVC controller
``` swift
onboard.previousPage() //moves back to the previous page
onboard.nextPage() //moves to the next page
onboard.skip() //skips to the last page
onboard.moveLeftButtonOffScreen() //moves left button off screen
onboard.moveRightButtonOffScreen() //moves right button off screen
onboard.movePageControlOffScreen() //moves the page control off screen
onboard.moveLeftButtonOnScreen() //moves left button back on screen
onboard.moveRightButtonOnScreen() //moves right button back on screen
onboard.movePageControlOnScreen() //moves page control back on screen
onboard.updateView() //updates the view to give an animation to the buttons when they are moved.
```

## Delegate
Add `SwiftyOnboardVCDelegate` to the top of your swift file and set the delegate
``` swift
onboard.delegate = self
```

Once the delegate has been set you have theses optional functions
``` swift
func leftButtonPressed() {
	//Called when the left button is pressed
}

func rightButtonPressed() {
	//Called when the right button is pressed
}

func pageDidChange(currentPage: Int) {
	//Called when the page changes with the current page number. Here you can test the page number and hide/show the buttons and page control
}
```

## Author
- [Luke Chase](https://github.com/chaser79)
- [FrontFlip Studios](http://www.frontflipstudios.com)
- [Facebook](https://www.facebook.com/FrontFlipStudios/)
- [Twitter](https://twitter.com/FrontFlipDevs)

## Donations
If you would like to donate to make SwiftOnboardVC better or just buy me a beer.

[![paypal](https://www.paypalobjects.com/en_GB/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=N8JBV5QTY2BJL)

## Communication

- If you **need help**, use [Stack Overflow](http://stackoverflow.com/questions/tagged/ezswipecontroller). (Tag 'SwiftyOnboardVC')
- Or email myself at info@frontflipstudios.com.
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## License

SwiftyOnboardVC is available under the MIT license. See the [LICENSE](https://github.com/chaser79/SwiftyOnboardVC/blob/master/LICENSE) file for more info.
