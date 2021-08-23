# Constren 🚂.🚃.🚋.🚃.🚋.🚃.🚋.🚃.🚋
Make trains of constraints with style!

    imageView.constrain.top()                                   // default is equalToSuperview with 0 spacing
                       .lead(spacing: 16)                       // you can add spacing
                       .trail(label.leadingAnchor, spacing: 16) 
                       .height(100, relation: .greaterThan)     // you can add relation as lessThan or greaterThan. default is equalTo
                       
    titleLabel.constrain.fill()
                       
Constren is an easy to use layout tool for UIKit

# Requirements

- iOS 10.0+
- Xcode 10.0+
- Swift 4.0+
                   
# Installation

## Cocoapods

To add Constren into your project using [CocoaPods](https://cocoapods.org/), add it in your Podfile:

    pod 'Constren', :git => 'https://github.com/dorvk/Constren.git'
    
## Carthage

To add Constren into your project using [Carthage](https://github.com/Carthage/Carthage), specify it in your Cartfile:

    github "dorvk/Constren"
    
## Manually

Add the Sources folder into your project.

# Example

    import Constren

    let button = UIButton()
        
    view.addSubview(button)

    button.constrain.centerY()
                    .lead(spacing: 16)
                    .trail(spacing: 64)
                    .height(100)
That's it
