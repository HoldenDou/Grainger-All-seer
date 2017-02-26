//
//  ViewController.swift
//  Grainger All-seer
//
//  Created by dwd on 2/25/17.
//  Copyright © 2017 HoldenDou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var table1: UIImageView!
    
    var tableMapStr: String = ""
    var deskStatus = [Int]()
    
    @IBAction func refresh(_ sender: UIButton) {
        let myurl = NSURL(string: "http://10.192.90.11:8080/api")
        let request = NSMutableURLRequest(url: myurl as! URL)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in
            
            // Check for error
            if error != nil
            {
                print("error=\(error)")
                return
            }
            
            do {
                if let convertedJsonIntoDict = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary {
                    print(convertedJsonIntoDict)
                    
                    self.tableMapStr = (convertedJsonIntoDict["message"] as? String)!
                    
                    self.tableMapStr = self.tableMapStr.trimmingCharacters(in: .whitespacesAndNewlines)
                    print("desk status: \(self.tableMapStr)")
                    let preDeskStatus = self.tableMapStr.components(separatedBy: " ")
                    
                    self.deskStatus = [Int]()
                    for str in preDeskStatus {
                        if let intValue = Int(str) {
                            self.deskStatus.append(intValue)
                        }
                    }
                    print("deskStatus: \(self.deskStatus)")
                    DispatchQueue.main.async {
                        self.table1.image = self.myImageChooser[self.deskStatus[0]]
                    }
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    let myImageChooser: [Int: UIImage] = imageChooser().getImgDict();
    
    @IBOutlet weak var uploadedImage: UIImageView!
    
    let imagePicker = UIImagePickerController();
    
    @IBAction func uploadImageButtonTapped(_ sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "timber_bkgd")!)
        imagePicker.delegate = self
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            uploadedImage.contentMode = .scaleAspectFit
            uploadedImage.image = pickedImage
        }
        dismiss(animated: true, completion: nil) // Could add a closure here.
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
