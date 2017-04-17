//
//  CourseDetailViewController.swift
//  CECFaculty
//
//  Created by Mitch Dorfner on 2/27/17.
//  Copyright © 2017 Mitchell Dorfner. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController {
    
    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var shortDesc: UILabel!
    @IBOutlet weak var longDesc: UITextView!
    
    var course:Course?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let c = course {
            courseName.text = c.name
            shortDesc.text = c.shortDesc
            longDesc.text = c.longDesc
            self.title = c.name
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
