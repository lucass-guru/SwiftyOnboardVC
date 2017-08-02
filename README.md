# SwiftyOnboardVC
[![CI Status](http://img.shields.io/travis/chaser79/SwiftyOnboardVC.svg?style=flat)](https://travis-ci.org/chaser79/SwiftyOnboardVC){:target="_blank"}
[![Version](https://img.shields.io/cocoapods/v/SwiftyOnboardVC.svg?style=flat)](http://cocoapods.org/pods/SwiftyOnboardVC){:target="_blank"}
[![Platform](https://img.shields.io/badge/platform-iOS-blue.svg?style=flat)](http://cocoapods.org/pods/SwiftyOnboardVC){:target="_blank"}
[![Swift 3.0.x](https://img.shields.io/badge/Swift-3.0.x-orange.svg)](https://developer.apple.com/swift/resources/){:target="_blank"}
[![License](https://img.shields.io/cocoapods/l/SwiftyOnboardVC.svg)](https://raw.githubusercontent.com/chaser79/SwiftyOnboardVC/master/LICENSE){:target="_blank"}

Onboard controler written in swift 3 that uses view controlers.
By [FrontFlip Studios](http://www.frontflipstudios.com){:target="_blank"}

## Overview
<img src="Demo.gif" width="220"/>

## Installation

### CocoaPods
SwiftyOnboardVC is available through [CocoaPods](http://cocoapods.org){:target="_blank"}. To install it, simply add the following line to your Podfile:

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

##Delegate
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
- [Luke Chase](https://github.com/chaser79){:target="_blank"}
- [FrontFlip Studios](http://www.frontflipstudios.com){:target="_blank"}
- [Facebook](https://www.facebook.com/FrontFlipStudios/){:target="_blank"}
- [Twitter](https://twitter.com/FrontFlipDevs){:target="_blank"}

## Donations
If you would like to donate to make SwiftOnboardVC better or just buy me a beer.
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="8EFGJ5Q83LYBN">
<input type="image" src="https://www.paypalobjects.com/en_US/GB/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

## Communication

- If you **need help**, use [Stack Overflow](http://stackoverflow.com/questions/tagged/ezswipecontroller){:target="_blank"}. (Tag 'SwiftyOnboardVC')
- Or email myself at info@frontflipstudios.com.
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## License

SwiftyOnboardVC is available under the MIT license. See the [LICENSE](https://github.com/chaser79/SwiftyOnboardVC/blob/master/LICENSE){:target="_blank"} file for more info.
