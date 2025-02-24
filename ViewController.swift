//
//  ViewController.swift
//  NavegationAvancado
//
//  Created by Mikael Mendonca on 22/07/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
    

    @IBAction func tappedgoScreenButton(_ sender: UIButton) {
        
//        MARK: transitando dados entre telas
        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(identifier: "Tela02VC") { coder  in return Tela02VC(coder: coder, name: self.nameTextField.text ?? "")
            
        }
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}

