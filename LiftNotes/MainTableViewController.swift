//
//  MainTableViewController.swift
//  LiftNotes
//
//  Created by Ross Gottschalk on 9/10/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController
{
    //var workouts = [String]()
    var bodyParts = [String]()
    //var newBodyPart: String = ""
    
    var newExerciseArray  = [ExerciseClass]()
    var newDescriptionArray = [DescriptionClass]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "Lift Notes"
        bodyParts = ["Back", "Chest", "Shoulders", "Arms", "Legs"]

        
        newExerciseArray = [ExerciseClass(arrayOfExercises: ["Lat Pulldown", "Cable Rows", "Barbell Rows", "DB Rows", "Shrugs"]),
                        ExerciseClass(arrayOfExercises: ["Incline DB Bench", "Machine Chest Press", "Cable Flys", "Overhead DB Pulls"]),
                        ExerciseClass(arrayOfExercises: ["Seated DB Shoulder Press", "Lat Raises", "Face Pulls", "Single Arm Inverted Press"]),
                        ExerciseClass(arrayOfExercises: ["Cable Bicep Curls", "Barbell Curls", "Cable Tricep Pulldowns", "Tricep Kickbacks"]),
                        ExerciseClass(arrayOfExercises: ["Leg Press", "Hamstring Curls", "Quad Extensions"])]
        
        
        
        newDescriptionArray = [DescriptionClass(descriptionArray: ["Grasp cable bar with wide grip. Sit with thighs under supports.\n \nPull down cable bar to upper chest. Return until arms and shoulders are fully extended. Repeat.",
            
            "Sit slightly forward on seat or bench in order to grasp cable attachment. Place feet on vertical platform. Slide hips back positioning knees with slight bend.\n \nPull cable attachment to waist while straightening lower back. Pull shoulders back and push chest forward while arching back. Return until arms are extended, shoulders are stretched forward, and lower back is flexed forward. Repeat.",
                                                                   
            "Bend knees slightly and bend over bar with back straight. Grasp bar with wide overhand grip.\n \nPull bar to upper waist. Return until arms are extended and shoulders are stretched downward. Repeat.",
            
            "Kneel over side of bench by placing knee and hand of supporting arm on bench. Position foot of opposite leg slightly back to side. Grasp dumbbell from floor.\n \nPull dumbbell to up to side until it makes contact with ribs or until upper arm is just beyond horizontal. Return until arm is extended and shoulder is stretched downward. Repeat and continue with opposite arm.",
            
            "Stand holding dumbbells to sides.\n \nElevate shoulders as high as possible. Lower and repeat."]),
                               
            DescriptionClass(descriptionArray: ["Sit down on bench with dumbbells resting on lower thigh. Kick weights to shoulder and lie back. Position dumbbells to sides of chest with bent arm under each dumbbell.\n \nPress dumbbells up with elbows to sides until arms are extended. Lower weight to sides of chest until slight stretch is felt in chest or shoulder. Repeat.",
                
                "Sit on seat with chest approximately height of handles. Grasp handles with wide overhand grip; elbows out to sides just below shoulders.\n \nPress lever until arms are extended. Return weight until chest muscles are slightly stretched. Repeat.",
                
                "Grasp two opposing high pulley dumbbell attachments. Stand with pulleys to each side. Bend over slightly by flexing hips and knees. Bend elbows slightly and internally rotate shoulders so elbows are back initially.\n \nBring cable attachments together in hugging motion with elbows in fixed position. Keep shoulders internally rotated so elbows are pointed upward at top and out to sides at bottom. Return to starting position until chest muscles are stretched. Repeat.",
                
                "Lie on upper back perpendicular to bench. Flex hips slightly. Grasp one dumbbell from behind or from side with both hands under inner plate of dumbbell. Position dumbbell over chest with elbows slightly bent.\n \nKeeping elbows slightly bent throughout movement, lower dumbbell over and beyond head until upper arms are in-line with torso. Pull dumbbell up and over chest. Repeat."]),
            
            DescriptionClass(descriptionArray: ["Position dumbbells to each side of shoulders with elbows below wrists.\n \nPress dumbbells upward until arms are extended overhead. Lower to sides of shoulders and repeat.",
                
                "Position dumbbell in front of pelvis with elbow slightly bent. Grasp stationary object with other hand for support. Bend over with hips and knees bent slightly.\n \nRaise upper arm to side until elbow is shoulder height. Maintain elbow's height above or equal to wrist. Lower and repeat. Continue with opposite arm.",
                "Sit slightly forward on bench or platform in order to grasp cable bar attachment. With elbow width overhand grip, straighten torso upright and slide hips back until knees are only slightly bent.\n \nPull cable attachment toward upper chest, just below neck, with elbows up out to sides until elbows travel slightly behind back. Keep upper arms horizontal, perpendicular to trunk. Return until arms are extended and shoulders are stretched forward. Repeat.",
                "Stand with dumbbells positioned near shoulder with elbow below wrists.\n \nPress dumbbell upward until arm is extended overhead. Lower to side of shoulder and repeat."]),
            
            DescriptionClass(descriptionArray: ["Grasp low cable bar with shoulder width underhand grip. Stand close to cable bar.\n \nWith elbows to side, raise bar until forearms are vertical. Lower until arms are fully extended. Repeat.",
                
                "Grasp bar with shoulder width underhand grip.\n \n With elbows to side, raise bar until forearms are vertical. Lower until arms are fully extended. Repeat.",
                
                "Face high pulley and grasp revolving bar cable attachment with overhand grip. Position one leg back and bend forward leg with body leaning forward. Position revolving bar down in front of face with forearms nearing vertical.\n \nPush cable bar downward by extending arms until elbows are straight. Return to front of face until forearms are nearly vertical and close to upper arm. Repeat.",
                
                "Kneel over bench with arm supporting body. Grasp dumbbell. Position upper arm parallel to floor.\n \nExtend arm until it is straight. Return and repeat. Continue with opposite arm."]),
            
            DescriptionClass(descriptionArray: ["Sit on machine with back on padded support. Place feet on platform. Grasp handles to sides.\n \nPush platform(s) away by extending knees and hips until knees are fully extended. Return until hips are completely flexed. Repeat.",
                                                
                "Stand in machine with lower pads behind lower legs, upper pads in front of thighs, and lever fulcrum between knees. Bend over, placing forearms on pads, and grasp handles. Stand with body weight shifted on foot of resting leg and raise foot of exercising leg slightly off of floor or platform.\n \nRaise lever up by bending knee as high as possible. Return lever until knee is straight. Repeat. Continue with opposite leg.",
                
                "Sit on apparatus with back against padded back support. Place front of lower legs under padded lever. Position knee articulation at same axis as lever fulcrum. Grasp handles to sides for support.\n \nMove lever forward and upward by extending knees until legs are straight. Return lever to original position by bending knees. Repeat."])]
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bodyParts.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "workoutCell", for: indexPath) //as! WorkoutCell

        // Configure the cell...
        cell.textLabel?.text = bodyParts[indexPath.row]
        return cell
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "exerciseSegue"
        {
            let indexPath = self.tableView.indexPathForSelectedRow
            let destVC = segue.destination as! ExerciseTableViewController
            var exerciseArray2: ExerciseClass
            exerciseArray2 = newExerciseArray[(indexPath?.row)!]
            destVC.exercises = exerciseArray2.arrayOfExercises
            
            //let selectedCell = sender as! UITableViewCell
            //let indexPath = tableView.indexPath(for: selectedCell)
            let selectedBP = bodyParts[(indexPath?.row)!]
            //print("I have selected \(selectedBP)")
            
            destVC.data = selectedBP
            
            var descriptionArray2: DescriptionClass
            descriptionArray2 = newDescriptionArray[(indexPath?.row)!]
            destVC.exercisesDetail = descriptionArray2.descriptionArray
            
            
            /*
            let navVC = segue.destination as! ExerciseTableViewController
            //let navVC = segue.destination as! UINavigationController
            //let targetVC = navVC.topViewController as! ExerciseTableViewController
            //viewcontrollers.top
            
            let selectedCell = sender as! UITableViewCell
            let indexPath = tableView.indexPath(for: selectedCell)
            let selectedBP = bodyParts[(indexPath?.row)!]
            print("I have selected\(selectedBP)")
            
            //targetController.exercises = [selectedBP]
            
            navVC.data = selectedBP

            //let detailVC = segue.destination as! ExerciseTableViewController
            //let selectedCell = sender as! UITableViewCell
            //let indexPath = tableView.indexPath(for: selectedCell)
            //let selectedPlayer = bodyParts[(indexPath?.row)!]
            //detailVC.exercises = [selectedPlayer]
 
 
 */
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
