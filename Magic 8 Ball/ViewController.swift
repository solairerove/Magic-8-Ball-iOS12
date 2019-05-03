//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nikita Krivitski on 5/3/19.
//  Copyright © 2019 Nikita Krivitski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var ballImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeBallImageView()
    }

    @IBAction func askButtonEmit(_ sender: UIButton) {
        changeBallImageView()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBallImageView()
    }

    func changeBallImageView() {
        let ballImageViewRandomIndex = getRandomIndex(arraySize: ballArray.count)

        ballImageView.image = UIImage(named: ballArray[ballImageViewRandomIndex])
    }

    func getRandomIndex(arraySize: Int) -> Int {
        return Int.random(in: 0 ... arraySize - 1)
    }
}
