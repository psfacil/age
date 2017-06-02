//
//  TelaVerdeViewController.swift
//  EstudoPS
//
//  Created by Usuário Convidado on 02/06/17.
//  Copyright © 2017 Matheus. All rights reserved.
//

import UIKit

class TelaVerdeViewController: UIViewController {
    
    @IBOutlet weak var meuWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let t = segue.destination as! TelaRoxaViewController
        t.txtDoLbl = "Txt passado da tela verde pra roxa"
    }
}
