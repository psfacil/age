//
//  TelaLaranjaViewController.swift
//  EstudoPS
//
//  Created by Usuário Convidado on 02/06/17.
//  Copyright © 2017 Matheus. All rights reserved.
//

import UIKit

class TelaLaranjaViewController: UIViewController {
    
    @IBOutlet weak var meuTextField: UITextField!
    @IBOutlet weak var meuLblNota: UILabel!
    @IBOutlet weak var meuStepper: UIStepper!
    
    @IBAction func mudaValorNota(_ sender: Any) {
        
        meuLblNota.text = "\(Int(meuStepper.value))"
    }
    
    @IBAction func mostrarMsg(_ sender: Any) {
    
        let txtDoLbl : String = meuTextField.text!
        let  txtNota : String = meuLblNota.text!
        
        
        let alerta = UIAlertController(
            title: "MSG",
            message: "meu nome é \(txtDoLbl) minha note é \(txtNota)",
            preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func abrirTelaPorCodigo(_ sender: Any) {
        performSegue(withIdentifier: "telaLarxTelaVerm", sender: sender)
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
