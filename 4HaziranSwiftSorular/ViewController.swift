//
//  ViewController.swift
//  4HaziranSwiftSorular
//
//  Created by Melih Gökmen on 11.06.2022.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var names : [String] = ["Çağatay", "Ece", "Mert", "Aykut", "Aslı", "Can", "Berkay","Ece" ]

    print(names.count)
    names.append("Melike")
    print(names)
    print(names.count)
    names.reverse()
    print(names)
    let ekle = names.insert("Steve", at: 1)
    print(ekle)
    //let remove = names.removeAll()
    //print(remove)
    let removed = names.remove(at: 1)
    print(removed)
    let firstName = names.first
    print(firstName)
    let lastName = names.last
    print(lastName)
    let filterberkay = names.contains { $0 == "Berkay" }
    print(filterberkay)
    let filter = names.filter { $0 == "Berkay" }
    print(filter)
    let shuffled = names.shuffled()
    print(shuffled)



    //4HAZİRAN
    //Ekrana 10 kez “Hello World!” yazdır.
    for i in 1...10 {
        print("hello world!")
    }

    //43 sayısına kadar olan TEK sayıları print et
    for tekSayı in 1...43{
        if (tekSayı % 2) != 0 {
            print(tekSayı)
        }
        else{
            
        }
    }

    //Dışarıdan aldığı metnin soluna “TR-” ekleyip döndüren metot
    for tekSayı in 1...43{
        if (tekSayı % 2) != 0 {
            print("TR\(tekSayı)")
        }
        else{
            
        }
    }


    //4)    Dışarıdan girilen bir sayının rakamları toplamını bulan program
    func digitSum(_ n : Int) -> Int {
        var n = n
        var sum = 0
        while n > 0 {
            sum += n % 10
            n /= 10
        }
        return sum
    }
    print(digitSum(8485))


    //5)    *** Doğduğum günden bugüne kaç gün geçtiğini gösteren metot? Dışarıdan date alacak int dönüyor.
    func timeLeft(futureDate: String)-> [Int]{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        let date = dateFormatter.date(from: futureDate )
        
        let calendar = Calendar(identifier: .gregorian)
        let components = calendar.dateComponents([.day, .hour, .minute, .second], from: date ?? Date() , to: Date())
        let arr: [Int] = [components.day ?? 0 , components.hour ?? 0, components.minute ?? 0, components.second ?? 0]
        return arr
    }
    var timeLeftArr: [Int] = []
    timeLeftArr = timeLeft(futureDate: "1992-08-21'T'00:00:00'Z'")
    print(timeLeftArr)



    //7)    Çarpma işlemini kullanmadan dışarıdan girilen iki sayının çarpımını bulan metot.
    func mult(x: Int, y: Int) -> Int {
        if x == 0 || y == 0 {
            return 0
        }
        
        return x + mult(x: x, y: y - 1)
    }

    print(mult(x: 5, y: 20))



    //6)    Dışarıdan girilen üç sayıdan en büyüğünü bulan metot.
    func findMax(x: Int, y: Int) -> Int{
        return x > y ? x : y
    }

    func findMaxThree(first: Int, second: Int, third: Int) -> Int{
        let maxFirstTwo = findMax(x: first, y: second)
        let maxLastTwo = findMax(x: second, y: third)
        
        return findMax(x: maxFirstTwo, y: maxLastTwo)
    }


    print(findMaxThree(first: 1, second: 91, third: 90))



    //8)    Dışarıdan bir metin alan aldığı metnin sadece ilk üç harfini döndüren fonksiyon.
    let str:String = "Melih Gökmen"
    let result = str.prefix(3)
    print(result)

    //Dışarıdan bir isim dizisi alan ve isimleri tek tek print eden fonksiyon
    var isimler : [String] = ["Çağatay", "Ece", "Mert", "Aykut", "Aslı", "Can", "Berkay","Ece" ]
    for isimler in isimler {
        print("\(isimler)", terminator: "\n")
    }


    //Dışarıdan bir isim dizisi alan, ismin uzunluğu 4 den büyükse print eden fonksiyon.








    //Dışarıdan bir metin alan ve aldığı metinde kaç adet "e" harfi olduğunu söyleyen fonksiyon.







    // Dışarıdan bir metin alan aldığı metnin sadece ilk harfini büyük diğer harflerini küçük yazacak şekilde yeni bir metin oluşturarak dönen fonksiyon.

    
    
}

