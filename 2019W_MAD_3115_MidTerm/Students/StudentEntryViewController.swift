//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var gender:String?
   
    

    @IBOutlet weak var txtSTUDENTNAME: UITextField!
    var date1:String=""
    
    @IBOutlet weak var txtstudent: UITextField!
     var name:String=""
    
    @IBOutlet weak var txtstudenta: UITextField!
     var s = ["a", "b", "c", "d"]
    
    @IBOutlet weak var txtgender: UILabel!
    @IBOutlet weak var txtmarks1: UITextField!
    
    @IBOutlet weak var txtmarks2: UITextField!
    
    @IBOutlet weak var txtmarks3: UITextField!
    
    @IBOutlet weak var txtmarks4: UITextField!
    
    @IBOutlet weak var txtmarks5: UITextField!
    var e = [Float]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btncalculate(_ sender: UIButton) {
        e.append(Float(txtmarks1.text!)!)
        e.append(Float(txtmarks2.text!)!)
        e.append(Float(txtmarks3.text!)!)
        e.append(Float(txtmarks4.text!)!)
        e.append(Float(txtmarks5.text!)!)
        let s1 = Student(sid:txtstudent.text!,sname:txtSTUDENTNAME.text!,gen:gender!,bdate:date1,marks:e)
    }
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        gender=String(sender.selectedSegmentIndex)
    }
    @IBAction func datepicker(_ sender: UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-YYYY"
        let Date = dateFormatter.string(from: sender.date)
        date1 = Date
    }
    @IBOutlet weak var course: UIPickerView!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component==0
        {
            
        }else{ return self.s.count}
        return 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component==1
        {
            return s[row]
        }
        return "NIl"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView==course
        {
            //course=self.course[course.selectedRow(inComponent: 1)]
        }
    }
}
