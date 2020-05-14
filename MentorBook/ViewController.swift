//
//  ViewController.swift
//  MentorBook
//
//  Created by 竹村明日香 on 2020/05/15.
//  Copyright © 2020 Takemura assan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLavel: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.JPG", course: "WebS,WebD"))
        
        setUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLavel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        if(index <= 2 && index > 0){
            index = index - 1
        } else {
            index = 2
        }
        setUI()
    }
    
    @IBAction func tugi(){
        if index < 2{
            index = index + 1
        } else {
            index = 0
        }
        
        setUI()
    }
    
    
}

