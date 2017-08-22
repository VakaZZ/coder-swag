//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Vasily Shorin on 2017-08-17.
//  Copyright © 2017 Vasily Shorin. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }

}
