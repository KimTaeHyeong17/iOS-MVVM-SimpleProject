//
//  Webservice.swift
//  SimpleNewsApp_MVVM
//
//  Created by 김태형 on 2020/04/23.
//  Copyright © 2020 김태형. All rights reserved.
//

import Foundation

class Webservice {
    
    func getArticles(url :URL, callback :@escaping ([Article]) -> ()) {
        
        var articles = [Article]()
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let data = data {
                
                let json = try! JSONSerialization.jsonObject(with: data, options: [])
                let dictionary = json as! JSONDictionary
                
                let articleDictionaries = dictionary["articles"] as! [JSONDictionary]
                
                articles = articleDictionaries.compactMap { dictionary in
                    return Article(dictionary :dictionary)
                }
            }
            
            DispatchQueue.main.async {
                callback(articles)
            }
            
        }.resume()
        
    }
    
}
