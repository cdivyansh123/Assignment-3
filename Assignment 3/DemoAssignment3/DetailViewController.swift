// Import the UIKit framework
import UIKit


class DetailViewController: UIViewController {

// These lines of code declare multiple variables of different types to hold data fetched from different APIs
    var ApiList=[ApiData]()
    
    var ApiList2 = [CatFact]()
    var apilist2:CatFact?
    
    var ApiList3=[CoinDesk]()
    var apilist3:CoinDesk?
    
    var ApiList4=[Bored]()
    var apilisr4:Bored?
    
    var ApiList5=[Agify]()
    var apilist5:Agify?
    
    var ApiList6=[Genderize]()
    var apilist6:Genderize?
    
    var ApiList7=[Nationalize]()
    
    var ApiList8=[DataUSA]()
    
    var ApiList9=[Dogs]()
    var apilist9:Dogs?
    
    var ApiList10=[IPify]()
    var apilist10:IPify?
    
    var ApiList11=[IPinfo]()
    var apiinfo:IPinfo?
    
    var ApiList12=[Jokes]()
    var apilist12:Jokes?
    
// Declaration of variable with initial value 0
    var intTag=0
    
// This line of code creates the IBOutlet for table view
    @IBOutlet weak var detailViewController: UITableView!
     
// Override the viewDidLoad() method which is called when the view is loaded.
    override func viewDidLoad() {
        super.viewDidLoad()
    
        switch intTag{
            case 0:
                // Calls the function fetchData1()
                fetchData1()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData1"
            if let userDefault1 = UserDefaults.standard.data(forKey: "ApiData1") {
                do {
                    let apiData = try JSONDecoder().decode(CombinedData.self, from: userDefault1)
                    self.ApiList = apiData.entries
                } catch {
                    print("Error decoding stored API data: \(error)")
                }
            } else {
                print("No stored API data found")
            }
                break
            
        case 1:
            // Calls the function fetchData2()
            fetchData2()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData2"
            if let userDefault2 = UserDefaults.standard.data(forKey: "ApiData2") {
                do {
                    let catFact = try JSONDecoder().decode(CatFact.self, from: userDefault2)
                    self.ApiList2.append(catFact)
                } catch {
                    print("Error decoding stored API data: \(error)")
                }
            } else {
                print("No stored API data found")
            }
            break
            
        case 2:
            // Calls the function fetchData3()
            fetchData3()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData3".
            if let userDefault3 = UserDefaults.standard.data(forKey: "ApiData3") {
                do {
                    let coindesk = try JSONDecoder().decode(CoinDesk.self, from: userDefault3)
                    self.ApiList3.append(coindesk)
                } catch {
                    print("Error decoding stored API data: \(error)")
                }
            } else {
                print("No stored API data found")
            }
            break
            
        case 3:
            // Calls the function fetchData4()
            fetchData4()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData4"
            if let userDefault4 = UserDefaults.standard.data(forKey: "ApiData4") {
                do {
                    let bored = try JSONDecoder().decode(Bored.self, from: userDefault4)
                    self.ApiList4.append(bored)
                } catch {
                    print("Error decoding stored API data: \(error)")
                }
            } else {
                print("No stored API data found")
            }
            break
            
        case 4:
            // Calls the function fetchData5()
            fetchData5()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData5"
            if let userDefault5 = UserDefaults.standard.data(forKey: "ApiData5") {
                do {
                    let agify = try JSONDecoder().decode(Agify.self, from: userDefault5)
                    self.ApiList5.append(agify)
                } catch {
                    print("Error decoding stored API data: \(error)")
                }
            } else {
                print("No stored API data found")
            }
            break
            
        case 5:
            // Calls the function fetchData6()
            fetchData6()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData6"
            if let userDefault6 = UserDefaults.standard.data(forKey: "ApiData6") {
                do {
                    let genderize = try JSONDecoder().decode(Genderize.self, from: userDefault6)
                    self.ApiList6.append(genderize)
                } catch {
                    print("Error decoding stored API data: \(error)")
                }
            } else {
                print("No stored API data found")
            }
            break
            
        case 6:
            // Calls the function fetchData7()
            fetchData7()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData7"
            if let userDefault7 = UserDefaults.standard.data(forKey: "ApiData7") {
                do {
                    let apiFullList = try JSONDecoder().decode(API7.self, from: userDefault7)
                    self.ApiList7 = apiFullList.country
                } catch {
                    print("Error decoding stored API data: \(error)")
                }
            } else {
                print("No stored API data found")
            }
            break
            
        case 7:
            // Calls the function fetchData8()
            fetchData8()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData"
            if let userDefault8 = UserDefaults.standard.data(forKey: "ApiData8"){
                do{
                    let dataUsa = try JSONDecoder().decode(API8.self, from: userDefault8)
                    self.ApiList8 = dataUsa.data
                }catch{
                    print("Error decoding stored API data: \(error)")
                }
            }else{
                print("No stored API data found")
            }
            break
            
        case 8:
            // Calls the function fetchData9()
            fetchData9()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData9"
            if let userDefault9 = UserDefaults.standard.data(forKey: "ApiData9") {
                do {
                    let dogs = try JSONDecoder().decode(Dogs.self, from: userDefault9)
                    self.ApiList9.append(dogs)
                } catch {
                    print("Error decoding stored API data: \(error)")
                }
            } else {
                print("No stored API data found")
            }
            break
            
        case 9:
            // Calls the function fetchData10()
            fetchData10()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData10"
            if let userDefault10 = UserDefaults.standard.data(forKey: "ApiData10"){
                do{
                    let ipify = try JSONDecoder().decode(IPify.self, from: userDefault10)
                    self.ApiList10.append(ipify)
                }catch{
                    print("Error decoding stored API data: \(error)")
                }
            }else{
                print("No stored API data found")
            }
            break
            
        case 10:
            // Calls the function fetchData11()
            fetchData11()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData11"
            if let userDefault11 = UserDefaults.standard.data(forKey: "ApiData11"){
                do{
                    let ipinfo = try JSONDecoder().decode(IPinfo.self, from: userDefault11)
                    self.ApiList11.append(ipinfo)
                }catch{
                    print("Error decoding stored API data: \(error)")
                }
            }else{
                print("No stored API data found")
            }
            break
            
        case 11:
            // Calls the function fetchData12()
            fetchData12()
            // Attempts to retrieve previously stored API data from user defaults for the key "ApiData12"
            if let userDefault12 = UserDefaults.standard.data(forKey: "ApiData12"){
                do{
                    let jokes = try JSONDecoder().decode(Jokes.self, from: userDefault12)
                    self.ApiList12.append(jokes)
                }catch{
                    print("Error decoding stored API data: \(error)")
                }
            }else{
                print("No stored API data found")
            }
            break
        default:
            break
        }
    }
    
// This function is used to fetch data from the first API
    func fetchData1(){
        let FirstUrl = URL(string: "https://api.publicapis.org/entries")
        
// A data task is created using URLSession.shared.dataTask, which is responsible for downloading data from the API's URL.
        let dataTask = URLSession.shared.dataTask(with: FirstUrl!, completionHandler: {
            (data , response , error) in
            
// If an error occurs while downloading the data, the guard statement will return nil
            guard let data = data , error == nil else{
                return
            }
            
// A variable called apiFullList of type CombinedData is created to store the response from the API
            var apiFullList:CombinedData?
            
// The data received from the API is decoded using JSONDecoder and stored in the apiFullList variable
            do {
                self.ApiList.removeAll()
                apiFullList = try JSONDecoder().decode(CombinedData.self, from: data)
                
                let jsonData = try JSONEncoder().encode(apiFullList)
                UserDefaults.standard.set(jsonData, forKey: "ApiData1")
            }
            catch{
                print("Error occured while Decoding jSON into Swift Structur\(error)")
            }
            
// The ApiList variable is assigned the value of the entries from the apiFullList variable
            self.ApiList=apiFullList!.entries
            
// The UI elements in the detailViewController are updated with the fetched data
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        })
// The data task is started using the resume() method
        dataTask.resume()
    }

// This function is used to fetch data from the second API
    func fetchData2() {
        let secondUrl = URL(string: "https://catfact.ninja/fact")!
        let dataTask = URLSession.shared.dataTask(with: secondUrl) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            var catFact: CatFact?
            do {
                self.ApiList2.removeAll()
                catFact = try JSONDecoder().decode(CatFact.self, from: data)
                let jsonData = try JSONEncoder().encode(catFact)
                UserDefaults.standard.set(jsonData, forKey: "ApiData2")
            } catch {
                print("Error occurred \(error)")
            }
            if let fact = catFact?.fact, let length = catFact?.length {
                print("Cat Fact: \(fact) and length: \(length)")
                self.ApiList2.append(catFact!)
            } else {
                print("Failed to fetch the data")
            }
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        }
        dataTask.resume()
    }
    
// This function is used to fetch data from the third API
    func fetchData3(){
        let thirdUrl = URL(string: "https://api.coindesk.com/v1/bpi/currentprice.json")!
        let dataTask = URLSession.shared.dataTask(with: thirdUrl) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            var coinDesk: CoinDesk?
            do {
                self.ApiList3.removeAll()
                coinDesk = try JSONDecoder().decode(CoinDesk.self, from: data)
                
                let jsonData = try JSONEncoder().encode(coinDesk)
                UserDefaults.standard.set(jsonData, forKey: "ApiData3")
            } catch {
                print("Error occurred \(error)")
            }
            if let disclaimer = coinDesk?.disclaimer, let chartName = coinDesk?.chartName{
                print("Disclaimer: \(disclaimer) and chartName: \(chartName)")
                self.ApiList3.append(coinDesk!)
            } else {
                print("Failed to fetch the data")
            }
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        }
        dataTask.resume()
    }
    
// This function is used to fetch data from the fourth API
    func fetchData4(){
        let fourthUrl = URL(string: "https://www.boredapi.com/api/activity")!
        let dataTask = URLSession.shared.dataTask(with: fourthUrl) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            var bored: Bored?
            do {
                self.ApiList4.removeAll()
                bored = try JSONDecoder().decode(Bored.self, from: data)
                let jsonData = try JSONEncoder().encode(bored)
                UserDefaults.standard.set(jsonData, forKey: "ApiData4")
            } catch {
                print("Error occurred \(error)")
            }
            if let type = bored?.type, let participants = bored?.participants {
                print("Type: \(type) and Participants: \(participants)")
                self.ApiList4.append(bored!)
            } else {
                print("Failed to fetch the data")
            }
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        }
        dataTask.resume()
    }
    
// This function is used to fetch data from the fifth API
    func fetchData5(){
        let fifthUrl = URL(string: "https://api.agify.io?name=meelad")!
        let dataTask = URLSession.shared.dataTask(with: fifthUrl) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            var agify: Agify?
            do {
                self.ApiList5.removeAll()
                agify = try JSONDecoder().decode(Agify.self, from: data)
                let jsonData = try JSONEncoder().encode(agify)
                UserDefaults.standard.set(jsonData, forKey: "ApiData5")
            } catch {
                print("Error occurred \(error)")
            }
            if let name = agify?.name, let age = agify?.age {
                print("Age: \(age) and name: \(name)")
                self.ApiList5.append(agify!)
            } else {
                print("Failed to fetch the data")
            }
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        }
        dataTask.resume()
    }
   
// This function is used to fetch data from the sixth API
    func fetchData6(){
        let sixthUrl = URL(string: "https://api.genderize.io?name=luc")!
        let dataTask = URLSession.shared.dataTask(with: sixthUrl) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            var genderize: Genderize?
            do {
                self.ApiList6.removeAll()
                genderize = try JSONDecoder().decode(Genderize.self, from: data)
                let jsonData = try JSONEncoder().encode(genderize)
                UserDefaults.standard.set(jsonData, forKey: "ApiData6")
            } catch {
                print("Error occurred \(error)")
            }
            if let count = genderize?.count, let gender = genderize?.gender {
                print("count: \(count) and gender: \(gender)")
                self.ApiList6.append(genderize!)
            } else {
                print("Failed to fetch the data")
            }
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        }
        dataTask.resume()
    }
    
// This function is used to fetch data from the seventh API
    func fetchData7(){
        let seventhUrl = URL(string: "https://api.nationalize.io?name=nathaniel")
        let dataTask = URLSession.shared.dataTask(with: seventhUrl!, completionHandler: {
            (data , response , error) in
            guard let data = data , error == nil else
            {
                return
            }
            var apiFullList:API7?
            do {
                apiFullList = try JSONDecoder().decode(API7.self, from: data)
                let jsonData = try JSONEncoder().encode(apiFullList)
                UserDefaults.standard.set(jsonData, forKey: "ApiData7")
            }
            catch{
                print("Error occured while Decoding jSON into Swift Structur\(error)")
            }
            self.ApiList7=apiFullList!.country
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        })
        dataTask.resume()
    }
    
// This function is used to fetch data from the eigth API
    func fetchData8(){
        let eighthUrl = URL(string: "https://datausa.io/api/data?drilldowns=Nation&measures=Population")
        let dataTask = URLSession.shared.dataTask(with: eighthUrl!, completionHandler: {
            (data , response , error) in
            guard let data = data , error == nil else
            {
                return
            }
            var apiFullList:API8?
            do {
                apiFullList = try JSONDecoder().decode(API8.self, from: data)
                let jsonData = try JSONEncoder().encode(apiFullList)
                UserDefaults.standard.set(jsonData,forKey: "ApiData8")
            }
            catch{
                print("Error occured while Decoding jSON into Swift Structur\(error)")
            }
            self.ApiList8=apiFullList!.data
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        })
        dataTask.resume()
    }
    
// This function is used to fetch data from the ninth API
    func fetchData9(){
        let ninthUrl = URL(string: "https://dog.ceo/api/breeds/image/random")!
        let dataTask = URLSession.shared.dataTask(with: ninthUrl) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            var dogs: Dogs?
            do {
                self.ApiList9.removeAll()
                dogs = try JSONDecoder().decode(Dogs.self, from: data)
                let jsonData = try JSONEncoder().encode(dogs)
                UserDefaults.standard.set(jsonData, forKey: "ApiData9")
            } catch {
                print("Error occurred \(error)")
            }
            if let message = dogs?.message, let status = dogs?.status{
                print("message: \(message) and status: \(status)")
                self.ApiList9.append(dogs!)
            } else {
                print("Failed to fetch the data")
            }
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        }
        dataTask.resume()
    }
    
// This function is used to fetch data from the tenth API
    func fetchData10(){
        let tenthUrl = URL(string: "https://api.ipify.org?format=json")!
        let dataTask = URLSession.shared.dataTask(with: tenthUrl) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            var ipify: IPify?
            do {
                self.ApiList10.removeAll()
                ipify = try JSONDecoder().decode(IPify.self, from: data)
                let jsonData = try JSONEncoder().encode(ipify)
                UserDefaults.standard.set(jsonData, forKey: "ApiData10")
            } catch {
                print("Error occurred \(error)")
            }
            if let ip = ipify?.ip{
                print("ip: \(ip)")
                self.ApiList10.append(ipify!)
            } else {
                print("Failed to fetch the data")
            }
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        }
        dataTask.resume()
    }
    
// This function is used to fetch data from the eleventh API
    func fetchData11(){
        let eleventhUrl = URL(string: "https://ipinfo.io/161.185.160.93/geo")!
        let dataTask = URLSession.shared.dataTask(with: eleventhUrl) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            var ipinfo: IPinfo?
            do {
                self.ApiList11.removeAll()
                ipinfo = try JSONDecoder().decode(IPinfo.self, from: data)
                let jsonData = try JSONEncoder().encode(ipinfo)
                UserDefaults.standard.set(jsonData, forKey: "ApiData11")
            } catch {
                print("Error occurred \(error)")
            }
            if let ip = ipinfo?.ip, let city = ipinfo?.city{
                print("ip: \(ip) and city: \(city)")
                self.ApiList11.append(ipinfo!)
            } else {
                print("Failed to fetch the data")
            }
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        }
        dataTask.resume()
    }
    
// This function is used to fetch data from the twelth API
    func fetchData12(){
        let twelthUrl = URL(string: "https://official-joke-api.appspot.com/random_joke")!
        let dataTask = URLSession.shared.dataTask(with: twelthUrl) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            var jokes: Jokes?
            do {
                self.ApiList12.removeAll()
                jokes = try JSONDecoder().decode(Jokes.self, from: data)
                let jsonData = try JSONEncoder().encode(jokes)
                UserDefaults.standard.set(jsonData, forKey: "ApiData12")
            } catch {
                print("Error occurred \(error)")
            }
            if let setup = jokes?.setup, let punchline = jokes?.punchline{
                print("setup: \(setup) and punchline: \(punchline)")
                self.ApiList12.append(jokes!)
            } else {
                print("Failed to fetch the data")
            }
            DispatchQueue.main.async {
                self.detailViewController.reloadData()
            }
        }
        dataTask.resume()
    }
}

extension DetailViewController:UITableViewDataSource,UITableViewDelegate{
// This function returns the number of rows to be displayed in the table view based on the value of the intTag variable
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch intTag{
        case 0:
            return ApiList.count
        case 1:
            return ApiList2.count
        case 2:
            return ApiList3.count
        case 3:
            return ApiList4.count
        case 4:
            return ApiList5.count
        case 5:
            return ApiList6.count
        case 6:
            return ApiList7.count
        case 7:
            return ApiList8.count
        case 8:
            return ApiList9.count
        case 9:
            return ApiList10.count
        case 10:
            return ApiList11.count
        case 11:
            return ApiList12.count
        default:
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
// This code is used to dequeue a reusable table view cell object for a given index path
        let cell = detailViewController.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
// This code chooses from 12 options to fill information in two labels in a table view
        switch intTag{
        case 0:
            if ApiList[indexPath.row].Description != nil {
                cell.myLabel2.text=ApiList[indexPath.row].Description
            } else {
                cell.myLabel2.text = "not found description"
            }
            cell.myLabel1.text = ApiList[indexPath.row].API
            break
            
        case 1:
            if ApiList2[indexPath.row].fact != nil {
                cell.myLabel1.text = ApiList2[indexPath.row].fact!
            } else {
                cell.myLabel1.text = "no data found"
            }
            cell.myLabel2.text = String(ApiList2[indexPath.row].length ?? 0)
            break
            
        case 2:
            if ApiList3[indexPath.row].disclaimer != nil {
                cell.myLabel1.text = ApiList3[indexPath.row].disclaimer
            } else {
                cell.myLabel1.text = "no data found"
            }
            cell.myLabel2.text = ApiList3[indexPath.row].chartName
            break
            
        case 3:
            if ApiList4[indexPath.row].type != nil {
                cell.myLabel1.text = ApiList4[indexPath.row].type!
            } else {
                cell.myLabel1.text = "no data found"
            }
            cell.myLabel2.text = String(ApiList4[indexPath.row].participants ?? 0)
            break
            
        case 4:
            if ApiList5[indexPath.row].name != nil {
                cell.myLabel2.text = ApiList5[indexPath.row].name!
            } else {
                cell.myLabel2.text = "no data found"
            }
            cell.myLabel1.text = String(ApiList5[indexPath.row].age ?? 0)
            break
            
        case 5:
            if ApiList6[indexPath.row].gender != nil {
                cell.myLabel2.text = ApiList6[indexPath.row].gender!
            } else {
                cell.myLabel2.text = "no data found"
            }
            cell.myLabel1.text = String(ApiList6[indexPath.row].count ?? 0)
            break
            
        case 6:
            if ApiList7[indexPath.row].country_id != nil {
                cell.myLabel2.text = ApiList7[indexPath.row].country_id!
            } else {
                cell.myLabel2.text = "no data found"
            }
            cell.myLabel1.text = String(ApiList7[indexPath.row].probability ?? 0)
            break
            
        case 7:
            if ApiList8[indexPath.row].Nation != nil {
                cell.myLabel2.text = ApiList8[indexPath.row].Nation!
            } else {
                cell.myLabel2.text = "no data found"
            }
            cell.myLabel1.text = String(ApiList8[indexPath.row].ID_Year ?? 0)
            break
            
        case 8:
            if ApiList9[indexPath.row].message != nil {
                cell.myLabel1.text = ApiList9[indexPath.row].message
            } else {
                cell.myLabel1.text = "no data found"
            }
            cell.myLabel2.text = ApiList9[indexPath.row].status
            break
            
        case 9:
            if ApiList10[indexPath.row].ip != nil {
                cell.myLabel1.text = ApiList10[indexPath.row].ip
            } else {
                cell.myLabel1.text = "no data found"
            }
            cell.myLabel2.isHidden=true
            break
            
        case 10:
            if ApiList11[indexPath.row].ip != nil {
                cell.myLabel1.text = ApiList11[indexPath.row].ip
            } else {
                cell.myLabel1.text = "no data found"
            }
            cell.myLabel2.text = ApiList11[indexPath.row].city
            break
            
        case 11:
            if ApiList12[indexPath.row].setup != nil {
                cell.myLabel1.text = ApiList12[indexPath.row].setup
            } else {
                cell.myLabel1.text = "no data found"
            }
            cell.myLabel2.text = ApiList12[indexPath.row].punchline
            
        default:
            break
        }
        return cell
    }
}
