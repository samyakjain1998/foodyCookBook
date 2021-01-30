//
//  SeachViewModel.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

import Foundation


class SeachMealModel : NSObject, NSCoding{

    var meals : [Meal]!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        meals = [Meal]()
        if let mealsArray = dictionary["meals"] as? [[String:Any]]{
            for dic in mealsArray{
                let value = Meal(fromDictionary: dic)
                meals.append(value)
            }
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if meals != nil{
            var dictionaryElements = [[String:Any]]()
            for mealsElement in meals {
                dictionaryElements.append(mealsElement.toDictionary())
            }
            dictionary["meals"] = dictionaryElements
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        meals = aDecoder.decodeObject(forKey: "meals") as? [Meal]
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if meals != nil{
            aCoder.encode(meals, forKey: "meals")
        }
    }
}
