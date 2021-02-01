//
//  RecipeDetailView.swift
//  Recipe Central
//
//  Created by Guy Gabbay on 31/01/2021.
//

import SwiftUI

struct RecipeDetailView: View {
  var recipe: Recipe
  
  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        // MARK: Image
        Image(recipe.image)
          .resizable()
          .frame(maxWidth: .infinity, maxHeight: 300)
          .clipped()
        
        VStack(alignment: .leading) {
          // MARK: Ingredients
          VStack(alignment: .leading) {
            Text("Ingredients")
              .font(.headline)
              .padding(.vertical, 5)
            
            ForEach(recipe.ingredients, id: \.self) { ingredient in
              Text("• \(ingredient)")
                .padding(.bottom, 0.25)
                .fixedSize(horizontal: false, vertical: true)
            }
          }
          .padding(.bottom, 5)
          
          // MARK: Divider
          Divider()
          
          // MARK: Directions
          VStack(alignment: .leading) {
            Text("Directions")
              .font(.headline)
              .padding(.vertical, 5)
            
            ForEach(0..<recipe.directions.count, id: \.self) { index in
              let direction = recipe.directions[index]
              Text("\(index + 1). \(direction)")
                .padding(.bottom, 5)
                .fixedSize(horizontal: false, vertical: true)
            }
          }
        }
        .padding(.horizontal, 10)
      }
    }
    .navigationBarTitle(recipe.name)
  }
}

struct RecipeDetailView_Previews: PreviewProvider {
  static var previews: some View {
    let model = RecipeModel()
    RecipeDetailView(recipe: model.recipes[1])
  }
}
