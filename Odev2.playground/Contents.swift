
import Foundation


class Fonksiyonlar {
    
    //Celsius'u Fahrenheite çevirip döndürme
    func celsiusuFahrenheitCevirme(celsius: Double) -> Double {
        var fahrenheit: Double
        fahrenheit = (celsius * 1.8) + 32
        return fahrenheit
    }

    //Dikdörtgen Çevresi Hesaplama
    func dikdortgenCevreHesapla(kenar1: Int, kenar2: Int) -> Int {
        let cevre = (kenar1 + kenar2) * 2
        return cevre
    }
  
    
    //Faktoriyel Hesaplama
    func faktoriyelHesapla(sayi: Int) -> Int {
        var sonuc = 1
        if sayi == 0 {
            return 1
            } else {
            for i in 1...sayi {
            sonuc *= i
                }
            }
            return sonuc
        }
    
        

    
    // Stringde karakterden kaç tane olduğunu hesaplama
  func stringdeKacTaneVar(kelime: String, karakter: Character) -> Int {
        var sonuc = 0
        for letter in kelime {
            if letter == karakter {
                sonuc += 1
            }
        }
        return sonuc
    }
    
    //İç Açı Hesaplama
    func icAciHesapla(kenarSayisi: Int) -> Int {
        let mesaj = "Bu bir üçgen değil.😢"
        let hataMesaji = (mesaj as NSString).integerValue
        
        if kenarSayisi == 3 {
            let icAcisi = (kenarSayisi - 2) * 180
            return icAcisi
        } else {
            return Int(hataMesaji)
        }
        
    }
    
    //Maaş hesaplama
    func maasHesapla(gunSayi: Int) -> String {
        let normalUcret = 10
        let mesaiUcret = 20
        let toplamCalismaSaati = gunSayi * 8
        let toplamTabanMaas = toplamCalismaSaati * normalUcret
       
        if toplamCalismaSaati < 160 {
            return  "\(toplamTabanMaas) TL"
        } else {
            let mesaiMaas = ((toplamCalismaSaati - 160) * mesaiUcret) + toplamTabanMaas
            return "\(mesaiMaas) TL"
        }
    }
        
        //Kota Ücreti
        func kotaUcretiHesapla(gb: Int) -> String {
            let tabanFiyat = 100
            if gb <= 50 {
                return "\(tabanFiyat) TL"
            } else {
                let kotaAsimliFiyat = ((gb - 50) * 4) + tabanFiyat
                return "\(kotaAsimliFiyat) TL"
            }
        }
    }


// Fonksiyonların Çalıştırılması
let p = Fonksiyonlar()
p.celsiusuFahrenheitCevirme(celsius: 40)

p.dikdortgenCevreHesapla(kenar1: 76, kenar2: 80)
    
p.faktoriyelHesapla(sayi: 9)

p.stringdeKacTaneVar(kelime: "applemacbookpro", karakter: "o")

p.icAciHesapla(kenarSayisi: 3)

p.maasHesapla(gunSayi: 42)

p.kotaUcretiHesapla(gb: 70)

