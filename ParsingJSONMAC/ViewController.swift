//
//  ViewController.swift
//  ParsingJSONMAC
//
//  Created by Hajime Tousaka on 25/8/2018.
//  Copyright © 2018 Hajime Tousaka. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var path:String!
    var geo:[MyLocation] = []
    let fileManager = FileManager.default
    
    
    override func viewDidLoad () {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func parsingJson(path: String) {
        print(path)
        var myData = FileManager.default.contents(atPath: path)
        
        do{
            geo = try JSONDecoder().decode([MyLocation].self, from: myData!)}
        catch let err{
            print(err)
        }
        myData?.removeAll()
        
    }

    @IBAction func startParsing(_ sender: Any) {

        let currentPath = Bundle.main.resourcePath
        print(currentPath)
        let managedContext = ParsingHelper.context
        
        fileManager.enumerator(atPath: currentPath!)?.forEach{ e in
            if let ex = e as? String, let url = URL(string: ex){
                
            if url.pathExtension == "json" {
//                print(String(ex.first!))
                    switch String(ex.first!){
                        
                    case "a":
                        parsingJson(path: currentPath! + "/\(ex)")
                        print(Date())
                        geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationA", into:managedContext) as? AlphabetLocationA {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                   try managedContext.save()
                                }catch{}
        
        
                            }
                        }
                        geo.removeAll()
                        
                    case "b":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationB", into:managedContext) as? AlphabetLocationB {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "c":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationC", into:managedContext) as? AlphabetLocationC {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "d":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationD", into:managedContext) as? AlphabetLocationD {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "e":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationE", into:managedContext) as? AlphabetLocationE {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "f":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationF", into:managedContext) as? AlphabetLocationF {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "g":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationG", into:managedContext) as? AlphabetLocationG {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "h":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationH", into:managedContext) as? AlphabetLocationH {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "i":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationI", into:managedContext) as? AlphabetLocationI {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "j":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationJ", into:managedContext) as? AlphabetLocationJ {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "k":
                        parsingJson(path: currentPath! + "/\(ex)")
                        print(Date())
                        geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationK", into:managedContext) as? AlphabetLocationK {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "l":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationL", into:managedContext) as? AlphabetLocationL {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "m":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationM", into:managedContext) as? AlphabetLocationM {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "n":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationN", into:managedContext) as? AlphabetLocationN {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "o":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationO", into:managedContext) as? AlphabetLocationO {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "p":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationP", into:managedContext) as? AlphabetLocationP {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "q":
                       parsingJson(path: currentPath! + "/\(ex)")
                       print(Date())
                       geo.forEach{
                        if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationQ", into:managedContext) as? AlphabetLocationQ {
                            locations.ccode = $0.ccode
                            locations.city = $0.City
                            locations.latitude = $0.Lat
                            locations.longitude = $0.Long
                            do{
                                try managedContext.save()
                            }catch{}
                            
                            
                        }
                        }
                        geo.removeAll()
                    case "r":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationR", into:managedContext) as? AlphabetLocationR {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "s":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationS", into:managedContext) as? AlphabetLocationS {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "t":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationT", into:managedContext) as? AlphabetLocationT {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "u":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationU", into:managedContext) as? AlphabetLocationU {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "v":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationV", into:managedContext) as? AlphabetLocationV {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "w":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationW", into:managedContext) as? AlphabetLocationW {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "x":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationX", into:managedContext) as? AlphabetLocationX {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "y":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationY", into:managedContext) as? AlphabetLocationY {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    case "z":
                         parsingJson(path: currentPath! + "/\(ex)")
                         print(Date())
                         geo.forEach{
                            if let locations = NSEntityDescription.insertNewObject(forEntityName: "AlphabetLocationZ", into:managedContext) as? AlphabetLocationZ {
                                locations.ccode = $0.ccode
                                locations.city = $0.City
                                locations.latitude = $0.Lat
                                locations.longitude = $0.Long
                                do{
                                    try managedContext.save()
                                }catch{}
                                
                                
                            }
                        }
                        geo.removeAll()
                    default:
                        print("ERR")
                }}
        }
            
        }
       
//        for i in 0...106 {
//
//            path = Bundle.main.path(forResource: "geo" + String(i), ofType: "json")
//
//            print("Parsing \(path)")
//            do{
//
//                var myData = FileManager().contents(atPath: path)
//                path.removeAll()
//
//                let geo = try JSONDecoder().decode([MyLocation].self, from: myData!)
//                myData?.removeAll()
////                print(geo)
//                print(Date())
////                geo.forEach{
////                    if let locations = NSEntityDescription.insertNewObject(forEntityName: "GeoLocation", into:managedContext) as? GeoLocation {
////                        locations.ccode = $0.ccode
////                        locations.city = $0.City
////                        locations.latitude = $0.Lat
////                        locations.longitude = $0.Long
//////                        print(locations.city as Any)
////                        do{
////                           try managedContext.save()
////                        }catch{}
////
////
////                    }
////                }
//                print(Date())
//            }catch _{
//
//            }
//    }
    }
}

