//
//  ViewController.swift
//  Miracle Pill
//
//  Created by BENJAMIN HAHN on 9/23/16.
//  Copyright © 2016 BENJAMIN HAHN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTxt: UITextField!
    @IBOutlet weak var zipLbl: UILabel!
    @IBOutlet weak var zipTxt: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var miracleLbl: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var pillImg: UIImageView!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var fullNameTxt: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var streetLbl: UILabel!
    @IBOutlet weak var streetTxt: UITextField!
    @IBOutlet weak var dividerLn: UIView!
    
    @IBOutlet weak var SuccessImg: UIImageView!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
//        self.view.backgroundColor = UIColor.purple
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryTxt.isHidden = true
        zipLbl.isHidden = true
        zipTxt.isHidden = true
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryTxt.isHidden = false
        zipLbl.isHidden = false
        zipTxt.isHidden = false
    }
    @IBAction func buyBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = true
        countryLbl.isHidden = true
        countryTxt.isHidden = true
        zipLbl.isHidden = true
        zipTxt.isHidden = true
        streetLbl.isHidden = true
        streetTxt.isHidden = true
        cityLbl.isHidden = true
        cityTxt.isHidden = true
        fullNameLbl.isHidden = true
        fullNameTxt.isHidden = true
        price.isHidden = true
        miracleLbl.isHidden = true
        pillImg.isHidden = true
        SuccessImg.isHidden = false
        buyNowBtn.isHidden = true
        dividerLn.isHidden = true
        stateLbl.isHidden = true
        statePickerBtn.isHidden = true
        
    }
    
}

