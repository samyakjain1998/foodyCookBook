//
//  NetworkManager.swift
//  FoodyCookBook
//
//  Created by Samyak Jain on 30/01/21.
//

import UIKit
import Alamofire


 func getAPi(urlStr:String, callback:@escaping (( _ success :Bool, _ results: [String:Any])->())){
    let apiurl = URLComponents(string:  urlStr)
    print("getJobsUrl==",apiurl!)
    AF.request(apiurl!,method: .get, encoding: JSONEncoding.default,headers:[]).responseJSON { (respose) in
        if let result = respose.value as? [String :Any] {
            print(result)
            callback(true,result)
        } else {
            print("error==",respose.error!)
            callback(false,[:])
        }
        return
    }
}

class Connectivity {
    class var isConnectedToInternet:Bool {
        return NetworkReachabilityManager()!.isReachable
    }
}


