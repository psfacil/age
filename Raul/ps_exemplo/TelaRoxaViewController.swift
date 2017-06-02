//
//  TelaRoxaViewController.swift
//  ps_exemplo
//
//  Created by Usuário Convidado on 02/06/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class TelaRoxaViewController: UIViewController {
    
    
    @IBOutlet weak var MeuTextField: UITextField!
    @IBOutlet weak var MeuLblNota: UILabel!
    @IBOutlet weak var MeuStepper: UIStepper!

    @IBAction func MudaValorNota(_ sender: Any) {
        
        MeuLblNota.text = "\(Int(MeuStepper.value))"
        
    }
    
    @IBAction func MostrarMensagem(_ sender: Any) {
        
        let alerta = UIAlertController(
            title: "Mensagem",
            message: "Eu \(MeuTextField.text!) Minha nota é  \(MeuStepper.value)",
            preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alerta.addAction(UIAlertAction(title: "mensagem", style: UIAlertActionStyle.default, handler: nil))
        
        present(alerta,animated: true,completion:nil)
    }
    
    
    @IBAction func AbrirTelaCodigo(_ sender: Any) {
        performSegue(withIdentifier: "TelaRoxaParaTelaVerde", sender: sender)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
