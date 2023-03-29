//
//  RecipeModel.swift
//  RecipeUI
//
//  Created by Can Kanbur on 29.03.2023.
//

import Foundation
import SwiftUI

struct RecipeModel : Identifiable{
    let id = UUID()
    let name : String
    let caloriesPer100Grams : Int
    let recipe : String
    let recipeImage : String
    let recipeURL : String
}
