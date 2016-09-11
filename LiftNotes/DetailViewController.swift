//
//  DetailViewController.swift
//  LiftNotes
//
//  Created by Ross Gottschalk on 9/11/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    
    @IBOutlet weak var detailTextView: UITextView!
    
    
    
    var detailString = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Description"
        detailTextView.text = detailString

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
