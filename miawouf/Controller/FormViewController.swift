//
//  FormViewController.swift
//  miawouf
//
//  Created by Simon Dahan on 04/09/2020.
//  Copyright © 2020 Simon Dahan. All rights reserved.
//

import UIKit

class FormViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var hasMajoritySwitch: UISwitch!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var racePickerView: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dogRaces.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dogRaces[row]
    }
    @IBAction func dismissKeyboard(_ sender: Any) {
        nameTextField.resignFirstResponder()
        phoneTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func validate() {
        createPetObject()
    }
    
    private func createPetObject() {
        let name = nameTextField.text
        let phone = phoneTextField.text
        let hasMajority = hasMajoritySwitch.isOn
        let genderIndex = genderSegmentedControl.selectedSegmentIndex
        let gender: Pet.Gender = (genderIndex == 0) ? .male : .female
        let raceIndex = racePickerView.selectedRow(inComponent: 0)
        let race = catRaces[raceIndex]
        
        let dog = Pet(name: name, hasMajority: hasMajority, phone: phone, race: race, gender: gender)
    }
    
}
