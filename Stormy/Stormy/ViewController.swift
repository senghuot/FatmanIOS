//
//  ViewController.swift
//  Stormy
//
//  Created by Senghuot Lim on 1/14/15.
//  Copyright (c) 2015 Senghuot Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let apiKey = "ee17cd367d8f7b705ace75db1bb8efdf";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/");
        let forecastURL = NSURL(string: "37.8267,-122.423", relativeToURL: baseURL);
        
        let weatherData = NSData(contentsOfURL: forecastURL!, options: nil, error: nil);
        

        println(weatherData);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

