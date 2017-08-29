import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!

    var item: Item!
 
    var imageURL:UIImageView!
    
    override func viewDidLoad() {
        
        print(item)
        
            itemLabel.text = "\(item!)"
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
