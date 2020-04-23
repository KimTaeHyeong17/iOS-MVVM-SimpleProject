//
//  ArticleListViewModel.swift
//  SimpleNewsApp_MVVM
//
//  Created by 김태형 on 2020/04/23.
//  Copyright © 2020 김태형. All rights reserved.
//

import Foundation

struct ArticleListViewModel {
    
    var title :String? = "Articles"
    var articles :[ArticleViewModel] = [ArticleViewModel]()
}

extension ArticleListViewModel {
    
    init(articles :[ArticleViewModel]) {
        self.articles = articles
    }
    
}

struct ArticleViewModel {
    
    var title :String
    var description :String
}

extension ArticleViewModel {
    
    init(article :Article) {
        self.title = article.title
        self.description = article.description
    }
}
