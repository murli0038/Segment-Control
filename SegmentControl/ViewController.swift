//
//  ViewController.swift
//  SegmentControl
//
//  Created by Nikunj Prajapati on 30/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var Name = ["Nikunj","Yogesh","Priyaben","Tanvi","Vijay","Kajal"]
    
    var Enrollment = ["170750116038","170750116036","170750116030","170750116039","170750116040","170750116026"]
    
    var Branch = ["IT","CE","Mech","Civil","Software","Electical"]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segment: UISegmentedControl!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        switch  segment.selectedSegmentIndex
        {
        case 0:
            return Name.count
        case 1:
            return Enrollment.count
        case 2:
            return Branch.count
        default:
            break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myTableViewCell
        
        switch  segment.selectedSegmentIndex
        {
        case 0:
            cell.name.text = Name[indexPath.row]
        case 1:
            cell.name.text = Enrollment[indexPath.row]
        case 2:
            cell.name.text = Branch[indexPath.row]
        default:
            break
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SegmentedControl(_ sender: UISegmentedControl)
    {
        tableView.reloadData()
    }
    
}

