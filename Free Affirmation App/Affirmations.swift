//
//  Affirmations.swift
//  Free Affirmation App
//
//  Created by VLol on 10/25/24.
//

import Foundation



struct Affirmation: Identifiable, Codable {
    var id = UUID()
    let text: String //string is required
    let category: String? //makes category option
    let author: String? //makes author an optional
    //let favorited : Boolean? //makes favorite function a boolean which display a thumbs up or down
    let dateAdded: Date //date is dynamic and required
    
    // Specify the keys to match JSON data, excluding `id`
       private enum CodingKeys: String, CodingKey {
           case text, category, author, dateAdded
       }
}

func generateAffirmations(from data: [(String, String)]) -> [Affirmation] {
    return data.map { (text, category) in
        Affirmation(
            text: text,
            category: category,
            author: "",  // Leave author blank
            dateAdded: Date()  // Use the current date
            //favorited: Boolean,
        )
    }
}

//function that loads affirmations from JSON
func loadAffirmations() -> [Affirmation] {
    guard let url = Bundle.main.url(forResource: "affirmations", withExtension: "json") else {
        return []
    }
    
    do {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        var affirmations = try decoder.decode([Affirmation].self, from: data)
        
        // Assign a unique UUID to each affirmation
        for index in affirmations.indices {
            affirmations[index].id = UUID()
        }
        
        return affirmations
    } catch {
        print("Error loading affirmations: \(error)")
        return []
    }
}


let affirmationsData: [Affirmation] = loadAffirmations()



//let affirmationData = [
//   ("You are stronger than you think.", "Strength"),
//    ("Your dreams are within reach.", "Dreams"),
//    ("Happiness is a choice you make.", "Happiness"),
// Add more tuples for additional affirmations
//]

//let affirmationsData: [Affirmation] = generateAffirmations(from: affirmationData)


