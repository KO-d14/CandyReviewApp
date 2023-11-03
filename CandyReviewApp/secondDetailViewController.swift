//
//  secondDetailViewController.swift
//  CandyReviewApp
//
//  Created by Aina Kodaira on 11/2/23.
//

/*
 H9_FromTableviewToDetailView: On Your Own:
 Part 1: Open your Candy Review App Project in Xcode (Part 1 completed) (No guideline given) & Add a new viewcontroller (6 points):
 1. Add a new viewcontroller to your storyboard. Place that viewcontroller next to your second tab viewcontroller. <--- DONE
 2. Add an image view to that view controller. <--- DONE
 3. Set up a .swift file for that viewcontroller and name that file, “secondDetailViewController” <--- DONE
 4. Connect the “face to the brain” <--- DONE
 5. >>>>(code below)
 6. In your Assets folder, add the image of the first candy listed in your tableview for tab 2. Please rename your image to the candy name for easy reference and to avoid typos.  <--- DONE
 */
import UIKit

class secondDetailViewController: UIViewController
{

//>>>H9 Part 1-#5: Create an IBOutlet for the image view and name it, “imageView”
   @IBOutlet weak var imageView: UIImageView!
    
//Part 10: Open up the secondDetailViewController.swift file (2 points)
    //1. We have to create a String variable in our secondDetailViewController so that it can receive the string (holding the image name) from the viewcontroller (the one with the table view)
    var imagePass: String?

    override func viewDidLoad() {
        super.viewDidLoad()
//Part 10-#2: in secondDetailViewController.swift in func viewDidLoad(), we have to write a few lines of code to set our image to display in the image view.

        if let imageName = imagePass
        {
                    imageView.image = UIImage(named: imageName)

                }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

} //class closing bracket
