//
//  HomeViewController+TextFieldDelegate.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

import Foundation
import UIKit

extension HomeViewController : UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (string.count ) >= 1 {
//            self.searchTextField.text = string
            self.searchTextField.resignFirstResponder()
            
            self.searchMeal(letter: string )
            
        }
        return true
    }
    
}
