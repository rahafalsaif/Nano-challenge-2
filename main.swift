//
//  main.swift
//  cli test
//
//  Created by rahaf alsaif on 18/05/1443 AH.
//

import Foundation

struct flight {
    var flightName : String = ""
    var flightStatus : String = ""
    var flightTime : String = ""
    var flightPrice : String = ""
}

var flight1 = flight(flightName :"Riyadh to Dammam",flightStatus :"delay",flightTime:"4:30 pm ",flightPrice :"540")
var flight2 = flight(flightName :"Riyadh to Jeddah",flightStatus :"on time",flightTime:"5:40 pm ",flightPrice :"1000")
var flight3 = flight(flightName :"Dammam to Jeddah",flightStatus :"delay",flightTime:"2:00 am ",flightPrice :"315")
var flight4 = flight(flightName :"Abha to Jeddah",flightStatus :"on time",flightTime:"6:50 am ",flightPrice :"750")




print("welcome to the best flight reservietion")
print("✈️-----------------menu-----------------✈️")
print("1.show all flight reservietion")
print("2.select the cheepest flight price")
print("3.show live flight status")
print("✈️--------------------------------------✈️")
print("select your choice")

var flightName = ["Riyadh to Dammam","Riyadh to Jeddah","Dammam to Jeddah","Abha to Jeddah"]
var flightTiming : [String:String] = ["Riyadh to Dammam" : "4 pm" , "Riyadh to Jeddah" : "5 pm" ,"Dammam to Jeddah" : "6:30 pm" ,"Abha to Jeddah" : "2:15 am" ]
var flightdelay : [String:String] = ["Riyadh to Dammam" : "delay" , "Riyadh to Jeddah" : "no delay" ,"Dammam to Jeddah" : "delay" ,"Abha to Jeddah" : "no delay" ]
var prices = [220,356,1080,3000]

var userChoice :String = ""

let services = """
1.flight timings
2.delays

"""
if let input = readLine() {
    userChoice = input
     
    switch userChoice {
    case "1":
        
        print ("name of flight :\(flight1.flightName) and status of flight:\(flight1.flightStatus) and time of flight\(flight1.flightTime) and price of flight\(flight1.flightPrice)")
        print ("name of flight :\(flight2.flightName) and status of flight:\(flight2.flightStatus) and time of flight\(flight2.flightTime) and price of flight\(flight2.flightPrice)")
        print ("name of flight :\(flight3.flightName) and status of flight:\(flight3.flightStatus) and time of flight\(flight3.flightTime) and price of flight\(flight3.flightPrice)")
        print ("name of flight :\(flight4.flightName) and status of flight:\(flight4.flightStatus) and time of flight\(flight4.flightTime) 1and price of flight\(flight4.flightPrice)")
        
        
    case "2":
        for I in flightName {
            print("flight to , \(I)!")
                  }
        print("✈️--------------------------------------✈️")
        print ("chooce your flight please")
        if let ss = readLine(){
            
        switch ss {
        case "Riyadh to Dammam"  :
            print("the prices of all flights are ,\(prices)")
            print("✈️--------------------------------------✈️")
            
                if let result = prices.min()
                {
                    print(" cheapest price is :\(result)")
                    print("✈️--------------------------------------✈️")
                }
                else{
                    
                }
            
            
        case "Riyadh to Jeddah":
            
            print("the prices of all flights are ,\(prices)")
        case "Dammam to Jeddah":
           
            print("the prices of all flights are ,\(prices)")
        case "Abha to Jeddah":
            print("the prices of all flights are ,\(prices)")
       
        default :
            break
            
        }
        }
        else{
            
        }
        
        
        
        
    case "3":
        print(services)
        print("✈️--------------------------------------✈️")
        print ("choose you service")
        if let dd = readLine(){
            
            switch dd {
            case "1":
                print("Enter the City Name:")
                if let userInput = readLine(){
                userFlight(userInput)
                }
            case "2":
                print("---------------------------------------")
                print("Enter the City Name:")
                if let userInput = readLine(){
                    FlightDelay(userInput)
                }
            default:
                print("try again")
          
            }
            
        }
    default:
        print("try again")
  
    }
    
    
    
    
    
}
else
{
    
}


func userFlight (_ cityName : String){
    print("the Time Of Your Flight is : ")
    print(flightTiming[cityName]!)
    print("✈️--------------------------------------✈️")

}
func FlightDelay (_ cityName : String){
    print("there is : ")
    print(flightdelay[cityName]!)
    print("✈️--------------------------------------✈️")

}


