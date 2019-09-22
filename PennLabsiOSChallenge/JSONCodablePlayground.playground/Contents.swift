import UIKit

var str = "Hello, playground"
struct DiningVenue: Codable{
    var dailyMenuURL: String
    var dateHours: [DateHours]
    var facilityURL: String
    var id: Int
    var imageURL: String
    var name: String
    var venuetype: String
    var weeklyMenuUrl: String
}
struct DateHours: Codable {
    var date: String
    var meal: [MealHours]
}
struct MealHours: Codable {
    var close: String
    var open: String
    var type: String
}
let url = URL(string: "http://api.pennlabs.org/dining/venues")
let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
    
    if error != nil {
        print(error!)
    }else{
        if let urlContent = data {
            do{
                let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as! [NSDictionary]
                //print(jsonResult)
                //                        let jsonData = jsonResult.data(using: .utf8)!
                //let user = try! JSONDecoder().decode(DiningVenue.self, from: jsonResult)
                do {
                    let data1 =  try JSONSerialization.data(withJSONObject: jsonResult, options: JSONSerialization.WritingOptions.prettyPrinted) // first of all convert json to the data
                    let convertedString = String(data: data1, encoding: String.Encoding.utf8) // the data will be converted to the string
                    print(convertedString) // <-- here is ur string
                    
                    let jsonData = convertedString!.data(using: .utf8)!
                    let decoder = JSONDecoder()
                    let beer = try! decoder.decode(DiningVenue.self, from: jsonData)
                    
                } catch let myJSONError {
                    print(myJSONError)
                }
//let dateHours = (jsonResult).value(forKeyPath: "document.venue.dateHours") as! [[NSDictionary]]
            }catch{
                print("Json Processing Failed")
            }
        }
    }
}
 task.resume();
