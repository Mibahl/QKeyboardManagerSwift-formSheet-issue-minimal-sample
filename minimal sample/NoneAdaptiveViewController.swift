//
//  NoneAdaptiveViewController.swift
//  minimal_sample
//
//  Created by ext-mbl on 15.01.18.
//  Copyright © 2018 ext-mbl. All rights reserved.
//

import UIKit

class NoneAdaptiveViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Works as expected"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(clicked(_:)))
    }
    
    @objc func clicked(_ sender: Any) {

        let vc = UIViewController()
        vc.view.backgroundColor = UIColor.blue
        vc.modalPresentationStyle = .popover
        
        let textView = UITextView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 400.0))
        textView.text = "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
        vc.view.addSubview(textView)
        
        vc.preferredContentSize = CGSize(width: 200, height: 400)
        
        let ppc = vc.popoverPresentationController
        ppc?.permittedArrowDirections = .any
        ppc?.delegate = self
        ppc?.barButtonItem = navigationItem.rightBarButtonItem
        ppc?.sourceView = sender as? UIView
        
        present(vc, animated: true, completion: nil)

    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
}
