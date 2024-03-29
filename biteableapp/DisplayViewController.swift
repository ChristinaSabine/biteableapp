import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!

    var item: Item!
    
    override func viewDidLoad() {

        print(item)
        //Label data on item scanned
        itemLabel.text = "\(item!)"
        imageView.imageFromServerURL(urlString: item.imageURL)
        
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
