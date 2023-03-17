// Import the UIKit framework
import UIKit

class MyTableViewCell: UITableViewCell {

// Creates a IBOutlet for Labels
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
   
// awakeFromNib() method which is called when the cell is first created
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

// setSelected() method which is called when the cell is selected
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
