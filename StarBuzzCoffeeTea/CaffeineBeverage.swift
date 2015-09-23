//
//  CaffeineBeverage.swift
//  StarBuzzCoffeeTea
//
//  Created by Homma Takushi on 2015/09/23.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// 飲み物
class CaffeinBeverage {
  /**
  イニシャライザ
  
  - returns: 飲み物
  */
  private init() {
    
    if (self.dynamicType === CaffeinBeverage.self) {
      fatalError("Abstract Class")
    }
  }

  /**
  レシピ
  */
  final func prepareRecipe() {
    self.boilWater()
    self.brew()
    self.pourInCup()
    self.addCondiments()
  }
  
  /**
  飲み物を淹れます
  */
  private func brew() {
    fatalError("Abstract Method")
  }
  
  /**
  トッピングを加えます
  */
  private func addCondiments() {
    fatalError("Abstract Method")
  }

  /**
  お湯を沸かします
  */
  func boilWater() {
    print("お湯を沸かします")
  }
  
  /**
  カップに注ぎます
  */
  func pourInCup(){
    print("カップに注ぎます")
  }
}

/// コーヒー
class Coffee : CaffeinBeverage {
  /**
  イニシャライザ
  
  - returns: コーヒー
  */
  override init() {
  }
  
  /**
  ドリップします
  */
  private override func brew() {
    print("フィルタでコーヒーをドリップします")
  }
  
  /**
  砂糖とミルクを追加します
  */
  private override func addCondiments() {
    print("砂糖とミルクを追加します")
  }
}

/// 紅茶
class Tea : CaffeinBeverage {
  /**
  イニシャライザ
  
  - returns: 紅茶
  */
  override init() {
  }
  
  /**
  紅茶を浸します
  */
  private override func brew() {
    print("紅茶を浸します")
  }
  
  /**
  レモンを追加します
  */
  private override func addCondiments() {
    print("レモンを追加します")
  }
}