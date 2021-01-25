//
//  RestaurantView.swift
//  GrupoOter
//
//  Created by Christian Skorobogatow on 24/1/21.
//

import SwiftUI

struct RestaurantView: View {
    
    var body: some View {
    
        List{
            VStack{
                RestaurantViewCell(imageName: "news", restaurantName: "Reto Bar", street: "68 Calle Ourense ", city: "Madrid", distance: 5)
                RestaurantViewCell(imageName: "news", restaurantName: "Reto Bar", street: "68 Calle Ourense ", city: "Madrid", distance: 5)
                RestaurantViewCell(imageName: "news", restaurantName: "Reto Bar", street: "68 Calle Ourense ", city: "Madrid", distance: 5)
                RestaurantViewCell(imageName: "news", restaurantName: "Reto Bar", street: "68 Calle Ourense ", city: "Madrid", distance: 5)
                RestaurantViewCell(imageName: "news", restaurantName: "Reto Bar", street: "68 Calle Ourense ", city: "Madrid", distance: 5)
                RestaurantViewCell(imageName: "news", restaurantName: "Reto Bar", street: "68 Calle Ourense ", city: "Madrid", distance: 5)
                RestaurantViewCell(imageName: "news", restaurantName: "Reto Bar", street: "68 Calle Ourense ", city: "Madrid", distance: 5)
            }
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}

struct RestaurantViewCell: View {
    
    var imageName: String
    var restaurantName: String
    var street: String
    var city: String
    var distance: Int
    
    var body: some View {
        
        HStack{
            ZStack(alignment: .bottomLeading){
                Image(imageName)
                    .resizable()
                    .frame(width:180 , height: 100)
                    .cornerRadius(10)
                
                Text("\(distance)km")
                    .font(.body)
                    .foregroundColor(.white)
                    .frame(width: 40, height: 20)
                    .background(Color(.gray))
                    .cornerRadius(3)
                    .padding()
            }
            
            VStack(alignment: .leading, spacing: 5){
                Text(restaurantName)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                Text(street)
                    .font(.footnote)
                    .foregroundColor(.red)
                    .fontWeight(.medium)
                
                Text(city)
                    .font(.footnote)
                    .foregroundColor(.red)
                    .fontWeight(.medium)
                
                
            }
            .padding(.leading)
        }
        
    }
}
