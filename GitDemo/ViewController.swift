//
//  ViewController.swift
//  GitDemo
//
//  Created by Aleksey Kemezhuk on 06/07/2025.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var button = UIButton(configuration: .filled())

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(button)
        button.setTitle("Hello!", for: .normal)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }


}

