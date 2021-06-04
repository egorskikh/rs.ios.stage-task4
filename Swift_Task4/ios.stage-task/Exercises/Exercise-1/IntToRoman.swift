import Foundation

/*
 Я думаю это можно решить лучше, но пока не знаю как.
 */

public extension Int {
    
    var roman: String? {
        get {
            return self.turnIntoRoman()
        }
    }
    
    private func turnIntoRoman() -> String? {
        
        var inputInt = self
        
        if inputInt == 0 || inputInt < 0 {
            return nil
        }
        
        var returnString = ""
        
        while (inputInt >= 1000) {
            returnString += "M";
            inputInt -= 1000
        }
        while (inputInt >= 900) {
            returnString += "CM";
            inputInt -= 900;
        }
        while (inputInt >= 500) {
            returnString += "D";
            inputInt -= 500;
        }
        while (inputInt >= 400) {
            returnString += "CD";
            inputInt -= 400;
        }
        while (inputInt >= 100) {
            returnString += "C";
            inputInt -= 100;
        }
        while (inputInt >= 90) {
            returnString += "XC";
            inputInt -= 90;
        }
        while (inputInt >= 50) {
            returnString += "L";
            inputInt -= 50;
        }
        while (inputInt >= 40) {
            returnString += "XL";
            inputInt -= 40;
        }
        while (inputInt >= 10) {
            returnString += "X";
            inputInt -= 10;
        }
        while (inputInt >= 9) {
            returnString += "IX";
            inputInt -= 9;
        }
        while (inputInt >= 5) {
            returnString += "V";
            inputInt -= 5;
        }
        while (inputInt >= 4) {
            returnString += "IV";
            inputInt -= 4;
        }
        while (inputInt >= 1) {
            returnString += "I";
            inputInt -= 1;
        }
        
        return returnString
    }
    
}
