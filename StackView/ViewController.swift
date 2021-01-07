//
//  ViewController.swift
//  StackView
//
//  Created by Shogo Nobuhara on 2021/01/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let view1 = UIView()
        view1.backgroundColor = .lightGray
        let view2 = UIView()
        view2.backgroundColor = .gray
        
        let photo1 = UIImageView(image: UIImage(named: "1.jpg"))
        let photo2 = UIImageView(image: UIImage(named: "2.jpg"))
        let photo3 = UIImageView(image: UIImage(named: "3.jpg"))
        
        photo1.contentMode = .scaleAspectFill
        photo1.clipsToBounds = true
        photo2.contentMode = .scaleAspectFill
        photo2.clipsToBounds = true
        photo3.contentMode = .scaleAspectFill
        photo3.clipsToBounds = true
        
        // createStackView
        let rect = CGRect(x: 0, y:0,width: 300,height: 600)
        let stackView = UIStackView(frame: rect)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        // Add To Stack View
        stackView.addArrangedSubview(view1)
        stackView.addArrangedSubview(view2)
        stackView.addArrangedSubview(photo1)
        stackView.addArrangedSubview(photo2)
        stackView.addArrangedSubview(photo3)
        
        stackView.center = self.view.center
        self.view.addSubview(stackView)
        
    }


}

