//
//  ViewController.swift
//  Project 1
//
//  Created by Cristobal Elizarraraz on 2/11/25.
//

import UIKit

class PhotoViewController: UIViewController {
    @IBOutlet weak var photoView: UIImageView!
    
    var task: Task!

    override func viewDidLoad() {
        super.viewDidLoad()
        photoView.image=task.image
        // Do any additional setup after loading the view.
    }


}

