//
//  ViewController.swift
//  Lab6
//
//  Created by Jonathan Molina on 10/26/16.
//  Copyright © 2016 Jonathan Molina. All rights reserved.
//

import UIKit
import SwiftHTTP
import Alamofire
import SwiftyJSON


class ViewController: UIViewController, NSURLConnectionDataDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://api.wunderground.com/api/33a3de47e766322d/conditions/q/CA/San_Francisco.json")
        
        let task = URLSession.shared.dataTask(with: url! as URL) {(data, response, error) in
            print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
            
            let json = JSON(data: data!)
            
            print("response: " + json["response"]["version"].string!)
            
        }
        
        task.resume()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

