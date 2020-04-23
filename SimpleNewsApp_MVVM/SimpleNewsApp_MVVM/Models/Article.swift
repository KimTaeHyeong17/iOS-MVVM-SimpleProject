//
//  Article.swift
//  SimpleNewsApp_MVVM
//
//  Created by 김태형 on 2020/04/23.
//  Copyright © 2020 김태형. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String:AnyObject] // Swift 3: [String:Any]

class Article {
    
    var title :String
    var description :String
    
    init(title :String, description: String) {
        self.title = title
        self.description = description
    }
    
    init?(dictionary :JSONDictionary) {
        
        guard let title = dictionary["title"] as? String,
            let description = dictionary["description"] as? String else {
               return nil
    }
        self.title = title
        self.description = description
}

}
