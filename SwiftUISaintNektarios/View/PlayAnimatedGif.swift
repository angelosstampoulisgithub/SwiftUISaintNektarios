//
//  PlayAnimatedGif.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import Foundation
import UIKit
class PlayAnimatedGif:UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    func setupView(){
        guard let filename = Bundle.main.path(forResource: "candle", ofType: "gif") else{
            return
        }
        let urlFilename = URL(fileURLWithPath: filename)
        CGAnimateImageAtURLWithBlock(urlFilename as CFURL, nil) { index, image, stop in
                let headerView = UIView(frame: CGRect(x: 20, y: 0, width: 600, height: 90))
                
                let leftImage = UIImageView(image: UIImage(cgImage: image))
                leftImage.frame = CGRect(x: 90, y: 90, width: 100, height: 95)
                headerView.addSubview(leftImage)
                
                let centerImage = UIImageView(image: UIImage(named: "agios"))
                centerImage.frame = CGRect(x: 179, y: 90, width: 110, height: 95)
                headerView.addSubview(centerImage)
                
                let rightImage = UIImageView(image: UIImage(cgImage: image))
                rightImage.frame = CGRect(x: 272, y: 90, width: 100, height: 95)
                headerView.addSubview(rightImage)
                
                self.addSubview(headerView)
                headerView.translatesAutoresizingMaskIntoConstraints = false
                headerView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -225).isActive = true
                headerView.topAnchor.constraint(equalTo: self.topAnchor, constant:-50).isActive = true
        }
    }
  

}
