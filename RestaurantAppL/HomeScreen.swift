//
//  ContentView.swift
//  RestaurantAppL
//
//  Created by Christian Skorobogatow on 25/1/21.
//

import SwiftUI

import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack {
                    NavigationLink(destination: RestaurantView()) {
                        SectionView(imageName: "restaurants", sectionName: "Restaurantes")
                    }
                    NavigationLink(destination: NightView()) {
                        SectionView(imageName: "disco", sectionName: "Noche")
                    }
                    NavigationLink(destination: WineBarView()) {
                        SectionView(imageName: "wineBar", sectionName: "Vinoteca")
                    }
                    NavigationLink(destination: NewsView()) {
                        SectionView(imageName: "news", sectionName: "Actualidad")
                    }
                }
            }
            .navigationTitle("Group")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}


struct SectionView: View {
    
    var imageName: String
    var sectionName: String
    
    var body: some View {
        ZStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: 300)
                .cornerRadius(20)
            
            Text(sectionName)
                .font(.title)
                .foregroundColor(.white)
        }
        
    }
}
