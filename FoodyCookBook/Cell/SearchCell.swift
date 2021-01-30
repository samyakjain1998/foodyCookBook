//
//  SearchCell.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

import UIKit
import SDWebImage

class SearchCell: UITableViewCell {

    @IBOutlet weak var mealImg: UIImageView!
    @IBOutlet weak var mealName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUp(datum: Meal) {
        
        self.mealName.text = datum.strMeal ?? ""
        let imgURl = datum.strMealThumb ?? ""
        self.mealImg.sd_imageIndicator = SDWebImageActivityIndicator.gray
        self.mealImg.sd_setImage(with: URL(string: imgURl))
        
    }
    

}
