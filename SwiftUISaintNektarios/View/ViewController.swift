//
//  ViewController.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import Foundation
import UIKit
class ViewController: UIViewController {
    var mainImageView =  UIImageView()
    var imageArray:[UIImage] = []
    var pageIndex:Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let agios1 = UIImage(named: "agios1") else{
            return
        }
        guard let agios2 = UIImage(named: "agios2") else{
            return
        }
        guard let agios3 = UIImage(named: "agios3") else{
            return
        }
        guard let agios4 = UIImage(named: "agios4") else{
            return
        }
        guard let agios5 = UIImage(named: "agios5") else{
            return
        }
        guard let agios6 = UIImage(named: "agios6") else{
            return
        }
        guard let agios7 = UIImage(named: "agios7") else{
            return
        }
        guard let agios8 = UIImage(named: "agios8") else{
            return
        }
        guard let agios9 = UIImage(named: "agios9") else{
            return
        }
        guard let agios10 = UIImage(named: "agios9") else{
            return
        }
        guard let agios11 = UIImage(named: "agios10") else{
            return
        }
        imageArray.append(agios1)
        imageArray.append(agios2)
        imageArray.append(agios3)
        imageArray.append(agios4)
        imageArray.append(agios5)
        imageArray.append(agios6)
        imageArray.append(agios7)
        imageArray.append(agios8)
        imageArray.append(agios9)
        imageArray.append(agios10)
        imageArray.append(agios11)
        let width = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height - 210
        mainImageView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        mainImageView.image = imageArray[pageIndex]
        self.view.addSubview(mainImageView)
        // Do any additional setup after loading the view.
    }
    

}

