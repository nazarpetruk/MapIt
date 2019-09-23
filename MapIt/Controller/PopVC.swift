//
//  PopVC.swift
//  MapIt
//
//  Created by Nazar Petruk on 23/09/2019.
//  Copyright © 2019 Nazar Petruk. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
//MARK: IBOoutlets
    @IBOutlet weak var popImageView: UIImageView!
//MARK: Variables
    var passedImg : UIImage!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImg
        addDoubleTap()
    }
    
    func initData(forImage image: UIImage){
        self.passedImg = image
       }
    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDblTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    @objc func screenWasDblTapped(){
        dismiss(animated: true, completion: nil)
    }
}
