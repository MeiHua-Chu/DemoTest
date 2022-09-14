//
//  NameTextField.swift
//  DemoTest
//
//  Created by chu hua on 2022/9/9.
//

import Foundation
import UIKit
class NameTextField: UIView {
    
    var title: String = "" {
        didSet {
            titleLabel.text = title
            titleLabel.sizeToFit()
        }
    }
    
    var value: String {
        textField.text ?? ""
    }
    
    private var stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 5
        return view
    }()
    /// 名稱
    private var titleLabel = UILabel()
    
    /// 輸入框
    var textField = UITextField()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .clear
        addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(textField)
        
        
        
        NSLayoutConstraint.activate([
            textField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.widthAnchor.constraint(equalTo: widthAnchor),
            stackView.heightAnchor.constraint(equalTo: heightAnchor)
        ])
    }
}
