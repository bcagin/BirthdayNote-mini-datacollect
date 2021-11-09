//
//  ViewController.swift
//  BirthdayNotes
//
//  Created by Çağın Böğürcü on 9.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var dateText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "isim")
        let storedDate = UserDefaults.standard.object(forKey: "tarih")
        
        if let newName = storedName as? String {
            nameLabel.text = "Last Saved Name: \(newName)"
        }
        
        if let newDate = storedDate as? String {
            dateLabel.text = "Last Saved Date: \(newDate)"
        }

    }

    @IBAction func save(_ sender: Any) {
        
        UserDefaults.standard.set(nameText.text!, forKey: "isim")
        UserDefaults.standard.set(dateText.text!, forKey: "tarih")
        
        nameLabel.text = "Name: \(nameText.text!)"
        dateLabel.text = "Date: \(dateText.text!)"
        
    }
    
    @IBAction func delSavedItems(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "isim")
        let storedDate = UserDefaults.standard.object(forKey: "tarih")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storedDate as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "date")
            dateLabel.text = "Date: "
        }
    }
    
    
    
    
}

