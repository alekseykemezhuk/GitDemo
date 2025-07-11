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
    private var button = UIButton(configuration: .filled())

    // MARK: - VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        setupUI()
    }
    
    // MARK: - Flow Methods
    private func setupUI() {
        view.addSubview(button)
        button.setTitle("Hello!", for: .normal)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }


}

