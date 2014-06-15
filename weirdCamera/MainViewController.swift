
import UIKit

class MainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePickerController = UIImagePickerController()
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func libraryButtonTouched(sender : UIButton) {
        self.displayImagePicker()
    }
    
    func displayImagePicker() {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            self.imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            self.imagePickerController.allowsImageEditing = false
            self.imagePickerController.delegate = self
            
            self.presentViewController(self.imagePickerController, animated: true, completion: nil)
        }
    }
    
    
//    pragma mark - UIImagePickerController Delegate
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!) {
        println("didFinishPickingImage : \(image.size)")
        
        self.imagePickerController.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController!) {
        println("imagePickerDidCancel")
        
        self.imagePickerController.dismissViewControllerAnimated(true, completion: nil)
    }
    
}