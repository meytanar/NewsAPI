//
//  newsAPIJson.swift
//  NewsAPI
//
//  Created by BSH_MRM on 6.12.2018.
//  Copyright © 2018 BSH_MRM. All rights reserved.
//

import Foundation


struct news: Decodable {
    let status:String
    let totalResults:Int
    let article: [articles]
}

struct articles:Decodable{
    let author:String
    let title:String
    let description:String
    let url:String
    let urlToImage:String
    let publishedAt:String
    let content:String
    let source: [sources]
}

struct sources:Decodable{
    let id:Int?
    let name:String
    
}


