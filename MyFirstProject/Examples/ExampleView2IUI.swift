//
//  ExampleView2IUI.swift
//  MyFirstProject
//
//  Created by Luis Fernando Sánchez Palma on 28/09/22.
//

import UIKit

internal class ExampleView2IUI: UIView {
    
    lazy var textfield1: UITextField = {
       let textfield = UITextField()
        textfield.backgroundColor = .blue
        textfield.placeholder = "Usuario"
        textfield.keyboardType = .numberPad
        textfield.font = .italicSystemFont(ofSize: 30.0)
        textfield.textColor = .green
        textfield.isSecureTextEntry = false
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    lazy var textfield2: UITextField = {
       let textfield = UITextField()
        textfield.backgroundColor = .red
        textfield.placeholder = "Contraseña"
        textfield.keyboardType = .asciiCapable
        textfield.font = .italicSystemFont(ofSize: 30.0)
        textfield.textColor = .green
        textfield.isSecureTextEntry = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    lazy var textfield3: UITextField = {
       let textfield = UITextField()
        textfield.backgroundColor = .green
        textfield.font = .italicSystemFont(ofSize: 30.0)
        textfield.isSecureTextEntry = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    lazy var textfield4: UITextField = {
       let textfield = UITextField()
        textfield.backgroundColor = .yellow
        textfield.font = .italicSystemFont(ofSize: 30.0)
        textfield.isSecureTextEntry = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    lazy var textfield5: UITextField = {
       let textfield = UITextField()
        textfield.backgroundColor = .purple
        textfield.font = .italicSystemFont(ofSize: 30.0)
        textfield.isSecureTextEntry = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    lazy var contentFormViewStack: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.axis = .vertical
        stack.spacing = 50
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public convenience init(ejemplo: String){
        self.init()
        self.backgroundColor = .cyan
        setupUIElements()
        setupConstraints()
    }
    
    fileprivate func setupUIElements() {
        self.addSubview(textfield1)
        self.addSubview(textfield2)
        self.addSubview(contentFormViewStack)
        contentFormViewStack.addArrangedSubview(textfield3)
        contentFormViewStack.addArrangedSubview(textfield4)
        contentFormViewStack.addArrangedSubview(textfield5)
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            textfield1.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            textfield1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            textfield1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            textfield1.heightAnchor.constraint(equalToConstant: 50),
            
            textfield2.topAnchor.constraint(equalTo: textfield1.bottomAnchor, constant: 50),
            textfield2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            textfield2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            textfield2.heightAnchor.constraint(equalToConstant: 50),
            
            contentFormViewStack.topAnchor.constraint(equalTo: textfield2.bottomAnchor, constant: 50),
            contentFormViewStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            contentFormViewStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50)
            
        ])
    }
}
