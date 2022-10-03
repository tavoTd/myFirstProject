//
//  ExampleViewUI.swift
//  MyFirstProject
//
//  Created by Luis Fernando Sánchez Palma on 27/09/22.
//

import UIKit


internal class ExampleViewUI: UIView {
    //Componentes a tulizar en la vista
    lazy var button: UIButton = {
        let button = UIButton(frame: CGRect.zero)
        button.backgroundColor = .gray
        button.setTitle("Button", for: UIControl.State.normal)
//        button.setImage(UIImage(named: "AppIcon", in: Bundle.main, compatibleWith: nil), for: .normal)
        
        button.layer.cornerRadius = 25
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.orange.cgColor
        
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Hola Mundo"
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.italicSystemFont(ofSize: 50.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var view: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Batman", in: Bundle.main, compatibleWith: nil)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    //Inicializa la Clase
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public convenience init(ejemplo: String){
        self.init()
        self.backgroundColor = .systemGreen
        setupUIElements()
        setupConstraints()
    }
    
    //Seteamos los componentes en el UI
    fileprivate func setupUIElements() {
        self.addSubview(button)
        self.addSubview(label)
        self.addSubview(view)
        self.addSubview(imageView)
    }
    //Accion
    @objc func buttonAction(_ sender: UIButton){
        print("Se activó botton")
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            //Botón
            button.topAnchor.constraint(equalTo: self.topAnchor, constant: 60),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            button.heightAnchor.constraint(equalToConstant: 50),
            //Label
            label.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 60),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            //View
            view.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 60),
//            La combinación de leadingAnchor y trailingAnchor nos genera una anchura implicita.
//            view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
//            view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            view.widthAnchor.constraint(equalToConstant: 100),//Anchura Explicita
            view.heightAnchor.constraint(equalToConstant: 100),//Altura Explicita
            view.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            //ImageView
            imageView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 60),
            imageView.widthAnchor.constraint(equalToConstant: 100),//Anchura Explicita
            imageView.heightAnchor.constraint(equalToConstant: 100),//Altura Explicita
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
}
