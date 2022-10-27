//
//  main.swift
//  PracticeAtm
//
//  Created by trung on 26/10/2022.
//

import Foundation

var atm500: Int = 8
var atm200: Int = 8
var atm100: Int = 8
var atm50: Int = 8

var surplus: Int
var surplus1: Int
var surplus2: Int


var getMoney: Int

print("Nhap so tien can rut: ")
getMoney = Int(readLine()!)!

var sum: Int

sum = (atm500 * 500000) + (atm200 * 200000) + (atm100 * 100000) + (atm50 * 50000)

if getMoney > sum {
    print("ATM khong du tien")
} else if getMoney % 50000 != 0 {
    print("So tien nhap vao phai la boi so cua 50")
} else {
    if getMoney % 500000 == 0 && getMoney / 500000 <= atm500 {

                print("Rút tiền thành công Số tờ 500k: \((getMoney / 500000))")
    } else {
        surplus = getMoney % 500000;
        
        if (surplus % 200000 == 0) && (getMoney / 500000 > atm500) && ((getMoney / 200000) <= atm200) {
            print("Rút tiền thành công Số tờ 500k  \(getMoney / 500000) Số tờ 200k \(surplus / 200000)")
        } else {
            
            surplus1 = surplus % 200000;
            
            if ((surplus1 % 100000 == 0) && ((getMoney / 200000) > atm200) && ((getMoney / 100000) <= atm100)) {
                print("Rút tiền thành công Số tờ 500k: \(getMoney / 500000) Số tờ 200k: \(surplus / 200000) Số tờ 100k: \(surplus1 / 100000)")
            } else {
                
                surplus2 = surplus1 % 100000;
                
                if ((surplus2 % 50000 == 0) && ((getMoney / 100000) > atm100)) {
                    print("Rút tiền thành công! Số tờ 500k: \(getMoney / 500000) Số tờ 200k: \(surplus / 200000) Số tờ 100k: \(surplus1 / 100000) Số tờ 50k: \(surplus2 / 50000)")
                }
            }
        }
    }
}

