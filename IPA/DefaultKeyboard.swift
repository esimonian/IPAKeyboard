//
//  DefaultKeyboard.swift
//  TransliteratingKeyboard
//
//  Created by Alexei Baboulevitch on 7/10/14.
//  Copyright (c) 2014 Alexei Baboulevitch ("Archagon"). All rights reserved.
//


func defaultKeyboard() -> Keyboard {
    let defaultKeyboard = Keyboard()
    
    //var longPresses = generatedGetLongPresses();
    
    for key in ["ɑ", "æ", "ɐ", "ɑ̃", "β", "ɓ", "ʙ", "ɕ", "ç", "ð"] {
        let keyModel = Key(.character)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 0, page: 0)
    }
    
    for key in ["d͡ʒ", "ɖ", "ɗ", "ə", "ɚ", "ɵ", "ɘ", "ɛ", "ɜ", "ɝ"] {
        let keyModel = Key(.character)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 1, page: 0)
    }
    
    for key in ["ɛ̃", "ɞ", "ɠ", "ɢ", "ʛ", "ɥ", "ɦ", "ħ", "ɧ"] {
        let keyModel = Key(.character)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 2, page: 0)
    }
    
    let backspace = Key(.backspace)
    defaultKeyboard.addKey(backspace, row: 2, page: 0)
    
    let keyModeChangeNumbers = Key(.modeChange)
    keyModeChangeNumbers.uppercaseKeyCap = "123"
    keyModeChangeNumbers.toMode = 1
    defaultKeyboard.addKey(keyModeChangeNumbers, row: 3, page: 0)
    
    let keyboardChange = Key(.keyboardChange)
    defaultKeyboard.addKey(keyboardChange, row: 3, page: 0)
    
    let space = Key(.space)
    space.uppercaseKeyCap = "space"
    space.uppercaseOutput = " "
    space.lowercaseOutput = " "
    defaultKeyboard.addKey(space, row: 3, page: 0)
    
    let returnKey = Key(.returnKey)
    returnKey.uppercaseKeyCap = "return"
    returnKey.uppercaseOutput = "\n"
    returnKey.lowercaseOutput = "\n"
    defaultKeyboard.addKey(returnKey, row: 3, page: 0)
    
    for key in ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"] {
        let keyModel = Key(.specialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 0, page: 1)
    }
    
    for key in ["-", "/", ":", ";", "(", ")", "$", "&", "@", "\""] {
        let keyModel = Key(.specialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 1, page: 1)
    }
    
    let keyModeChangeSpecialCharacters = Key(.modeChange)
    keyModeChangeSpecialCharacters.uppercaseKeyCap = "#+="
    keyModeChangeSpecialCharacters.toMode = 2
    defaultKeyboard.addKey(keyModeChangeSpecialCharacters, row: 2, page: 1)
    
    for key in [".", ",", "?", "!", "'"] {
        let keyModel = Key(.specialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 2, page: 1)
    }
    
    defaultKeyboard.addKey(Key(backspace), row: 2, page: 1)
    
    let keyModeChangeLetters = Key(.modeChange)
    keyModeChangeLetters.uppercaseKeyCap = "ABC"
    keyModeChangeLetters.toMode = 0
    defaultKeyboard.addKey(keyModeChangeLetters, row: 3, page: 1)
    
    defaultKeyboard.addKey(Key(keyboardChange), row: 3, page: 1)

    defaultKeyboard.addKey(Key(space), row: 3, page: 1)
    
    defaultKeyboard.addKey(Key(returnKey), row: 3, page: 1)
    
    for key in ["[", "]", "{", "}", "#", "%", "^", "*", "+", "="] {
        let keyModel = Key(.specialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 0, page: 2)
    }
    
    for key in ["_", "\\", "|", "~", "<", ">", "€", "£", "¥", "•"] {
        let keyModel = Key(.specialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 1, page: 2)
    }
    
    defaultKeyboard.addKey(Key(keyModeChangeNumbers), row: 2, page: 2)
    
    for key in [".", ",", "?", "!", "'"] {
        let keyModel = Key(.specialCharacter)
        keyModel.setLetter(key)
        defaultKeyboard.addKey(keyModel, row: 2, page: 2)
    }
    
    defaultKeyboard.addKey(Key(backspace), row: 2, page: 2)
    
    defaultKeyboard.addKey(Key(keyModeChangeLetters), row: 3, page: 2)
    
    defaultKeyboard.addKey(Key(keyboardChange), row: 3, page: 2)

    defaultKeyboard.addKey(Key(space), row: 3, page: 2)
    
    defaultKeyboard.addKey(Key(returnKey), row: 3, page: 2)
    
    
    
    return defaultKeyboard
}

func generatedGetLongPresses() -> [String: [String]] {
    var lps = [String: [String]]()
    lps["k"] = ["ǩ"]
    return lps
}
