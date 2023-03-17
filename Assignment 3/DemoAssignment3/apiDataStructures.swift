// Import the Foundation framework, which provides fundamental data types, such as String and Int, as well as data-handling utilities
import Foundation

// Define a new struct called ApiData, which conforms to the Codable protocol
struct ApiData:Codable{
    let API:String?
    let Description:String?
}

// Define a new struct called CatFact, which conforms to the Codable protocol
struct CatFact: Codable {
    let fact:String?
    let length:Int?
}

// Define a new struct called CoinDesk, which conforms to the Codable protocol
struct CoinDesk: Codable{
    let disclaimer:String?
    let chartName:String?
}

// Define a new struct called Bored, which conforms to the Codable protocol
struct Bored: Codable{
    let type:String?
    let participants:Int?
}

// Define a new struct called Agify, which conforms to the Codable protocol
struct Agify: Codable{
    let name:String?
    let age:Int?
}

// Define a new struct called Genderize, which conforms to the Codable protocol
struct Genderize: Codable{
    let count:Int?
    let gender:String?
}

// Define a new struct called Nationalize, which conforms to the Codable protocol
struct Nationalize: Codable{
    let country_id:String?
    let probability:Float?
}

// Declare a new struct called DataUSA that conforms to the Codable protocol
struct DataUSA: Codable{
    let ID_Year:Int?
    let Nation:String?
    
// Declare an enumeration called CodingKeys, which conforms to the CodingKey protocol. This enumeration is used to customize the key names
    enum CodingKeys: String, CodingKey {
            case ID_Year = "ID Year"
            case Nation = "Nation"
        }
}

// Define a new struct called Dogs, which conforms to the Codable protocol
struct Dogs:Codable{
    let message:String?
    let status:String?
}

// Define a new struct called IPify, which conforms to the Codable protocol
struct IPify:Codable{
    let ip:String?
}

// Define a new struct called IPinfo, which conforms to the Codable protocol
struct IPinfo:Codable{
    let ip:String?
    let city:String?
}

// Define a new struct called Jokes, which conforms to the Codable protocol
struct Jokes:Codable{
    let setup:String?
    let punchline:String?
}
