//
//  HomeViewController.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

import UIKit
import SDWebImage
class HomeViewController: UIViewController {

    
    @IBOutlet weak var mealNameLbl: UILabel!
    @IBOutlet weak var mealImg: UIImageView!
    @IBOutlet weak var categoryStack: UIStackView!
    @IBOutlet weak var tagStack: UIStackView!
    @IBOutlet weak var ingredientsStack: UIStackView!
    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var tagLbl: UILabel!
    @IBOutlet weak var ingredientLbl: UILabel!
    @IBOutlet weak var InstructionLbl: UILabel!
    
    @IBOutlet weak var viewSavedBtn: UIButton!
    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var searchTextField: UITextField!
    
    var savedMealIds = [String]()
    var savedMeals = [Meal]()
    
    var mealModel:MealsModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.savedMealIds = UserDefaults.standard.value(forKey: "SavedMealID") as? [String] ?? []
        if savedMealIds.count == 0 {
            self.viewSavedBtn.isHidden = true
        }else{
           
            let decoded  = UserDefaults.standard.object(forKey: "SavedMeals") as! Data
                self.savedMeals = try! NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(decoded) as? [Meal] ?? []
           
//            self.savedMeals = UserDefaults.standard.value(forKey: "SavedMeals") as? [Meal] ?? []
            self.viewSavedBtn.isHidden = false
        }
        getMeal()
//        print(mealModel.meals.first?.strMeal)
        
        
    }
    
    
    //MARK: To get Random Meal
    
    func getMeal() {
        
        if Connectivity.isConnectedToInternet {
            
            self.view.showIndicator()
            
            let URlStr = baseURL + randomMeal
            getAPi(urlStr: URlStr) { (succ, result) in
                
                if succ {
                    
                    self.view.hideIndicator()
                    self.mealModel = MealsModel(fromDictionary: result)
                    self.initalSetup()
                    
                }else {
                    self.view.hideIndicator()
                }
                
            }
            
            
        }
        
    }
    
    func searchMeal(letter : String) {
        
        if Connectivity.isConnectedToInternet {
            
            self.view.showIndicator()
            
            let URlStr = baseURL + meallByFirstLetter + letter
            getAPi(urlStr: URlStr) { (succ, result) in
                
                if succ {
                    
                    self.view.hideIndicator()
                    
                    
                    let vc = self.storyboard?.instantiateViewController(identifier: "SearchViewController") as! SearchViewController
                    vc.searchModel = SeachMealModel(fromDictionary: result)
                    vc.search = self.searchTextField.text ?? ""
                    vc.delegate = self
                    self.navigationController?.pushViewController(vc, animated: true)
                }else {
                    self.view.hideIndicator()
                }
                
            }
            
            
        }
        
    }
    
    
    
    func initalSetup() {
        
        
        if let meal = self.mealModel.meals.first {
            self.saveBtn.isHidden = false
            self.mealNameLbl.text = meal.strMeal ?? ""
            let imgURl = meal.strMealThumb ?? ""
            self.mealImg.sd_imageIndicator = SDWebImageActivityIndicator.gray
            self.mealImg.sd_setImage(with: URL(string: imgURl))
            if let catg = meal.strCategory , catg != "" {
                self.categoryStack.isHidden = false
                self.categoryLbl.text = catg
            }else {
                self.categoryStack.isHidden = true
            }
            
            if let tag = meal.strTags , tag != "" {
                self.tagStack.isHidden = false
                self.tagLbl.text = tag
            }else {
                self.tagStack.isHidden = true
            }
            
            
            var ingredients  = ""
            
            if let ing1 = meal.strIngredient1 , ing1 != ""{
                
                ingredients = ing1
            }
            if let ing2 = meal.strIngredient2 , ing2 != ""{
                
                ingredients = "\(ingredients),\(ing2)"
            }
            if let ing3 = meal.strIngredient3 , ing3 != ""{
                
                ingredients = "\(ingredients),\(ing3)"
            }
            if let ing4 = meal.strIngredient4 , ing4 != ""{
                
                ingredients = "\(ingredients),\(ing4)"
            }
            if let ing5 = meal.strIngredient5 , ing5 != ""{
                
                ingredients = "\(ingredients),\(ing5)"
            }
            if let ing6 = meal.strIngredient6 , ing6 != ""{
                
                ingredients = "\(ingredients),\(ing6)"
            }
            if let ing7 = meal.strIngredient7 , ing7 != ""{
                
                ingredients = "\(ingredients),\(ing7)"
            }
            if let ing8 = meal.strIngredient8 , ing8 != ""{
                
                ingredients = "\(ingredients),\(ing8)"
            }
            if let ing9 = meal.strIngredient9 , ing9 != ""{
                
                ingredients = "\(ingredients),\(ing9)"
            }
            if let ing10 = meal.strIngredient10 , ing10 != ""{
                
                ingredients = "\(ingredients),\(ing10)"
            }
            
            if let ing11 = meal.strIngredient11 , ing11 != ""{
                
                ingredients = "\(ingredients),\(ing11)"
            }
            if let ing12 = meal.strIngredient12 , ing12 != ""{
                
                ingredients = "\(ingredients),\(ing12)"
            }
            if let ing13 = meal.strIngredient13 , ing13 != ""{
                
                ingredients = "\(ingredients),\(ing13)"
            }
            if let ing14 = meal.strIngredient14 , ing14 != ""{
                
                ingredients = "\(ingredients),\(ing14)"
            }
            if let ing15 = meal.strIngredient15 , ing15 != ""{
                
                ingredients = "\(ingredients),\(ing15)"
            }
            if let ing16 = meal.strIngredient16 , ing16 != ""{
                
                ingredients = "\(ingredients),\(ing16)"
            }
            if let ing17 = meal.strIngredient17 , ing17 != ""{
                
                ingredients = "\(ingredients),\(ing17)"
            }
            if let ing18 = meal.strIngredient18 , ing18 != ""{
                
                ingredients = "\(ingredients),\(ing18)"
            }
            if let ing19 = meal.strIngredient19 , ing19 != ""{
                
                ingredients = "\(ingredients),\(ing19)"
            }
            if let ing20 = meal.strIngredient20 , ing20 != ""{
                
                ingredients = "\(ingredients),\(ing20)"
            }
            
            self.ingredientLbl.text = ingredients
            
            if let instruction = meal.strInstructions , instruction != "" {
            self.InstructionLbl.text = instruction
            }
            
        }else {
            self.saveBtn.isHidden = true
        }
        
        
    }
    
    
    
    
    @IBAction func SeachTF(_ sender: UITextField) {
        
        if (sender.text?.count ?? 0) >= 1 {
            sender.resignFirstResponder()
            
            self.searchMeal(letter: sender.text ?? "")
            
        }
        
    }
    
    //MARK: Action Buttons
    
    
    @IBAction func saveBtn(_ sender: Any) {
        
        
        self.viewSavedBtn.isHidden = false
        let meal = self.mealModel.meals.first
        
        if !(self.savedMealIds.contains(meal?.idMeal ?? "")) {
            
            self.savedMealIds.append(meal?.idMeal ?? "")
            UserDefaults.standard.setValue(self.savedMealIds, forKey: "SavedMealID")
            self.savedMeals.append(meal!)
            do {
            let encodedData = try? NSKeyedArchiver.archivedData(withRootObject: self.savedMeals, requiringSecureCoding: false)
            UserDefaults.standard.set(encodedData, forKey: "SavedMeals")
            }
        }
    }
    
    @IBAction func viewSavedBtn(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(identifier: "SearchViewController") as! SearchViewController
        vc.searchModel = SeachMealModel(fromDictionary: ["meals":[]])
        vc.savedMeals = self.savedMeals
        vc.fromSaved = true
        vc.search = self.searchTextField.text ?? ""
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    
    
}
