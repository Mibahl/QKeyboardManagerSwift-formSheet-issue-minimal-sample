//
//  ViewController.swift
//  minimal sample
//
//  Created by ext-mbl on 15.01.18.
//  Copyright © 2018 ext-mbl. All rights reserved.
//

import UIKit
import MZFormSheetPresentationController

class ViewController: UIViewController {

    @IBAction func showFormsheet(_ sender: Any) {
        
        let formSheet = storyboard?.instantiateViewController(withIdentifier: "formSheet") as! FormSheet

        let mzFormSheetController = MZFormSheetPresentationViewController(contentViewController: formSheet)
        
        mzFormSheetController.presentationController?.shouldCenterVertically = true
        
        present(mzFormSheetController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

