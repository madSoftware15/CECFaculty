//
//  FacultyTableViewController.swift
//  CECFaculty
//
//  Created by Mitch Dorfner on 2/26/17.
//  Copyright © 2017 Mitchell Dorfner. All rights reserved.
//

import UIKit

class FacultyTableViewController: UITableViewController {
    
    var facultyMembers:[Faculty] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        processJSON()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return facultyMembers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "facultyCell", for: indexPath)

        // Configure the cell...
        
        let facultyMember = facultyMembers[indexPath.row]
        
        cell.textLabel?.text = facultyMember.firstName + " " + facultyMember.lastName + ", " + facultyMember.degree
        cell.detailTextLabel?.text = facultyMember.title
        
        cell.imageView?.image = UIImage(named: facultyMember.userName)

        return cell
    }
    
    func processJSON() {
        do {
            if let url = Bundle.main.url(forResource: "FacultyData", withExtension: "json") {
                let data = try Data(contentsOf: url)
                let jsonData = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.allowFragments) as! [String:AnyObject]
                if let jsonArray = jsonData["faculty"] {
                    for i in 0..<jsonArray.count {
                        let s = Faculty(dict: jsonArray[i] as! [String:String])
                        facultyMembers.append(s)
                    }
                }
            }
        } catch {
            print("Something went wrong \(error)")
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let dest = segue.destination as! FacultyDetailViewController
        if let IndexPath = self.tableView.indexPathForSelectedRow {
            dest.faculty = facultyMembers[IndexPath.row]
        }
        
        
        print("In prepare for segue")
        
    }

}
