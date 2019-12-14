




import UIKit
@IBDesignable
class DesignableUITextField: UITextField {
    
    
    @IBInspectable var insetX: CGFloat = 6 {
         didSet {
           layoutIfNeeded()
         }
      }
      @IBInspectable var insetY: CGFloat = 6 {
         didSet {
           layoutIfNeeded()
         }
      }

      // placeholder position
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
      }

      // text position
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
      }

    // Provides left padding for images
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x = leftPadding
        
        return textRect
    }

    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }

    @IBInspectable var leftPadding: CGFloat = 0

    @IBInspectable var color: UIColor = UIColor.lightGray {
        didSet {
            updateView()
        }
    }

    func updateView() {
        if let image = leftImage {
            leftViewMode = UITextField.ViewMode.unlessEditing
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
//             Note: In order for your image to use the tint color, you have to select the image in the Assets.xcassets and change the "Render As" property to "Template Image".
            imageView.tintColor = color
            leftView = imageView
            
            
//            let view = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 15))
//
//            let imageView = UIImageView(image: image)
//            imageView.translatesAutoresizingMaskIntoConstraints = false
//            view.addSubview(imageView)
//            NSLayoutConstraint.activate([
//                imageView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 2),
//                imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//                imageView.widthAnchor.constraint(equalToConstant: 15),
//                imageView.heightAnchor.constraint(equalToConstant: 15)
//            ])
            leftViewMode = .always

        } else {
            leftViewMode = UITextField.ViewMode.never
            leftView = nil
        }

        // Placeholder text color
        attributedPlaceholder = NSAttributedString(string: placeholder != nil ?  placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: color])
    }
}
