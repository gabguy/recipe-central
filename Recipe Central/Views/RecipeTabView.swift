//
//  RecipeTabView.swift
//  Recipe Central
//
//  Created by Guy Gabbay on 04/02/2021.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
      TabView {
        // Tab 1
        Text("Feature view")
          .tabItem {
            VStack {
              Image(systemName: "star.fill")
              Text("Featured")
            }
          }
        
        //Tab 2
        RecipeListView()
          .tabItem {
            Image(systemName: "list.bullet")
            Text("List")
          }
      }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
