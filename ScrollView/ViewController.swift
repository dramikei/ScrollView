//
//  ViewController.swift
//  ScrollView
//
//  Created by Raghav Vashisht on 07/04/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                }
        

        
        override func viewDidAppear(_ animated: Bool) {
            
            let scrollWidth = scrollView.frame.size.width
            var contentWidth: CGFloat = 0.0
            for x in 0...2 {
                let image = UIImage(named: "icon\(x).png")
                let imageView = UIImageView(image: image)
                images.append(imageView)
                
                var newX: CGFloat
                newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
                contentWidth += newX
                
                scrollView.addSubview(imageView)
                imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height/2) - 75, width: 150, height: 150)
                

        }
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
    
    
    
}

