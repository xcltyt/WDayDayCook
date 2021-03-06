//
//  ServiceApi.swift
//  WDayDayCook
//
//  Created by wangju on 16/7/24.
//  Copyright © 2016年 wangju. All rights reserved.
//

import UIKit

class ServiceApi: NSObject {

    static var host:String = "http://api.daydaycook.com.cn/daydaycook"
    // 38443 38332
    
    // 发现
    // http://api.daydaycook.com.cn/daydaycook/recommend/getMoreThemeRecipe.do?languageId=3&mainland=1&deviceId=D83DA445-62E2-46EF-A035-779FAE071FB2&uid=172096&regionCode=156&version=2.1.1
    
    class func getChooseViewAdList() -> String
    {
        return "\(host)/server/ad/listAds.do?languageId=\(WDConfig.languageId)&mainland=\(WDConfig.mainland)&uid=\(WDConfig.uid)&regionCode=\(WDConfig.regionCode)"
    }
    class func getNewFoodEachDay(_ currentpage :Int,pageSize:Int)->String
    {
        return "\(host)/server/recipe/search.do?currentPage=\(currentpage)&pageSize=\(pageSize)&name=&categoryId=&parentId=&screeningId=&tagId=&username=(null)&password=(null)&languageId=\(WDConfig.languageId)&mainland=\(WDConfig.mainland)&uid=\(WDConfig.uid)&regionCode=\(WDConfig.regionCode)"
    }
    
    class func test()-> String
    {
        return "http://api.daydaycook.com.cn/daydaycook/server/recipe/search.do?currentPage=0&pageSize=10&name=&categoryId=&parentId=&screeningId=&tagId=&username=(null)&password=(null)&languageId=3&mainland=1&deviceId=D83DA445-62E2-46EF-A035-779FAE071FB2&uid=&regionCode=156"
    }
    
    class func getRecommendInfo()->String
    {
        return "\(host)/recommend/queryRecommendAll.do?username=(null)&password=(null)&languageId=\(WDConfig.languageId)&mainland=\(WDConfig.mainland)&uid=\(WDConfig.uid)&regionCode=\(WDConfig.regionCode)"
 
    }
    
    class func getDetails(_ id:Int)->String
    {
        return "\(host)/server/recipe/details.do?ver=2&id=\(id)&username=&password=&languageId=\(WDConfig.languageId)&mainland=\(WDConfig.mainland)&uid=\(WDConfig.uid)&regionCode=\(WDConfig.regionCode)"
    }
    
    class func getVideosDetail(_ id:Int)->String
    {
        return "\(host)/server/recipe/detailVideo.do?id=\(id)&languageId=\(WDConfig.languageId)&mainland=\(WDConfig.mainland)&uid=\(WDConfig.uid)&regionCode=\(WDConfig.regionCode)"
    }

    class func getRecipeList(_ currentPage:Int,pageSize:Int)->String
    {
    
        return "\(host)/server/recipe/search.do?currentPage=\(currentPage)&pageSize=\(pageSize)&name=&categoryId=&parentId=&screeningId=&tagId=&htagId=&username=&password=&languageId=\(WDConfig.languageId)&mainland=\(WDConfig.mainland)&notheme=3&uid=\(WDConfig.uid)&regionCode=\(WDConfig.regionCode)"
    
    }
    
    class func getMoreThemeRecipe()->String
    {
        return "\(host)/recommend/getMoreThemeRecipe.do?languageId=\(WDConfig.languageId)&mainland=\(WDConfig.mainland)&uid=\(WDConfig.uid)&regionCode=\(WDConfig.regionCode)"
    }
    
    
    
}
