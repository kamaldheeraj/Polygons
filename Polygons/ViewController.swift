//
//  ViewController.swift
//  Polygons
//
//  Created by Navya Rayala on 9/14/15.
//  Copyright (c) 2015 Kamal Dandamudi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sidesLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var polygon = Polygon()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}