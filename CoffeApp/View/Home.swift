//
//  ContentView.swift
//  CoffeApp
//
//  Created by Osadchuk Taras on 15.03.2021.
//

import SwiftUI

struct HomeView: View {
    
    var categories:[String:[Drink]]{
            .init(
                grouping: drinkData,
                by:{$0.category.rawValue }
            )
        }
        
        var body: some View {
            NavigationView{
                List(categories.keys.sorted(), id: \.self) { key in DrinkRow(categoryName: "\(key) Drink".uppercased(), drinks:self.categories[key]!)
                    .frame(height:320)
                    .padding(.top)
                    .padding(.bottom)
                }
            .navigationBarTitle(Text("COFFEE MENU"))
            }
        }
    }

    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
