//
//  RecipeModel.swift
//  Recipe Central
//
//  Created by Guy Gabbay on 30/01/2021.
//

import Foundation

class RecipeModel: ObservableObject {
  @Published var recipes = [Recipe]()
  
  init() {
    recipes = DataService.getLocalData()
  }
}
