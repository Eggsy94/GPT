//
//  Test.swift
//  ProjectDescriptionHelpers
//
//  Created by Eggsy on 2023/03/17.
//

import Foundation
import XCTest

import Utilities_ios

class AppSettingTests: XCTestCase {
  let userDefaultsSuiteName: String = "AppSettingTests"
  
  func testColorMode() {
    let testUserDefaults = UserDefaults(suiteName: userDefaultsSuiteName)!
    testUserDefaults.removePersistentDomain(forName: userDefaultsSuiteName)
    
    let appSetting = AppSetting.shared
    appSetting.setUserDefaults(userDefaults: testUserDefaults)
    
    XCTAssertEqual(appSetting.colorMode, ColorMode.defaultColorMode())
    
    appSetting.colorMode = .dark
    XCTAssertEqual(appSetting.colorMode, .dark)
    
    appSetting.colorMode = .light
    XCTAssertEqual(appSetting.colorMode, .light)
  }
}
