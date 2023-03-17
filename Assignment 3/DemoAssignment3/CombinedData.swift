// Import the Foundation framework, which provides basic building blocks for many apps, including data types, data structures, and utilities.
import Foundation

// Declare a new struct called CombinedData that conforms to the Codable protocol
struct CombinedData:Codable{
    let entries: [ApiData]
}

// Declare a new struct called API7 that conforms to the Codable protocol
struct API7:Codable{
    let country:[Nationalize]
}

// Declare a new struct called API8 that conforms to the Codable protocol
struct API8:Codable{
    let data:[DataUSA]
}
