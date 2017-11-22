//
//  SendingVC.swift
//  DelegateDemo
//
//  Created by Bansi Bhatt on 22/11/17.
//
//

import UIKit


    protocol DelegateExample {
        func fetchData(name : NSString)
    }



class SendingVC: UIViewController {

    @IBOutlet weak var txtField: UITextField!
    
    var delegate : DelegateExample? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func sendButtonClicked(_ sender : AnyObject){
   
        if (delegate != nil) {
            delegate?.fetchData(name: txtField.text as! NSString)
          
            dismiss(animated: true, completion: {
            })
          // self.navigationController?.popViewController(animated: true)
        }

    }
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
