//
//  MeallsModel.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

import UIKit

class MealsModel : NSObject, NSCoding{

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


class Meal : NSObject, NSCoding{

    var dateModified : AnyObject!
    var idMeal : String!
    var strArea : String!
    var strCategory : String!
    var strDrinkAlternate : AnyObject!
    var strIngredient1 : String!
    var strIngredient10 : String!
    var strIngredient11 : String!
    var strIngredient12 : String!
    var strIngredient13 : String!
    var strIngredient14 : String!
    var strIngredient15 : String!
    var strIngredient16 : String!
    var strIngredient17 : String!
    var strIngredient18 : String!
    var strIngredient19 : String!
    var strIngredient2 : String!
    var strIngredient20 : String!
    var strIngredient3 : String!
    var strIngredient4 : String!
    var strIngredient5 : String!
    var strIngredient6 : String!
    var strIngredient7 : String!
    var strIngredient8 : String!
    var strIngredient9 : String!
    var strInstructions : String!
    var strMeal : String!
    var strMealThumb : String!
    var strMeasure1 : String!
    var strMeasure10 : String!
    var strMeasure11 : String!
    var strMeasure12 : String!
    var strMeasure13 : String!
    var strMeasure14 : String!
    var strMeasure15 : String!
    var strMeasure16 : String!
    var strMeasure17 : String!
    var strMeasure18 : String!
    var strMeasure19 : String!
    var strMeasure2 : String!
    var strMeasure20 : String!
    var strMeasure3 : String!
    var strMeasure4 : String!
    var strMeasure5 : String!
    var strMeasure6 : String!
    var strMeasure7 : String!
    var strMeasure8 : String!
    var strMeasure9 : String!
    var strSource : String!
    var strTags : String!
    var strYoutube : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        dateModified = dictionary["dateModified"] as? AnyObject
        idMeal = dictionary["idMeal"] as? String
        strArea = dictionary["strArea"] as? String
        strCategory = dictionary["strCategory"] as? String
        strDrinkAlternate = dictionary["strDrinkAlternate"] as? AnyObject
        strIngredient1 = dictionary["strIngredient1"] as? String
        strIngredient10 = dictionary["strIngredient10"] as? String
        strIngredient11 = dictionary["strIngredient11"] as? String
        strIngredient12 = dictionary["strIngredient12"] as? String
        strIngredient13 = dictionary["strIngredient13"] as? String
        strIngredient14 = dictionary["strIngredient14"] as? String
        strIngredient15 = dictionary["strIngredient15"] as? String
        strIngredient16 = dictionary["strIngredient16"] as? String
        strIngredient17 = dictionary["strIngredient17"] as? String
        strIngredient18 = dictionary["strIngredient18"] as? String
        strIngredient19 = dictionary["strIngredient19"] as? String
        strIngredient2 = dictionary["strIngredient2"] as? String
        strIngredient20 = dictionary["strIngredient20"] as? String
        strIngredient3 = dictionary["strIngredient3"] as? String
        strIngredient4 = dictionary["strIngredient4"] as? String
        strIngredient5 = dictionary["strIngredient5"] as? String
        strIngredient6 = dictionary["strIngredient6"] as? String
        strIngredient7 = dictionary["strIngredient7"] as? String
        strIngredient8 = dictionary["strIngredient8"] as? String
        strIngredient9 = dictionary["strIngredient9"] as? String
        strInstructions = dictionary["strInstructions"] as? String
        strMeal = dictionary["strMeal"] as? String
        strMealThumb = dictionary["strMealThumb"] as? String
        strMeasure1 = dictionary["strMeasure1"] as? String
        strMeasure10 = dictionary["strMeasure10"] as? String
        strMeasure11 = dictionary["strMeasure11"] as? String
        strMeasure12 = dictionary["strMeasure12"] as? String
        strMeasure13 = dictionary["strMeasure13"] as? String
        strMeasure14 = dictionary["strMeasure14"] as? String
        strMeasure15 = dictionary["strMeasure15"] as? String
        strMeasure16 = dictionary["strMeasure16"] as? String
        strMeasure17 = dictionary["strMeasure17"] as? String
        strMeasure18 = dictionary["strMeasure18"] as? String
        strMeasure19 = dictionary["strMeasure19"] as? String
        strMeasure2 = dictionary["strMeasure2"] as? String
        strMeasure20 = dictionary["strMeasure20"] as? String
        strMeasure3 = dictionary["strMeasure3"] as? String
        strMeasure4 = dictionary["strMeasure4"] as? String
        strMeasure5 = dictionary["strMeasure5"] as? String
        strMeasure6 = dictionary["strMeasure6"] as? String
        strMeasure7 = dictionary["strMeasure7"] as? String
        strMeasure8 = dictionary["strMeasure8"] as? String
        strMeasure9 = dictionary["strMeasure9"] as? String
        strSource = dictionary["strSource"] as? String
        strTags = dictionary["strTags"] as? String
        strYoutube = dictionary["strYoutube"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if dateModified != nil{
            dictionary["dateModified"] = dateModified
        }
        if idMeal != nil{
            dictionary["idMeal"] = idMeal
        }
        if strArea != nil{
            dictionary["strArea"] = strArea
        }
        if strCategory != nil{
            dictionary["strCategory"] = strCategory
        }
        if strDrinkAlternate != nil{
            dictionary["strDrinkAlternate"] = strDrinkAlternate
        }
        if strIngredient1 != nil{
            dictionary["strIngredient1"] = strIngredient1
        }
        if strIngredient10 != nil{
            dictionary["strIngredient10"] = strIngredient10
        }
        if strIngredient11 != nil{
            dictionary["strIngredient11"] = strIngredient11
        }
        if strIngredient12 != nil{
            dictionary["strIngredient12"] = strIngredient12
        }
        if strIngredient13 != nil{
            dictionary["strIngredient13"] = strIngredient13
        }
        if strIngredient14 != nil{
            dictionary["strIngredient14"] = strIngredient14
        }
        if strIngredient15 != nil{
            dictionary["strIngredient15"] = strIngredient15
        }
        if strIngredient16 != nil{
            dictionary["strIngredient16"] = strIngredient16
        }
        if strIngredient17 != nil{
            dictionary["strIngredient17"] = strIngredient17
        }
        if strIngredient18 != nil{
            dictionary["strIngredient18"] = strIngredient18
        }
        if strIngredient19 != nil{
            dictionary["strIngredient19"] = strIngredient19
        }
        if strIngredient2 != nil{
            dictionary["strIngredient2"] = strIngredient2
        }
        if strIngredient20 != nil{
            dictionary["strIngredient20"] = strIngredient20
        }
        if strIngredient3 != nil{
            dictionary["strIngredient3"] = strIngredient3
        }
        if strIngredient4 != nil{
            dictionary["strIngredient4"] = strIngredient4
        }
        if strIngredient5 != nil{
            dictionary["strIngredient5"] = strIngredient5
        }
        if strIngredient6 != nil{
            dictionary["strIngredient6"] = strIngredient6
        }
        if strIngredient7 != nil{
            dictionary["strIngredient7"] = strIngredient7
        }
        if strIngredient8 != nil{
            dictionary["strIngredient8"] = strIngredient8
        }
        if strIngredient9 != nil{
            dictionary["strIngredient9"] = strIngredient9
        }
        if strInstructions != nil{
            dictionary["strInstructions"] = strInstructions
        }
        if strMeal != nil{
            dictionary["strMeal"] = strMeal
        }
        if strMealThumb != nil{
            dictionary["strMealThumb"] = strMealThumb
        }
        if strMeasure1 != nil{
            dictionary["strMeasure1"] = strMeasure1
        }
        if strMeasure10 != nil{
            dictionary["strMeasure10"] = strMeasure10
        }
        if strMeasure11 != nil{
            dictionary["strMeasure11"] = strMeasure11
        }
        if strMeasure12 != nil{
            dictionary["strMeasure12"] = strMeasure12
        }
        if strMeasure13 != nil{
            dictionary["strMeasure13"] = strMeasure13
        }
        if strMeasure14 != nil{
            dictionary["strMeasure14"] = strMeasure14
        }
        if strMeasure15 != nil{
            dictionary["strMeasure15"] = strMeasure15
        }
        if strMeasure16 != nil{
            dictionary["strMeasure16"] = strMeasure16
        }
        if strMeasure17 != nil{
            dictionary["strMeasure17"] = strMeasure17
        }
        if strMeasure18 != nil{
            dictionary["strMeasure18"] = strMeasure18
        }
        if strMeasure19 != nil{
            dictionary["strMeasure19"] = strMeasure19
        }
        if strMeasure2 != nil{
            dictionary["strMeasure2"] = strMeasure2
        }
        if strMeasure20 != nil{
            dictionary["strMeasure20"] = strMeasure20
        }
        if strMeasure3 != nil{
            dictionary["strMeasure3"] = strMeasure3
        }
        if strMeasure4 != nil{
            dictionary["strMeasure4"] = strMeasure4
        }
        if strMeasure5 != nil{
            dictionary["strMeasure5"] = strMeasure5
        }
        if strMeasure6 != nil{
            dictionary["strMeasure6"] = strMeasure6
        }
        if strMeasure7 != nil{
            dictionary["strMeasure7"] = strMeasure7
        }
        if strMeasure8 != nil{
            dictionary["strMeasure8"] = strMeasure8
        }
        if strMeasure9 != nil{
            dictionary["strMeasure9"] = strMeasure9
        }
        if strSource != nil{
            dictionary["strSource"] = strSource
        }
        if strTags != nil{
            dictionary["strTags"] = strTags
        }
        if strYoutube != nil{
            dictionary["strYoutube"] = strYoutube
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        dateModified = aDecoder.decodeObject(forKey: "dateModified") as? AnyObject
        idMeal = aDecoder.decodeObject(forKey: "idMeal") as? String
        strArea = aDecoder.decodeObject(forKey: "strArea") as? String
        strCategory = aDecoder.decodeObject(forKey: "strCategory") as? String
        strDrinkAlternate = aDecoder.decodeObject(forKey: "strDrinkAlternate") as? AnyObject
        strIngredient1 = aDecoder.decodeObject(forKey: "strIngredient1") as? String
        strIngredient10 = aDecoder.decodeObject(forKey: "strIngredient10") as? String
        strIngredient11 = aDecoder.decodeObject(forKey: "strIngredient11") as? String
        strIngredient12 = aDecoder.decodeObject(forKey: "strIngredient12") as? String
        strIngredient13 = aDecoder.decodeObject(forKey: "strIngredient13") as? String
        strIngredient14 = aDecoder.decodeObject(forKey: "strIngredient14") as? String
        strIngredient15 = aDecoder.decodeObject(forKey: "strIngredient15") as? String
        strIngredient16 = aDecoder.decodeObject(forKey: "strIngredient16") as? String
        strIngredient17 = aDecoder.decodeObject(forKey: "strIngredient17") as? String
        strIngredient18 = aDecoder.decodeObject(forKey: "strIngredient18") as? String
        strIngredient19 = aDecoder.decodeObject(forKey: "strIngredient19") as? String
        strIngredient2 = aDecoder.decodeObject(forKey: "strIngredient2") as? String
        strIngredient20 = aDecoder.decodeObject(forKey: "strIngredient20") as? String
        strIngredient3 = aDecoder.decodeObject(forKey: "strIngredient3") as? String
        strIngredient4 = aDecoder.decodeObject(forKey: "strIngredient4") as? String
        strIngredient5 = aDecoder.decodeObject(forKey: "strIngredient5") as? String
        strIngredient6 = aDecoder.decodeObject(forKey: "strIngredient6") as? String
        strIngredient7 = aDecoder.decodeObject(forKey: "strIngredient7") as? String
        strIngredient8 = aDecoder.decodeObject(forKey: "strIngredient8") as? String
        strIngredient9 = aDecoder.decodeObject(forKey: "strIngredient9") as? String
        strInstructions = aDecoder.decodeObject(forKey: "strInstructions") as? String
        strMeal = aDecoder.decodeObject(forKey: "strMeal") as? String
        strMealThumb = aDecoder.decodeObject(forKey: "strMealThumb") as? String
        strMeasure1 = aDecoder.decodeObject(forKey: "strMeasure1") as? String
        strMeasure10 = aDecoder.decodeObject(forKey: "strMeasure10") as? String
        strMeasure11 = aDecoder.decodeObject(forKey: "strMeasure11") as? String
        strMeasure12 = aDecoder.decodeObject(forKey: "strMeasure12") as? String
        strMeasure13 = aDecoder.decodeObject(forKey: "strMeasure13") as? String
        strMeasure14 = aDecoder.decodeObject(forKey: "strMeasure14") as? String
        strMeasure15 = aDecoder.decodeObject(forKey: "strMeasure15") as? String
        strMeasure16 = aDecoder.decodeObject(forKey: "strMeasure16") as? String
        strMeasure17 = aDecoder.decodeObject(forKey: "strMeasure17") as? String
        strMeasure18 = aDecoder.decodeObject(forKey: "strMeasure18") as? String
        strMeasure19 = aDecoder.decodeObject(forKey: "strMeasure19") as? String
        strMeasure2 = aDecoder.decodeObject(forKey: "strMeasure2") as? String
        strMeasure20 = aDecoder.decodeObject(forKey: "strMeasure20") as? String
        strMeasure3 = aDecoder.decodeObject(forKey: "strMeasure3") as? String
        strMeasure4 = aDecoder.decodeObject(forKey: "strMeasure4") as? String
        strMeasure5 = aDecoder.decodeObject(forKey: "strMeasure5") as? String
        strMeasure6 = aDecoder.decodeObject(forKey: "strMeasure6") as? String
        strMeasure7 = aDecoder.decodeObject(forKey: "strMeasure7") as? String
        strMeasure8 = aDecoder.decodeObject(forKey: "strMeasure8") as? String
        strMeasure9 = aDecoder.decodeObject(forKey: "strMeasure9") as? String
        strSource = aDecoder.decodeObject(forKey: "strSource") as? String
        strTags = aDecoder.decodeObject(forKey: "strTags") as? String
        strYoutube = aDecoder.decodeObject(forKey: "strYoutube") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if dateModified != nil{
            aCoder.encode(dateModified, forKey: "dateModified")
        }
        if idMeal != nil{
            aCoder.encode(idMeal, forKey: "idMeal")
        }
        if strArea != nil{
            aCoder.encode(strArea, forKey: "strArea")
        }
        if strCategory != nil{
            aCoder.encode(strCategory, forKey: "strCategory")
        }
        if strDrinkAlternate != nil{
            aCoder.encode(strDrinkAlternate, forKey: "strDrinkAlternate")
        }
        if strIngredient1 != nil{
            aCoder.encode(strIngredient1, forKey: "strIngredient1")
        }
        if strIngredient10 != nil{
            aCoder.encode(strIngredient10, forKey: "strIngredient10")
        }
        if strIngredient11 != nil{
            aCoder.encode(strIngredient11, forKey: "strIngredient11")
        }
        if strIngredient12 != nil{
            aCoder.encode(strIngredient12, forKey: "strIngredient12")
        }
        if strIngredient13 != nil{
            aCoder.encode(strIngredient13, forKey: "strIngredient13")
        }
        if strIngredient14 != nil{
            aCoder.encode(strIngredient14, forKey: "strIngredient14")
        }
        if strIngredient15 != nil{
            aCoder.encode(strIngredient15, forKey: "strIngredient15")
        }
        if strIngredient16 != nil{
            aCoder.encode(strIngredient16, forKey: "strIngredient16")
        }
        if strIngredient17 != nil{
            aCoder.encode(strIngredient17, forKey: "strIngredient17")
        }
        if strIngredient18 != nil{
            aCoder.encode(strIngredient18, forKey: "strIngredient18")
        }
        if strIngredient19 != nil{
            aCoder.encode(strIngredient19, forKey: "strIngredient19")
        }
        if strIngredient2 != nil{
            aCoder.encode(strIngredient2, forKey: "strIngredient2")
        }
        if strIngredient20 != nil{
            aCoder.encode(strIngredient20, forKey: "strIngredient20")
        }
        if strIngredient3 != nil{
            aCoder.encode(strIngredient3, forKey: "strIngredient3")
        }
        if strIngredient4 != nil{
            aCoder.encode(strIngredient4, forKey: "strIngredient4")
        }
        if strIngredient5 != nil{
            aCoder.encode(strIngredient5, forKey: "strIngredient5")
        }
        if strIngredient6 != nil{
            aCoder.encode(strIngredient6, forKey: "strIngredient6")
        }
        if strIngredient7 != nil{
            aCoder.encode(strIngredient7, forKey: "strIngredient7")
        }
        if strIngredient8 != nil{
            aCoder.encode(strIngredient8, forKey: "strIngredient8")
        }
        if strIngredient9 != nil{
            aCoder.encode(strIngredient9, forKey: "strIngredient9")
        }
        if strInstructions != nil{
            aCoder.encode(strInstructions, forKey: "strInstructions")
        }
        if strMeal != nil{
            aCoder.encode(strMeal, forKey: "strMeal")
        }
        if strMealThumb != nil{
            aCoder.encode(strMealThumb, forKey: "strMealThumb")
        }
        if strMeasure1 != nil{
            aCoder.encode(strMeasure1, forKey: "strMeasure1")
        }
        if strMeasure10 != nil{
            aCoder.encode(strMeasure10, forKey: "strMeasure10")
        }
        if strMeasure11 != nil{
            aCoder.encode(strMeasure11, forKey: "strMeasure11")
        }
        if strMeasure12 != nil{
            aCoder.encode(strMeasure12, forKey: "strMeasure12")
        }
        if strMeasure13 != nil{
            aCoder.encode(strMeasure13, forKey: "strMeasure13")
        }
        if strMeasure14 != nil{
            aCoder.encode(strMeasure14, forKey: "strMeasure14")
        }
        if strMeasure15 != nil{
            aCoder.encode(strMeasure15, forKey: "strMeasure15")
        }
        if strMeasure16 != nil{
            aCoder.encode(strMeasure16, forKey: "strMeasure16")
        }
        if strMeasure17 != nil{
            aCoder.encode(strMeasure17, forKey: "strMeasure17")
        }
        if strMeasure18 != nil{
            aCoder.encode(strMeasure18, forKey: "strMeasure18")
        }
        if strMeasure19 != nil{
            aCoder.encode(strMeasure19, forKey: "strMeasure19")
        }
        if strMeasure2 != nil{
            aCoder.encode(strMeasure2, forKey: "strMeasure2")
        }
        if strMeasure20 != nil{
            aCoder.encode(strMeasure20, forKey: "strMeasure20")
        }
        if strMeasure3 != nil{
            aCoder.encode(strMeasure3, forKey: "strMeasure3")
        }
        if strMeasure4 != nil{
            aCoder.encode(strMeasure4, forKey: "strMeasure4")
        }
        if strMeasure5 != nil{
            aCoder.encode(strMeasure5, forKey: "strMeasure5")
        }
        if strMeasure6 != nil{
            aCoder.encode(strMeasure6, forKey: "strMeasure6")
        }
        if strMeasure7 != nil{
            aCoder.encode(strMeasure7, forKey: "strMeasure7")
        }
        if strMeasure8 != nil{
            aCoder.encode(strMeasure8, forKey: "strMeasure8")
        }
        if strMeasure9 != nil{
            aCoder.encode(strMeasure9, forKey: "strMeasure9")
        }
        if strSource != nil{
            aCoder.encode(strSource, forKey: "strSource")
        }
        if strTags != nil{
            aCoder.encode(strTags, forKey: "strTags")
        }
        if strYoutube != nil{
            aCoder.encode(strYoutube, forKey: "strYoutube")
        }
    }
}
