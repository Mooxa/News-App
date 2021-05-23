//
//  Extension.swift
//  Xibaar (macOS)
//
//  Created by Mouhamed Dieye on 23/05/2021.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        //        do {
        //         loaded =  try decoder.decode(T.self, from: data)
        //            return loaded
        //        }catch DecodingError.dataCorrupted(let context) {
        //          print(context)
        //        } catch DecodingError.keyNotFound(let key, let context) {
        //          print("Key '\(key)' not found:", context.debugDescription)
        //          print("codingPath:", context.codingPath)
        //        } catch DecodingError.valueNotFound(let value, let context) {
        //          print("Value '\(value)' not found:", context.debugDescription)
        //          print("codingPath:", context.codingPath)
        //        } catch DecodingError.typeMismatch(let type, let context) {
        //          print("Type '\(type)' mismatch:", context.debugDescription)
        //          print("codingPath:", context.codingPath)
        //        } catch let error{
        //          print("error: ", error)
        //        }
        return loaded
    }
}
extension String {
    
    func stringToDate() -> String{
        let isoDate = self
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        let date = dateFormatter.date(from:isoDate)!
        return date.getElapsedInterval()
    }
    
    
}


extension Date {
    
    func getElapsedInterval() -> String {
        
        let interval = Calendar.current.dateComponents([.year, .month, .day], from: self, to: Date())
        
        if let year = interval.year, year > 0 {
            return year == 1 ? "\(year)" + " " + "year ago" :
                "\(year)" + " " + "years ago"
        } else if let month = interval.month, month > 0 {
            return month == 1 ? "\(month)" + " " + "month ago" :
                "\(month)" + " " + "months ago"
        } else if let day = interval.day, day > 0 {
            return day == 1 ? "\(day)" + " " + "day ago" :
                "\(day)" + " " + "days ago"
        } else {
            return "a moment ago"
            
        }
        
    }
}

