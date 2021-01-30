//
//  SearchViewController.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchTF: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var delegate:SearchDelegate!
    var searchModel:SeachMealModel!
    var fromSaved = false
    var savedMeals = [Meal]()
    var search : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if fromSaved {
            self.searchModel.meals = savedMeals
            
        }
        searchTF.text = search
        tableView.tableFooterView = UIView()
        print(searchModel.meals.count)
        
    }
    
    @IBAction func backbtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func searchTF(_ sender: UITextField) {
        
        
        
    }
    

}
