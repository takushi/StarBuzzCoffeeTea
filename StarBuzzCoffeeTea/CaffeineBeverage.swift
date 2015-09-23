//
//  CaffeineBeverage.swift
//  StarBuzzCoffeeTea
//
//  Created by Homma Takushi on 2015/09/23.
//  Copyright © 2015年 mfmf.me. All rights reserved.
//

import Foundation

/// 飲み物
class CaffeinBeverageWithHook {
  /**
  イニシャライザ
  
  - returns: 飲み物
  */
  private init() {
    
    if (self.dynamicType === CaffeinBeverageWithHook.self) {
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
    if self.customerWantsCondiments() {
      self.addCondiments()
    }
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
  
  /**
  お客にトッピングが必要か尋ねます
  */
  private func customerWantsCondiments() -> Bool {
    return true
  }
}

/// コーヒー
class Coffee : CaffeinBeverageWithHook {
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

  /**
  お客にトッピングが必要か尋ねます
  */
  private override func customerWantsCondiments() -> Bool {
    let answer: String = self.getUserInput()
    
    if answer.lowercaseString[answer.startIndex] == "y" {
      return true
    } else {
      return false
    }
  }
  
  /**
  お客にトッピングが必要か尋ねます
  */
  private func getUserInput() -> String {
    print("コーヒーに砂糖とミルクを入れますか？ (y/n)")
    
    let input: NSFileHandle = NSFileHandle.fileHandleWithStandardInput()
    let answer: NSString? = NSString(data: input.availableData, encoding: NSUTF8StringEncoding)
    
    if let a: NSString = answer {
      return a as String
    } else {
      return "no"
    }
  }
}

/// 紅茶
class Tea : CaffeinBeverageWithHook {
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