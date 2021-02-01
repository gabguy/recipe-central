//
//  DataService.swift
//  Recipe Central
//
//  Created by Guy Gabbay on 30/01/2021.
//

import Foundation

class DataService {
  
  static func getLocalData() -> [Recipe] {
    let path = Bundle.main.path(forResource: "recipes", ofType: "json")
    
    guard path != nil else {
      return [Recipe]() // Return an empty Recipe list
    }
    
    let url = URL(fileURLWithPath: path!)
    
    do {
      let data = try Data(contentsOf: url)
      let decoder = JSONDecoder()
      let recipes = try decoder.decode([Recipe].self, from: data)
      
      for recipe in recipes {
        recipe.id = UUID()
      }
      
      return recipes
    } catch {
      print(error)
    }
    
    return [Recipe]()
  }
}
