//
//  WebViewController.swift
//  CECFaculty
//
//  Created by Mitch Dorfner on 2/26/17.
//  Copyright © 2017 Mitchell Dorfner. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    var facultyName:String!
    
    @IBOutlet weak var webView: UIWebView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var str = "http://cec.nova.edu/~" + facultyName
        
        if let url = URL(string: str) {
            let request = URLRequest(url:url)
            webView.loadRequest(request)
        }

        // Do any additional setup after loading the view.
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
