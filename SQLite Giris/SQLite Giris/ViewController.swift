//
//  ViewController.swift
//  SQLite Giris
//
//  Created by İlker Kaya on 29.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        veritabaniKopyala()
        
        //Kisilerdao().kisiEkle(kisi_ad: "Gizmo", kisi_yas: 18)
        //Kisilerdao().kisiSil(kisi_id: 2)
        //Kisilerdao().kisiGuncelle(kisi_id: 1, kisi_ad: "Gizem", kisi_yas: 19)
        //let sonuc = Kisilerdao().kisiKontrol(kisi_ad: "Gizem")
        //print("Sonuc",sonuc)
        //let gelenliste = Kisilerdao().aramaYap(kisi_ad: "Gizem")
        
//        let kisi = Kisilerdao().kisiGetir(kisi_id: 1)
//
//        print(kisi.kisi_ad!)
        
        //let gelenveri = Kisilerdao().kisileriAlLimit()
        
        let gelenliste2 = Kisilerdao().rastgele2Kisi()
        
        
        let gelenkisiler = Kisilerdao().tumKisilerAl()
        
        for i in gelenkisiler {
            print(i.kisi_id!)
            print(i.kisi_ad!)
            print(i.kisi_yas!)
        }
        
//        for k in gelenliste {
//            print(k.kisi_id!)
//            print(k.kisi_ad!)
//            print(k.kisi_yas!)
//        }
        
//        for i in gelenveri {
//            print(i.kisi_id!)
//            print(i.kisi_ad!)
//            print(i.kisi_yas!)
//        }
        
        for i in gelenliste2 {
            print(i.kisi_id!)
            print(i.kisi_ad!)
            print(i.kisi_yas!)
        }
        
    }
    
    func veritabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "kisilergiris", ofType: ".sqlite")
        
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask,true).first!
        
        let fileManager = FileManager.default
        
        let kopyanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("kisilergiris.sqlite")
        
        if fileManager.fileExists(atPath: kopyanacakYer.path){
            print("Veritabanı zaten var kopyalamaya gerek yok")
        }else{
            do{
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyanacakYer.path)
            }catch{
                print(error)
            }
        }
        
    }


}

