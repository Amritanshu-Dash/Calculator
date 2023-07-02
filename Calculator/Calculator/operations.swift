//
//  operations.swift
//  Calculator
//
//  Created by Amritanshu Dash on 02/07/23.
//

import Foundation

var operand = 0.00 //stores the operand value or the first value
var result = 0.00  //stores the resultant value
var Operator = ""  //stores which type of operation to be done +,-,*,/,%
var inputter = ""  //stores current input value
var flag = 0       //stores flag value need to traverse in between the numbers and operand....

func input( _ text:String) -> String{
    
    if((text >= "0" && text <= "9") || (text == ".")){
        
        inputter = inputter + text
        if(operand == 0.00){
            flag = 1
        }
        else{
            flag = 3
        }
        return inputter
    }
    
    else if( (text == "+" || text == "-" || text == "*" || text == "/" || text == "%")  && (inputter != "")){
        
        if(operand != 0.00){
            flag = 2
            Operator = text
        }
        else{
            operand = Double(inputter)!
            Operator = text
            flag = 2
            inputter = ""
        }
        return Operator
    }
    
    else if(text == "="){
        
        switch Operator{
            
            case "+":
                result = operand + Double(inputter)!
                inputter = ""
                operand = 0.00
                flag = 1
                Operator = ""
                return String(result)
            
            case "-":
                result = operand - Double(inputter)!
                inputter = ""
                operand = 0.00
                flag = 1
                Operator = ""
                return String(result)
            
            case "*":
                result = operand * Double(inputter)!
                inputter = ""
                operand = 0.00
                flag = 1
                Operator = ""
                return String(result)
            
            case "/":
                result = operand / Double(inputter)!
                inputter = ""
                operand = 0.00
                flag = 1
                Operator = ""
                return String(result)
            
            case "%":
                result = (operand/100) * Double(inputter)!
                inputter = ""
                operand = 0.00
                flag = 1
                Operator = ""
                return String(result)
            
            default:
                print("Error")
                break
        }
        return String(result)
    }
    else if(text == "AC"){
        operand = 0.00
        result = 0.00
        Operator = ""
        inputter = ""
        flag = 0
    }
    
    else if (text == "clear"){
        
        if(text == "+" || text == "-" || text == "*" || text == "/" || text == "%"){
            Operator = ""
            return Operator
        }
        
        else{
            inputter = String(inputter.dropLast())
            return inputter
        }
    }
    
    else if(text == "<"){
        flag-=1
        
        if(((operand == 0.00) && (Operator == ""))){
            
            if(result != 0.00){
                return String(result)
            }
            else {
                flag = 0
                return "No more values to show."
            }
        }
        else if((flag <= 0) ){
            print(flag)
            
            if(((operand != 0.00) && (Operator != ""))){
                flag = 1
                return String(operand)
            }
            flag = 0
            return "No more values to show."
        }
        else if(flag == 1){
            print(flag)
            return String(operand)
        }
        else if(flag == 2){
            print(flag)
            return Operator
        }
        
        else if(flag == 3){
            print(flag)
            return inputter
        }
    }
    
    else if(text == ">"){
        flag+=1
        
        if(((operand == 0.00) && (Operator == ""))){
            
            if(result != 0.00){
                return String(result)
            }
            else {
                flag = 0
                return "Can't go further more."
            }
        }
        else if((flag <= 0)){
            print(flag)
            flag = 0
            return "Can't go further more."
        }
        
        else if(flag>3){
            flag = 3
            return inputter
        }
        else if(flag == 1){
            print(flag)
            return String(operand)
        }
        else if(flag == 2){
            print(flag)
            return Operator
        }
        
        else if(flag == 3){
            print(flag)
            return inputter
        }
    }
    return ""
}
