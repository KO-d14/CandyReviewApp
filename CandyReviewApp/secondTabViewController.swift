//
//  secondTabViewController.swift
//  CandyReviewApp
//
//  Created by Aina Kodaira on 11/2/23.
//

/*
 H9_FromTableviewToDetailView
 
 Part 2 - explanation
 Part 3: Let’s Create a Property List (2 points)
 1. Go to File--New--File  <--- DONE
 2. Search for “Property List” and select “Next” button <--- DONE
 3. (~~~~~~~~~~~~~~~~~~~~~~~~~~)
 4. Check that your Property List has been added to the Project Navigator: <--- DONE
 
 Part 4: explanation
 Part 5: Adding data to Property List (6 points)
 1. (~~~~~read in guidline if needed~~~~~)
 2. In the property list, let’s create an array that will hold the name of the image we want to display in the secondDetailViewController. <--- DONE
 3. Select the “Root” row in the property list and press the “+” button one time: <--- DONE
 4. Rename “New Item” to “CategoryOneImages” and use the dropdown menu to change  the type from String to Array. <--- DONE
 5. (~~~~~~~~~~~~~~~~~~~~~~~~~~)
 6. Ok, we’ve created an array in our property list that will store our image names for our Category one candies. Let’s add the name of our first image into the array. Select “+” of the array to add the New Item.<--- DONE
 7. (~~~~~~~~~~~~~~~~~~~~~~~~~~)
 8. TO OPEN the CategoryOneImages Array, select the “>”. When it is open the icon will like this “v”
 9. Now that the array is open, you can select “+” to add item 0.
 10. (~~~~~~~~~~~~~~~~~~~~~~~~~~)
 11. (~~~~~~~~~~~~~~~~~~~~~~~~~~)
 
(NOTE: I think kumu misnumbered the parts; likely a 6 & not a 7)
 Part 7: Add another table view function called, tableView(_:didSelectRowAt:) to your tab 2 viewcontroller (2 points)
 1. >>>(code below)
 
 Part 8: Set up the second tab Viewcontroller to pass data from the pList (2 points)
 1. >>>(code below)
 2. >>>(code below)
 
 
 Part 9: We need to set up data to pass in the Segue (3 points)
 1. Create a segue from the prototype cell and give that segue the identifier “mySegue”. <--- DONE
 2 & 3) >>>(code below)

 */

import UIKit

class secondTabViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    //>>>Part 8-#1 Above func viewDidLoad(), declare a new variable which is an array named, “categoryOneImageData” which holds string objects
        var categoryOneImagesData = [String]()
        
        override func viewDidLoad()
        {
    //>>>Part 8-#2. Now, we have to set up the viewcontroller to get the data from the property list. Within the code block for func viewDidLoad() .
            let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
            let dict = NSDictionary(contentsOfFile: path!)
            categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        } //func viewDidLoad closing bracket
    
/*Complete this part on your own prior to 11/2(Thurs) class*/
    
    var chocolateCandyArray = ["Crunch", "KitKat", "Three Musketeers", "Twix"]
      
      var ratingsArray = ["★★★★★", "★★★★☆", "★★★★☆", "★★★★☆"]
    
    @IBOutlet weak var tableView: UITableView!
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
      {
          return chocolateCandyArray.count
      }//func tableView #OFROWSINSECTION closing bracket
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
      {
          let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
          let text = chocolateCandyArray[indexPath.row]
      //connection to the subtitle
          cell.detailTextLabel?.text = ratingsArray[indexPath.row]
          cell.textLabel?.text = text
          return cell
      }//func tableView CELLFORROWAT closing bracket
    
//>>>Part7-#1. Please add this new tableview function, “didSelectRowAt” and add one line of code in that function’s code block that indicates that a row has been selected:
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)

                {
                    tableView.deselectRow(at: indexPath, animated: true)
                }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

//>>>Part 9-#3 
            if segue.identifier == "mySegue"

            {
                let s1 = segue.destination as! secondDetailViewController
                let imageIndex = tableView.indexPathForSelectedRow?.row
                s1.imagePass = categoryOneImagesData[imageIndex!]

            }

        }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
