### [Five Simple Tips to Make User Friendly Forms on iOS](https://cocoacasts.com/five-simple-tips-to-make-user-friendly-forms-on-ios/)

#### Author: Bart Jacobs

Even though forms aren't difficult to implement on iOS, they can be frustrating to use. In today's tutorial, I'd like to share five simple tips that can drastically improve the usability of the forms in your iOS applications.

## Setting Up the Project

Let's get started by launching Xcode and creating a project using the **Single View Application** template.

![Setting Up the Project](https://cocoacasts.s3.amazonaws.com/five-simple-tips-to-make-user-friendly-forms-on-ios/figure-project-setup-1.jpg)

Name the project **Forms** and set **Language** to **Swift**.

![Setting Up the Project](https://cocoacasts.s3.amazonaws.com/five-simple-tips-to-make-user-friendly-forms-on-ios/figure-project-setup-2.jpg)

## Creating the User Interface

In this tutorial, we build a simple registration form with four text fields. Open **ViewController.swift** and declare four outlets of type `UITextField`.

```language-swift
import UIKit

class ViewController: UIViewController {

    // MARK: - Properties

    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!

}
```

Open **Main.storyboard**, add a vertical stack view to the **View Controller Scene**, and add a label, four text fields, and a button to the stack view. With the stack view selected, set **Spacing** to **8**. Set the text of the label to **Create an Account** and set the title of the button to **Save**. This is the form you should end up with.

![Creating the User Interface](https://cocoacasts.s3.amazonaws.com/five-simple-tips-to-make-user-friendly-forms-on-ios/figure-creating-the-user-interface-1.jpg)

Don't forget to connect each text field with its corresponding outlet. Ready? It's time for the first tip.

**Read this article on [Cocoacasts](https://cocoacasts.com/five-simple-tips-to-make-user-friendly-forms-on-ios/)**.
