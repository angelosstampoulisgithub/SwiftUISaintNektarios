//
//  PageViewController.swift
//  SwiftUISaintNektarios
//
//  Created by Angelos Staboulis on 14/11/24.
//

import Foundation
import UIKit
class PageViewController:UIPageViewController,UIPageViewControllerDataSource {
    var index:Int=0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        let startingViewController:ViewController = indexViewController(index: 0) as! ViewController
        let viewControllers = [startingViewController]
        self.setViewControllers(viewControllers, direction: NavigationDirection.forward, animated: true, completion: nil)
        
        // Do any additional setup after loading the view.
    }
    func indexViewController(index:Int) -> UIViewController{
        let pageContentViewController = ViewController()
        pageContentViewController.pageIndex = index
        return pageContentViewController;
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if (index < 10){
            index = index + 1

        }else{
            index = 0
        }
        return  indexViewController(index: index)
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if (index == 0){
            index = 10
        }else{
            index = index - 1
        }
        return  indexViewController(index: index)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

