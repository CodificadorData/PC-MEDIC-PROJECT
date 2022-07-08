
import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var correoTxt: UITextField!

    @IBOutlet weak var passwordTxt: UITextField!
    

    
    @IBAction func signupButton(_ sender: UIButton) {
        
        if let correo = correoTxt.text, let password = passwordTxt.text {
            
            Auth.auth().createUser(withEmail: correo, password: password) { result, error in
                
                if let result = result , error == nil {
                
                    self.navigationController?.pushViewController(HomeViewController(), animated: true)
                
                 }
                
                else {
                    let alertController = UIAlertController(title: "Error", message: "Error al registrar", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar ", style: .default))
                    self.present(alertController, animated: true, completion: nil)
                    }
                }
        }
    
    }
    
    
   @IBAction func registrarButton(_ sender: Any) {
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
           
    }


}

/**


 let accountStoryBoard = UIStoryboard(name: "Account", bundle: nil)
 
 guard let accountViewController = accountStoryBoard.instantiateViewController(withIdentifier: "AccountViewController") as? AccountViewController else {
                     return
                 }
 self.navigationController?.pushViewController(accountViewController, animated:true)


 */
