//
//  ViewController.swift
//  WebP-Swift
//
//  Created by Mark on 09/10/2016.
//  Copyright © 2016 Visoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.gstatic.com/webp/gallery3/3_webp_ll.webp")!
        
        //Simple usage example without options
        let imageWithURL = UIImage(webpWithURL: url)
        
        //Simple usage example with options
        let options: [String : Int32] = ["no_fancy_upsampling":1,"bypass_filtering":1,"use_threads":1]
        let imageWithURLandOptions = UIImage(webpWithURL: url, andOptions: options)
 
        //Simple usage example with NSData
        let filePath = Bundle.main.path(forResource: "3_webp_ll", ofType: "webp")!
        var fileData:NSData? = nil
        do {
            fileData = try NSData(contentsOfFile: filePath, options: NSData.ReadingOptions.uncached)
        }
        catch {
            print("Error loading WebP file")
        }
        let imageWithData = UIImage(webpWithData: fileData!)
        
        //Print sizes to hide XCode warnings
        print(imageWithURL.size)
        print(imageWithURLandOptions.size)
        print(imageWithData.size)

        //Setting Image
        self.imageView.image = imageWithURL
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

