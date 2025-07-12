//
//  ViewController.swift
//  GitDemo
//
//  Created by Aleksey Kemezhuk on 06/07/2025.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    private var button = UIButton(configuration: .gray())
    private var secondButton = UIButton(configuration: .gray())
    private var thirdButton = UIButton(configuration: .gray())
    
    // MARK: - VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        setupUI()
    }
    
    // MARK: - Flow Methods
    private func setupUI() {
        view.addSubview(button)
        view.addSubview(secondButton)
        view.addSubview(thirdButton)
        
        button.setTitle("I'm good, yeah I'm feeling alright!", for: .normal)
        button.addAction(UIAction(handler: { _ in
            print("action")
        }) , for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        secondButton.setTitle("Thank You very much!", for: .normal)
        secondButton.addAction(UIAction(handler: { _ in
            print("action")
        }) , for: .touchUpInside)
        secondButton.snp.makeConstraints { make in
            make.center.equalTo(button).offset(50)
        }
        
        thirdButton.setTitle("I'm good, yeah I'm feeling alright!", for: .normal)
        thirdButton.addAction(UIAction(handler: { _ in
            print("action")
        }) , for: .touchUpInside)
        thirdButton.snp.makeConstraints { make in
            make.center.equalTo(secondButton).offset(50)
        }
    }


}

