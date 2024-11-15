//
//  CandleView.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import Foundation
import UIKit
class CandleView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupView()
        self.setNeedsLayout()
    }
    private func setupView() {
        self.backgroundColor = UIColor(red: 26/255.0, green: 25/255.0, blue: 25/255.0, alpha: 1.0)
        animateBackground()
        let height = UIScreen.main.bounds.size.height - 445
        let candleBody = UIView(frame: CGRect(x: 160, y: 300, width: 100, height: height))
        candleBody.backgroundColor = gradientColor()
        self.addSubview(candleBody)
        
        let candleFlames = UIView(frame: CGRect(x: 35, y: -120, width: 30, height: 100))
        candleFlames.backgroundColor = flameGradientColor()
        candleFlames.layer.cornerRadius = 15
        candleBody.addSubview(candleFlames)

        animateFlames(candleFlames)
    }
    
    private func gradientColor() -> UIColor {
        return UIColor(red: 209/255.0, green: 158/255.0, blue: 64/255.0, alpha: 1.0)
    }
    
    private func stickGradientColor() -> UIColor {
        return UIColor(red: 7/255.0, green: 7/255.0, blue: 204/255.0, alpha: 1.0)
    }
    
    private func flameGradientColor() -> UIColor {
        return UIColor(red: 224/255.0, green: 216/255.0, blue: 216/255.0, alpha: 1.0)
    }
    
    private func animateBackground() {
        UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.backgroundColor = UIColor.black
        }, completion: nil)
    }
    
    private func animateFlames(_ flames: UIView) {
        UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat, .autoreverse], animations: {
            flames.frame = CGRect(x: 35, y: -120, width: 30, height: 100)
            flames.transform = CGAffineTransform(translationX: 5.0, y: 0.0)
            

        }) { finished in
            flames.transform = .identity
        }
    }
}
