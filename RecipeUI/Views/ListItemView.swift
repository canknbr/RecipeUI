//
//  ListItemView.swift
//  RecipeUI
//
//  Created by Can Kanbur on 29.03.2023.
//

import SwiftUI

struct ListItemView: View {
    let name : String
    let caloriesPer100Grams : Int
    let recipeImage : String
    let imageDim : CGFloat = 70
    var body: some View {
        HStack {
            VStack (alignment: .leading,spacing: 5) {
                Text(name)
                    .foregroundColor(.orange)
                Text("\(caloriesPer100Grams) calories per 100 grams")
                    .font(.caption)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }.padding()
               
            Spacer()
            Image(recipeImage)
                .resizable()
                
                .frame(width: imageDim, height: imageDim)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10).stroke(Color.white,lineWidth: 3))
                .shadow(color: .white.opacity(0.5), radius: 10, x: 5, y: 5)
        }.padding()
        .background(Color.black.cornerRadius(10))
        .padding()
        
           
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(name: "Hummus", caloriesPer100Grams: 322, recipeImage: "IMGhummus")
    }
}
