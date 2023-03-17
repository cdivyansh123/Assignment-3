// Import the UIKit framework
import UIKit

class ViewController: UIViewController
{
// This line creates the IBOutlet of table view
    @IBOutlet weak var myTableView: UITableView!
    
// Declare an array called api that contains a list of API URLs
    var api=["https://api.publicapis.org/entries",
             "https://catfact.ninja/fact",
             "https://api.coindesk.com/v1/bpi/currentprice.json",
             "https://www.boredapi.com/api/activity",
             "https://api.agify.io?name=meelad",
             "https://api.genderize.io?name=luc",
             "https://api.nationalize.io?name=nathaniel",
             "https://datausa.io/api/data?drilldowns=Nation&measures=Population",
             "https://dog.ceo/api/breeds/image/random",
             "https://api.ipify.org?format=json",
             "https://ipinfo.io/161.185.160.93/geo",
             "https://official-joke-api.appspot.com/random_joke"]
    
// Override the viewDidLoad() method which is called when the view is loaded.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
// UITableViewDataSource method that returns the number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return api.count
    }
    
// UITableViewDataSource method that creates and returns a cell for the given index path
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "title",for: indexPath) as? MyTableViewCell
        cell?.myLabel1?.text=api[indexPath.row]
        return cell!
    }

// UITableViewDelegate method that handles when a row is selected in the table view
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        detailVC?.intTag = indexPath.row
        self.navigationController?.pushViewController(detailVC!, animated: true)
      }
}
