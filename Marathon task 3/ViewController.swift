//
//  ViewController.swift
//  Marathon task 3
//
//  Created by Виталий Троицкий on 07.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var animator: UIViewPropertyAnimator!
    
    private lazy var viewSquare: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var slider: UISlider = {
        let slider = UISlider()
        slider.isContinuous = true
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupElement()
        setupConstaints()
        
        slider.addAction(.init(handler: { _ in
            
        }), for: .valueChanged)
        slider.addAction(.init(handler: { _ in
            
        }), for: [.touchUpInside, .touchUpOutside] )
        
       
    }
    
    
    @objc func changeView(slider: UISlider, event: UIEvent) {
        
    }
    
        @objc func superEd(slider: UISlider, event: UIEvent) {

        }
       
        
        
      
        

    
    private func setupElement() {
        view.addSubview(viewSquare)
        view.addSubview(slider)
    }
    
    private func setupConstaints() {
        NSLayoutConstraint.activate([
            viewSquare.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            viewSquare.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            viewSquare.heightAnchor.constraint(equalToConstant: 100),
            viewSquare.widthAnchor.constraint(equalToConstant: 100),
            
            slider.topAnchor.constraint(equalTo: viewSquare.bottomAnchor, constant: 50),
            slider.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            slider.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
    }
    
}


