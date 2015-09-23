//
//  main.swift
//  StarBuzzCoffeeTea
//  「Head First デザインパターン 8章 Template Methodパターン：アルゴリズムのカプセル化」をSwiftで実装します。
//
//  Created by Homma Takushi on 2015/09/23.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

let myTea: Tea = Tea()
myTea.prepareRecipe()

let myCoffee: Coffee = Coffee()
myCoffee.prepareRecipe()
