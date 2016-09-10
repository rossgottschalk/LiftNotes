//
//  ExerciseCell.swift
//  LiftNotes
//
//  Created by Ross Gottschalk on 9/10/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class ExerciseCell: UITableViewCell
{
    @IBOutlet weak var exerciseTextField: UITextField!
    @IBOutlet weak var setsTextField: UITextField!
    @IBOutlet weak var repsTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
