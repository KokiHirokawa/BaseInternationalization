import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel! {
        didSet {
            greetingLabel.text = NSLocalizedString("Hello", comment: "")
        }
    }
}

