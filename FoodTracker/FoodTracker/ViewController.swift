//
//  ViewController.swift
//  FoodTracker
//
//  Created by Hemareddy Halli on 4/28/19.
//  Copyright © 2019 Apex Capital Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ratingButton1: UIButton!
    @IBOutlet weak var mTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ratingButton2: UIButton!
    @IBOutlet weak var ratingButton3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        let buttonTag = sender.tag
        switch buttonTag
        {
            case 0:
                ratingButton1.backgroundColor = UIColor.lightGray
            default: break
        }
        
    }
    
    @IBAction func selectPhotFromLibrary(_ sender: UITapGestureRecognizer) {
        
        let pickerController = UIImagePickerController()
        pickerController.sourceType = .photoLibrary
        pickerController.delegate = self
        present(pickerController, animated: true, completion: nil)
    }

    //MARK : UIImagePickerController delegates
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        guard let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            print("Image selection end-up with error")
            return
        }
        imageView.image = originalImage
        dismiss(animated: true, completion: nil)
    }
    
     func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
     {
        dismiss(animated: true, completion: nil)
    }
    
}

