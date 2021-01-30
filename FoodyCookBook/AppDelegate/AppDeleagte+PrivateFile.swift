//
//  AppDeleagte+PrivateFile.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

import Foundation
import UIKit
import IQKeyboardManagerSwift

extension AppDelegate {
    
  
    func launchApplication(application: UIApplication) {
       
        setupIQKeyboardManager()
        
    }
    
    private func setupIQKeyboardManager() {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.shouldShowToolbarPlaceholder = true
    }
    
   
    
    
}
