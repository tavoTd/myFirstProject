//
//  Example2ViewController.swift
//  MyFirstProject
//
//  Created by Gustavo Tellez on 26/09/22.
//

import UIKit

class Example2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Segunda Pantalla"
        self.view.backgroundColor = UIColor.systemPurple
        print("Estamos entrando en viewDidload...")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Estamos entrando en viewWillAppear...")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Estamos entrando en viewDidAppear...")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Estamos entrando en viewWillDisappear...")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Estamos entrando en viewDidDisappearr...")
    }
}
