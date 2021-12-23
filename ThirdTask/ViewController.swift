//
//  ViewController.swift
//  ThirdTask
//
//  Created by user on 23.12.2021.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    private var label = UILabel()
    private var textField = UITextField()
    private var button = UIButton()
    
    var s = "Айбек, Мирбек, Daniel, Erjan"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = s.replacingOccurrences(of: ", ", with: "\n", options: .literal, range: nil)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping

        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
            make.width.equalToSuperview().offset(-100)
        }
        
        textField.placeholder = "Введите имя..."
        
        view.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-120)
            make.width.equalToSuperview().offset(-100)
        }
        
        button.backgroundColor = .yellow
        button.setTitle("Сохранить", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(nil, action: #selector(clickButton(sender:)), for: .touchUpInside)
        
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-70)
            make.width.equalTo(100)
        }
        
    }
    @objc func clickButton(sender: UIButton) {
        
        s.append(", ")
        s.append(textField.text ?? "")
        textField.text = ""
        label.text = s.replacingOccurrences(of: ", ", with: "\n", options: .literal, range: nil)
    }
}
