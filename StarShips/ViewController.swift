//
//  ViewController.swift
//  StarShips
//
//  Created by Chingiz on 21.03.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let networkManager = Starships.shared
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Push Me", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var labelOne: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    lazy var labelTwo: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    lazy var labelThree: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    lazy var labelFour: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    lazy var labelFive: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    lazy var labelSix: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    private func setUI() {
        view.backgroundColor = .systemTeal
        view.addSubview(button)
        view.addSubview(labelOne)
        view.addSubview(labelTwo)
        view.addSubview(labelThree)
        view.addSubview(labelFour)
        view.addSubview(labelFive)
        view.addSubview(labelSix)
        setConstraints()
    }
    
    private func setConstraints() {
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        labelOne.snp.makeConstraints { make in
            make.top.equalTo(button.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(12)
        }
        
        labelTwo.snp.makeConstraints { make in
            make.top.equalTo(labelOne.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(12)
        }
        
        labelThree.snp.makeConstraints { make in
            make.top.equalTo(labelTwo.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(12)
        }
        
        labelFour.snp.makeConstraints { make in
            make.top.equalTo(labelThree.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(12)
        }
        
        labelFive.snp.makeConstraints { make in
            make.top.equalTo(labelFour.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(12)
        }
        
        labelSix.snp.makeConstraints { make in
            make.top.equalTo(labelFive.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(12)
        }
    }
    
    @objc func buttonTapped() {
        print("Button was tapped")
        networkManager.getCharacters { starships in
            
                if let starships = starships {
                   
                    self.labelOne.text = starships.results[1].name
                    self.labelTwo.text = starships.results[2].model
                    self.labelThree.text = starships.results[3].max_atmosphering_speed
                    
                    
                    self.labelFour.text = starships.results[4].name
                    self.labelFive.text = starships.results[5].model
                    self.labelSix.text = starships.results[6].max_atmosphering_speed
                    
                }
        }
    }
}



