//
//  SearchViewController+TableView.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

protocol SearchDelegate {
    func SelectedSearch(datum : Meal)
}

import Foundation
import UIKit

extension SearchViewController : UITableViewDelegate , UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchModel != nil ? searchModel.meals.count : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SearchCell
        let datum = searchModel.meals[indexPath.row]
        cell.setUp(datum: datum)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.delegate.SelectedSearch(datum: searchModel.meals[indexPath.row])
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
}
