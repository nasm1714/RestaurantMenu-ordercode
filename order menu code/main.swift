//
// main.swift
// menue1
// Created by najat ali on 22/05/1443 AH.
 
import Foundation
//instance for maindishes

var mainlist = [ "  Arabic Food  " , "  Indian Food  ", "  macaroni  ", "  popular food  "]
var maindishes1 = maindishes(no: "1)"  , name: "Kapssa "   ,   prise:  40, size:  " large "   ,   description: " Arabic Food  ")
var maindishes2 = maindishes(no: "2)"  , name: "Biryani"  ,   prise:   80, size:  " middle" ,     description:  " Indian Food  ")
var maindishes3 = maindishes(no: "3)"  , name: "Pasta  "    ,   prise: 50, size:  " small "  ,    description: " macaroni     ")
var maindishes4 = maindishes(no: "4)"  , name: "Soup   "     ,   prise:100, size: "large "  ,    description: " popular food ")

 //instance for sweets
var Sweets1 = Sweets(no: "1)" , name: "cookies       "        ,   prise : 33,  size: "5 pieces"   ,  description:     "Lotus cookies")
var Sweets2 = Sweets(no: "2)" , name: "vanilla cake  "   ,        prise : 88,  size: "large   "      ,description:    "cake         ")
var Sweets3 = Sweets(no: "3)" , name: "Chocolate Cake" ,        prise : 60,  size: "small   "      ,  description:  "Chocolate    ")
  
//instance for sweets
var drink1 = drink(no: "1)" , name: "Arabic Coffee ",prise : 30 ,size: "5 pieces", description: "Arabic coffee")
var drink2 = drink(no: "2) " , name: "Morroco Tea   ",prise : 20 ,size: "large   ", description: "Hot drink    ")
var drink3 = drink(no: "3)" , name: "Orange Juice  ",prise : 10 , size: "small   ", description:"Cold drink   ")
 
//instance for Appetizer
var Appetizer1 = Appetizer(no: "1)" , name: "Meat Grills    " ,   prise : 73, size:"middle" ,  description: "Grills")
var Appetizer2 = Appetizer(no: "2)" , name: "Vegetable salad" , prise : 22, size: "large " ,  description: "salad ")
var Appetizer3 = Appetizer(no: "3)" , name: "pepper sauce   " , prise : 40, size: "small " ,  description: "sauce ")
 
var itemselected : String = ""
 

struct alldetiels{
    var name : String
    var price: Int
}

var userorder : [alldetiels] = []

var maindishws : [alldetiels] = [alldetiels (name: "Kapssa", price: 40),alldetiels(name:"Biryani", price: 80),alldetiels(name:"Pasta", price: 50),alldetiels(name:"Soup", price: 100)]
var sweets : [alldetiels] = [alldetiels (name:"cookies ",price: 33), alldetiels(name:"vanilla cake ",price: 88), alldetiels(name: "Chocolate Cake", price: 60)]
var drinks : [alldetiels]  = [alldetiels (name: "Arabic Coffee ",price : 30),alldetiels(name: "Morroco Tea   ",price : 20),alldetiels(name: "Orange Juice  ",price : 10)]
var appetizer: [alldetiels]  = [alldetiels (name: "Meat Grills    " ,   price : 73),alldetiels(name: "Vegetable salad" , price : 22),alldetiels(name: "pepper sauce   " , price :40)]
 



 
print("---------------****----------------")
 print("---___--- ☕️🍹🍜👩‍🍳👨‍🍳🍔🍟🥗 ---___---")
print("Welcome To Al Diyafah Restaurant")
print("---------------****----------------")
 print("Enter your information to submit your order:")
print("Enter ypur name:")
var customername = readLine()!
 print("Hello \(customername)")
print("---------------****----------------")

var answer: String
answer = "Do you want receive service OR delivery service?"
print(answer)
print("---------------*******----------------")
print("For delivery service Enter 1:")
print("For receive service Enter 2:")
var delvery : String = ""
var reseve: String = ""
 if let userChoice = readLine(){
  if (userChoice == "1") {
      
 print("Enter ypur phone please :")
     let deliveryservice = readLine()!
      delvery = deliveryservice

 }
else {
 print("Enter ypur your table number:")
 let  receiveservice  = readLine()!
    reseve = receiveservice
   }
   }
print("---------------*******----------------")

print("------------------MENU----------------")
print("1-  See all Restaurant Menu.")
print("2-  Request from Menu.")
print("3-  Review Orders and Total Bill ")
print("4-  Delete from order list ")
print("5-  Send orders")
print("6-  Exeting !")
print("----------------------------------")
print("Select your choice please:")
print("----------------------------------")

var RestaurantMenu = """
1- Main dishes list 🍱🍜 .
2- Sweets list 🍩🧁 .
3- Drinks list ☕️🍹.
4- Appetizer list 🥗🍟 .
print("----------------------------------")
"""
 
//genral list
var userinput : String = ""
repeat{
 if let selectchoice = readLine(){
     userinput = selectchoice
 switch selectchoice {
 
    case "1":
    print("---------Restaurant Menu---------")
    print(RestaurantMenu)
    printallMenu()
  
    case "2":
    print("-------Request from Menu--------")
    choosefromMenu()
     print("please enter number 3 if you want review orders order!!")
 
 case "3":
     print("-------Review Orders and Bill-------------")
     Revieworder()

case "4":
    print("-------Delete Orders-------------")
      deleteorder()
     
     print("---------------*******----------------")
   case "5":
       print("------Your order comeing soon...--------")
         print("-----------..YOUR ORDER IS SUBMITE..-------------")
         print("---------------*******----------------")
         print("please enter number 6 to exeting!!")
 case "6":
         print("-----Thank you for visit us-----")
 
 default:
    print("Select what servies you want please!")
}
}
        
}while userinput != "6"
 
 
  
//maindishes class
class maindishes{
    var no :String
    var name: String
    var prise = 0
    var size: String
    var description: String

    init(no:String ,name:String, prise:Int ,size:String ,description:String) {
        self.no=no
        self.name=name
        self.prise=prise
        self.size=size
        self.description=description
     }
     func printmaindishes(){
        print("---------------------------------------**********************---------------------------------------")
        print(" \(no)       |      \(name)       |      \(prise)RS       |      \(size)       |      \(description)")
        
    }
}
let requsetmaindishes =  [maindishes1,maindishes2,maindishes3,maindishes4]

 //sweetes structure
struct Sweets {
 var no : String
    var name : String
    var prise = 0
    var size : String
    var description : String


func printsweets(){
    print("---------------------------------------**********************---------------------------------------")
    print(" \(no)       |      \(name)       |      \(prise) RS       |      \(size)       |      \(description)")

}
}
 
var requsetsweet = [Sweets1,Sweets2,Sweets3 ]

//drinks structure
struct drink {
     var no : String
     var name = ""
     var prise = 0
     var size: String
     var description: String

    func printdrink(){
       print("---------------------------------------**********************---------------------------------------")
       print(" \(no)       |      \(name)       |      \(prise)RS       |      \(size)       |      \(description)")
    }
   }
let requsetdrink = [drink1,drink2,drink3]

//Appetizerlist struct
  struct Appetizer {
     var no : String
     var name = ""
      var prise = 0
     var size: String
     var description: String

    func printAppetizer(){
       print("---------------------------------------**********************---------------------------------------")
       print(" \(no)       |      \(name)       |      \(prise)RS       |      \(size)       |      \(description)")
    }
   }
var requsetappetizer =  [Appetizer1,Appetizer2,Appetizer3 ]

  
//printallMenu
       func printallMenu(){
           print("                                       (1) Main dishes list  🍱                 ")
           print("---------------------------------------**********************---------------------------------------")
           print(mainlist)
               print("Item No:       |      Name:       |      PRISE:       |      SIZE:       |      DESCRIPTION:")
               maindishes1.printmaindishes()
               maindishes2.printmaindishes()
               maindishes3.printmaindishes()
               maindishes4.printmaindishes()
           print("---------------------------------------**********************---------------------------------------")
           print("")
              print("                                    (2) Sweets list      🧁                  ")
           print("---------------------------------------**********************---------------------------------------")
            print("Item No:       |      Name:       |      PRISE:       |      SIZE:       |      DESCRIPTION:")
            Sweets1.printsweets()
           Sweets2.printsweets()
           Sweets3.printsweets()
           print("---------------------------------------**********************---------------------------------------")
           print("")
            print("                                      (3) Drinks list     🍹                  ")
           print("---------------------------------------**********************---------------------------------------")
           print("Item No:       |      Name:       |      PRISE:       |      SIZE:       |      DESCRIPTION:")
           drink1.printdrink()
           drink2.printdrink()
           drink3.printdrink()
           print("---------------------------------------**********************---------------------------------------")
           print("")

           print("                                       (4) Appetizer list  🥗                  ")
           print("---------------------------------------**********************---------------------------------------")
           print("Item No:       |      Name:       |      PRISE:       |      SIZE:       |      DESCRIPTION:")
            Appetizer1.printAppetizer()
           Appetizer2.printAppetizer()
           Appetizer3.printAppetizer()
           print("---------------------------------------**********************---------------------------------------")
           print("")
           print("please enter number 2 if you want to order!!")
        }

//Revieworder
func Revieworder() {
    
 let allorder: [Any] = [customername ,delvery , reseve , itemselected]
 
  if allorder.isEmpty{
     print("No information is entered!!")
 }
    
 else {
     print("customer name: \(customername)")
     
     if delvery == "delvery"{
     print("customer phon: \(delvery)")
     }
     else{
     print("customer table: \(reseve)")
     }
 }
     print("-------------------|********|----------------------.")

     reviewordersandbill()
     
  
}
//reviewordersandbill

func reviewordersandbill(){
     if userorder.isEmpty{
        print("No item has been added to order lisr!!")
        print("please enter number 6 to exite or any servise number please !!")

    } else{
        print("---------------**Bill**----------------")
 
        print("\nYour order from menue with price the receipt is :\n")
        
        for index in userorder {
            print("        \(index.name)")
        }
        
        var totalprice = 0
        for item in userorder{
            
            totalprice += item.price
        }
        print("\nThe total price is : \(totalprice) RS \n ")
        print("---------------*******----------------")
         print("please enter number 4 to delete item from order OR 5 to send orders !")
         if let choose = readLine(){
             if choose == "4" {
                  deleteorder()
                 print("---------------Your order after delete items----------------")
                 for index in userorder {
                     print("        \(index.name)")
                 }
                 
                 var totalprice = 0
                 for item in userorder{
                     
                     totalprice += item.price
                 }
                 print("\nThe total price is : \(totalprice) RS \n ")
                 print("---------------*******----------------")
                 print("please enter number 5 to Send orders OR enter number 6 to exite !!")
             }
         
       else {
        print("---------------*******----------------")
        print("please enter number 6 to exite !!")
        print("---------------*******----------------")
       }
    }
    }
    
}

func deleteorder(){
    if userorder.isEmpty{
       print("No item has been added to deleted!!")
       print("please enter number 6 to exite or any servise number please !!")

    }
    else {
    print(userorder)
    print("-----------------------------")
    print("which item of order you want to Delete ?! ")
    print("please enter item number lik this 1 ,2 ,3, ... or any item number you want!")

    if let enter = readLine() {
        if let userenter = Int(enter) {
            userorder.remove(at: userenter - 1)
        }
        print("\nItem is deleted \n")
      }
}
}

//choosefrommenue
   var moredetiles : String = ""
    func choosefromMenu(){
      enum all : CaseIterable {
          case Maindishes, Sweets, Drinks, Appetizer
      }
         repeat{
       for currentmenue in all.allCases {
      print(currentmenue)
      }
      print("please enter item number you want to order: 1 for Maindishes OR 2 for Sweets OR 3 for Drinks OR 4 fpr Appetizer .!")
      print("-------------------|********|----------------------.")
      if let currentmenue = readLine(){
          moredetiles = currentmenue
           switch currentmenue {
        case "1":
             print("1 : \(maindishes1.name)       |       prise: \( maindishes1.prise) RS")
             print("2 : \(maindishes2.name)       |       prise: \( maindishes2.prise) RS")
             print("3 : \(maindishes3.name)       |       prise: \( maindishes3.prise) RS")
             print("4 : \(maindishes4.name)       |       prise: \( maindishes4.prise) RS")
             print("-------------------|********|----------------------.")
             print("Please enter item number that you want to order!!.")
            userenterfrommaindishes(addarray: maindishws)

             print("-------------------|********|----------------------.")
          case "2":
             print("1 : \(Sweets1.name)       |      prise: \( Sweets1.prise) RS")
             print("2 : \(Sweets2.name)       |      prise: \( Sweets2.prise) RS")
             print("3 : \(Sweets3.name)       |      prise: \( Sweets3.prise) RS")
             print("Please enter item number or name that you want to order!!.")
             userenterfromsweets(addarray: sweets)
             print("-------------------|********|----------------------.")
 
         case "3":
             print("1 : \(drink1.name)       |      prise: \( drink1.prise) RS")
             print("2 : \(drink2.name)       |      prise: \( drink2.prise) RS")
             print("3 : \(drink3.name)       |      prise: \( drink3.prise) RS")
             print("Please enter item number or name that you want to order!!.")
             userenterfromdrinks(addarray: drinks)
             print("-------------------|********|----------------------.")
          case "4":
             print("1 : \(Appetizer1.name)       |      prise: \( Appetizer1.prise) RS")
             print("2 : \(Appetizer2.name)       |      prise: \( Appetizer2.prise) RS")
             print("3 :  \(Appetizer3.name)      |      prise: \( Appetizer3.prise) RS")
             print("Please enter item number or name that you want to order!!.")
             userenterfromappetizer(addarray: appetizer)
             print("-------------------|********|----------------------.")
          default:
            print("No item number is selected!!.")
            print("Enter anther one please :")
             print("-------------------|********|----------------------.")
       }
      }
           print("If you want to keep ordering Enter (YES) OR enter (NO) if you want finish!.")
            moredetiles = readLine()!
           print("-------------------|********|----------------------.")
         }while moredetiles.lowercased() != "no"

  
        //userenreformaindieshes
     func userenterfrommaindishes(addarray add : Array<alldetiels>){
         if let userinput2 = readLine(){
             itemselected = userinput2
                  switch userinput2 {
                 case "1" :
                      print("1 : \(maindishes1.name)       |       prise: \( maindishes1.prise) RS")
                      userorder.append(add[0])
                      print("The item has been added to the orders List.")
                case "2" :
                       print("2 : \(maindishes2.name)       |       prise: \( maindishes2.prise) RS")
                      userorder.append(add[1])
                      print("The item has been added to the orders List.")
                  case "3" :
                     
                       print("3 : \(maindishes3.name)       |       prise: \( maindishes3.prise) RS")
                      userorder.append(add[2])
                      print("The item has been added to the orders List.")
                 case "4" :

                     print("(4): \(maindishes4.name)        |       prise: \( maindishes4.prise) RS ")
                      userorder.append(add[3])
                      print("The item has been added to the orders List.")
                 default:
                     print("Wrong choice..")
                     
                 }
                }
            }

     //userenreformasweets
    func userenterfromsweets(addarray add : Array<alldetiels>){
        if let userinput2 = readLine(){
            itemselected = userinput2
             switch userinput2 {
         case "1" :
               print("1 : \(Sweets1.name)       |      prise: \( Sweets1.prise) RS")
                 userorder.append(add[0])
                 print("The item has been added to the orders List.")
          case "2" :
               print("2 : \(Sweets2.name)       |      prise: \( Sweets2.prise) RS")
                 userorder.append(add[1])
                 print("The item has been added to the orders List.")
          case "3" :
               print("3 : \(Sweets3.name)       |      prise: \( Sweets3.prise) RS")
                 userorder.append(add[2])
                 print("The item has been added to the orders List.")
            default:
              print("Wrong choice..")

         }
        }
     }

    //userenreformadrink
    func userenterfromdrinks(addarray add : Array<alldetiels>){
        if let userinput2 = readLine(){
            itemselected = userinput2
             switch userinput2 {
         case "1" :
               print("1 : \(drink1.name)       |      prise: \( drink1.prise) RS")
                 userorder.append(add[0])
                 print("The item has been added to the orders List.")
          case "2" :
               print("2 : \(drink2.name)       |      prise: \( drink2.prise) RS")
                 userorder.append(add[1])
                 print("The item has been added to the orders List.")
          case "3" :
               print("3 : \(drink3.name)       |      prise: \( drink3.prise) RS")
                 userorder.append(add[2])
                 print("The item has been added to the orders List.")
            default:
              print("Wrong choice..")

         }
        }
    }
    
    //userenreformAppetizer
    func userenterfromappetizer(addarray add : Array<alldetiels>){
        if let userinput2 = readLine(){
            itemselected = userinput2
            switch userinput2 {
         case "1" :
               print("1 : \(Appetizer1.name)        |      prise: \( Appetizer1.prise) RS")
                userorder.append(add[0])
                print("The item has been added to the orders List.")
            case "2" :
               print("2 : \(Appetizer2.name)        |      prise: \( Appetizer2.prise) RS")
                userorder.append(add[1])
                print("The item has been added to the orders List.")
           case "3" :
               print("3 :  \(Appetizer3.name)       |      prise: \( Appetizer3.prise) RS")
                userorder.append(add[2])
                print("The item has been added to the orders List.")
              default:
              print("Wrong choice..")
          }
        }
    }
     
 
 
   }
   
