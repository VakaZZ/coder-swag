//
//  DataService.swift
//  coder-swag
//
//  Created by Vasily Shorin on 2017-08-17.
//  Copyright © 2017 Vasily Shorin. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logog Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes 2", price: "$22", imageName: "hat02.ong"),
        Product(title: "Devsloper 3 hat", price: "$25", imageName: "hat03.png"),
        Product(title: "Devslopes 4 hat", price: "$123", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Hoodie 1", price: "$45", imageName: "hoodie01.png"),
        Product(title: "Hoodie 2", price: "$45", imageName: "hoodie02.png"),
        Product(title: "Hoodie 3", price: "$45", imageName: "hoodie03.png"),
        Product(title: "Hoodie 4", price: "$45", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Shirt 1", price: "$17", imageName: "shirt01.png"),
        Product(title: "Shirt 2", price: "$15", imageName: "shirt02.png"),
        Product(title: "Shirt 3", price: "$17", imageName: "shirt03.png"),
        Product(title: "Shirt 4", price: "$34", imageName: "shirt04.png"),
        Product(title: "Shirt 5", price: "$10066", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts (forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
           return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}
