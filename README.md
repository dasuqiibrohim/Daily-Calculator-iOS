# Daily Calculator iOS
Proyek Daily Calculator iOS yang dibuat dalam swift untuk mengimplementasikan AutoLayout, Extensions, SubViews, dan Side Menu.

# Getting Started
Daily Calculator berisi implementasi Tata Letak Otomatis. Tata Letak Otomatis memudahkan untuk mendukung berbagai ukuran layar di aplikasi Anda. Tata Letak Otomatis pada swift, Membuat aplikasi jadi terlihat bagus dalam orientasi apa pun di berbagai perangkat. 

```
if you love this Daily Calculator, give us a star, you will be an encouragement in our lives.
```

# Designer
Contributors names and contact info
* Stephanie Ogbudu
* [Uplabs](https://www.uplabs.com/posts/calculator-app-90e0923d-c26b-4f19-9320-4e716271c868)

# Daily Calculator Features
* Stack View
* Shadow

  Menggunakan Shadow dengan settingan pada extension UIButton:
  ```
  extension UIButton {
    open override func awakeFromNib() {
        layer.cornerRadius = 8
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowOpacity = 0.5
    }
  }
  ```
  ![Simulator Screen Shot - iPhone 8 - 2021-03-26 at 10 28 1](https://user-images.githubusercontent.com/73922909/112573823-a21ef400-8e1f-11eb-9b57-1d30a97cf582.jpg)
  
* Side Menu

  ![Simulator Screen Shot - iPhone 8 - 2021-03-26 at 10 42 1](https://user-images.githubusercontent.com/73922909/112574023-080b7b80-8e20-11eb-8272-2b2825461aac.jpg)

# Libraries & Tools Used
[SideMenu](https://github.com/jonkykong/SideMenu)

# About Us
I am [Ibrohim Dasuqi](https://github.com/dasuqiibrohim) from indonesia is a Software Developer focused on mobile iOS Developers. If you are interested in working with me, you can contact me via [Linkedin](https://www.linkedin.com/in/dasuqiibrohim/).

# Conclusion
This is a Daily Calculator our version, if you liked my work don't forget to give a ⭐ star the repo to show your support. if you want to lend a hand with the Daily Calculator then please feel free to submit an issue and/or pull request. :)
