//
//  ExampleViewController.swift
//  MyFirstProject
//
//  Created by Gustavo Tellez on 26/09/22.
//

import UIKit

class ExampleViewController: UIViewController {
    
    var ui: ExampleViewUI?
    
    override func loadView() {
        ui = ExampleViewUI(ejemplo: "Vista")
        view = ui
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Mi primera pantalla"
        // Do any additional setup after loading the view.
//        self.view.backgroundColor = UIColor.systemGreen
    }
}
