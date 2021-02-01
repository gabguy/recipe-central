//
//  ContentView.swift
//  Recipe Central
//
//  Created by Guy Gabbay on 30/01/2021.
//

import SwiftUI

struct RecipeListView: View {
  @ObservedObject var model = RecipeModel()
  
  var body: some View {
    NavigationView {
      List(model.recipes) { recipe in
        NavigationLink(
          destination: RecipeDetailView(recipe: recipe),
          label: {
            HStack(spacing: 20.0) {
              Image(recipe.image)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .center)
                .clipped()
                .cornerRadius(5.0)
              Text(recipe.name)
            }
          })
      }
      .navigationBarTitle("All recipes")
    }
  }
}

struct RecipeListView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeListView()
  }
}
