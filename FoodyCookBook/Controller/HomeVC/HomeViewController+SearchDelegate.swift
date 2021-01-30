//
//  HomeViewController+SearchDelegate.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

import Foundation
import UIKit

extension HomeViewController : SearchDelegate {
    func SelectedSearch(datum: Meal) {
        mealModel.meals = [datum]
        self.initalSetup()
    }
    
    
    
}
