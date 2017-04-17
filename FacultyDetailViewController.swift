//
//  FacultyDetailViewController.swift
//  CECFaculty
//
//  Created by Mitch Dorfner on 2/26/17.
//  Copyright © 2017 Mitchell Dorfner. All rights reserved.
//

import UIKit

class FacultyDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var facNameLabel: UILabel!
    @IBOutlet weak var facTitleLabel: UILabel!
    @IBOutlet weak var facBio: UITextView!
    
    var faculty:Faculty?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let f = faculty {
            facNameLabel.text = f.firstName + " " + f.lastName + ", " + f.degree
            facTitleLabel.text = f.title
            imageView.image = UIImage(named: f.userName.lowercased())
            facBio.text = f.bio
            self.title = f.firstName + " " + f.lastName
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let dest = segue.destination as! WebViewController
        if let name = faculty?.userName {
            dest.facultyName = name
        }
    }

}
