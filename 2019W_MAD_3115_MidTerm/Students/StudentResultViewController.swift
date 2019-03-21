//
//  StudentResultViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentResultViewController: UIViewController {
    
    @IBOutlet weak var sid: UILabel!
    
    @IBOutlet weak var sname: UILabel!
    
    @IBOutlet weak var gender: UILabel!
    
    @IBOutlet weak var marks1: UILabel!
    
    @IBOutlet weak var marks2: UILabel!
    
    @IBOutlet weak var marks3: UILabel!
    
    @IBOutlet weak var marks4: UILabel!
    
    @IBOutlet weak var marks5: UILabel!
    
    @IBOutlet weak var percentage: UILabel!
    var bdate1:String?
    var s:String?
    var marks1 = [Float]()
    var email:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let d = s
        {
            print(d)
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

}
