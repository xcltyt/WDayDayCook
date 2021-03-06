//
//  Recipe.swift
//  WDayDayCook
//
//  Created by wangju on 16/8/19.
//  Copyright © 2016年 wangju. All rights reserved.
//

import UIKit
import ObjectMapper

struct RecipeList: Mappable
{
    var code:String?
    var msg:String?
    var data :[Recipe]?
    init?(map: Map) {
        
    }
    mutating func mapping(map: Map) {
        data <- map["data"]
        code <- map["code"]
        msg <- map["msg"]
    }
}

func transfromOfTupleAndString()->TransformOf<(CGFloat,CGFloat,CGFloat),String>{

    return TransformOf<(CGFloat,CGFloat,CGFloat),String>.init(fromJSON: { (screenID) -> (CGFloat, CGFloat, CGFloat)? in
        let defaultV:CGFloat = 3
        
        if let string = screenID
        {
            let strArr = string.components(separatedBy: ",")
            
            if strArr.count >= 3
            {
                let value1 = (strArr[0] as NSString).floatValue
                let value2 = (strArr[1] as NSString).floatValue
                let value3 = (strArr[2] as NSString).floatValue
                return (CGFloat(value1),CGFloat(value2),CGFloat(value3))
            }
        }
        return (defaultV,defaultV,defaultV)
        
        }, toJSON: { (value) -> String? in
            
            let (value1,value2,value3) = value!
            return "\(value1),\(value2),\(value3)"
    })
}

struct Recipe: Mappable {
    
    var detailsUrl:String?
    var clickCount:Int?
    var id:Int?
    var categoryID:Int?
    var description:String?
    var releaseDate:String?
    var type:String?
    var screeningId:(CGFloat,CGFloat,CGFloat)?
    var maketime:String?
    var name:String?
    var shareCount:Int?
    var createDate:TimeInterval?
    var modifyDate:TimeInterval?
    var imageUrl:String?
    var title:String?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        detailsUrl <- map["detailsUrl"]
        clickCount <- map["clickCount"]
        id <- map["id"]
        categoryID <- map["categoryID"]
        description <- map["description"]
        releaseDate <- map["releaseDate"]
        type <- map["type"]
        maketime <- map["maketime"]
        name <- map["name"]
        shareCount <- map["shareCount"]
        createDate <- map["createDate"]
        modifyDate <- map["modifyDate"]
        imageUrl <- map["imageUrl"]
        title <- map["title"]
        screeningId <- (map["screeningId"],transfromOfTupleAndString())
    }

}
