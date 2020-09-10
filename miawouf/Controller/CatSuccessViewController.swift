//
//  CatSuccessViewController.swift
//  miawouf
//
//  Created by Simon Dahan on 04/09/2020.
//  Copyright © 2020 Simon Dahan. All rights reserved.
//

import UIKit

class CatSuccessViewController: UIViewController {
    
    override func viewDidLoad() {
        welcomeCat()
    }
    
    var cat: Pet!
    @IBOutlet weak var welcomeCatLabel: UILabel!
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    private func welcomeCat() {
        welcomeCatLabel.text = "Miaou de bienvenue à \(cat.name ?? "Felix") !"
    }
}
