//
//  ViewController.swift
//  CandyReviewApp
//
//  Created by Aina Kodaira on 10/31/23.
//



import UIKit


class ViewController:UIViewController {
    
    
    @IBOutlet weak var viewControllerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create a UIImageView
              let imageView = UIImageView()

              // Set the image to display
              imageView.image = UIImage(named: "HalloweenMainCover")

        // Set the frame (position and size) of the image view
              imageView.frame = CGRect(x: -20, y: 50, width: 435, height: 950)
        
        // Add the image view to your view controller's view
              self.view.addSubview(imageView)
        // Do any additional setup after loading the view.
        self.viewControllerLabel.text = "Featured Candy"
    }
    
// writing a test comment 
}// class viewController closing bracket

