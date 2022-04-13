//
//  Launch.swift
//  FastApp
//
//  Created by nayhan on 13.04.2022.
//

import UIKit
import TinyConstraints

class Launch: UIViewController {
    lazy var logo : UILabel = {
       let label = UILabel()
        label.text = "Fast App"
        label.font = UIFont.systemFont(ofSize: 44)
        label.textColor = UIColor.white
        label.textAlignment = .center
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setLayout()
        
    }
    func setLayout(){
        
        view.backgroundColor  = .black
        
        view.addSubview(logo)
        logo.centerInSuperview()
        logo.width(view.frame.width)
        logo.height(200)
        
    }
    

}
extension Launch {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if navigationController != nil{
            navigationController?.setNavigationBarHidden(true, animated: true)
        }
    }
}
