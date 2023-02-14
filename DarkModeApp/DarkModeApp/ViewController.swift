//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Nazlı Bekeç on 14.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Kullanıcı telefon modu ne olursa olsun burada seçtiğimiz ile çalıştırır.
        // overrideUserInterfaceStyle = .dark
        
        // Button rengini default:Blue seçtiğimden ilk açıldığında blue ile gelmemesi için aynı işlemi burada yaptırdım.
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.black
        }
    }
    
    // Uygulama açıkken telefonun dark modu değişmesi ile uygulama modunuda değiştiren fonksiyon.
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
       let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.black
        }
    }
}

// Eğitimde kullanıcı modu ne yaparsa yapsın app in tamamında benim seçtiğim modda çalışmasını istiyorsam "User interface Style" seçip dark/light seçiyorum.
// Fakat bende çıkmadı. Bu sebeple "Appearance" şeklinde aratıp value ise dark/light olarak ayarlayınca aynı aksiyon aldım.
