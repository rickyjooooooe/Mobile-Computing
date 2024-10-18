//
//  ContentView.swift
//  jason
//
//  Created by student on 11/10/24.
//

import SwiftUI

struct ContentView: View {
//    var body: some View{
//        NavigationStack{
//            Form{
//                Text("Hello").font(.largeTitle).bold()
//                Section{
//                    Text("User Control")
//                }
//            }.navigationTitle("settings")
//        }
//    }
//    @State var tapcount = 0
//    var body: some View {
//        
//        Button("Tap Count : \(tapcount)"){
//            tapcount += 1
//        }
//        
//    }
//    @State private var name = ""
//    let students = ["Amel", "Bern", "Cid"]
//    @State private var selectedstudent = "Bern"
//    var body: some View{
////        Form{
////            TextField("Enter Your Name", text: $name)
////            Text("Your Name is \(name)")
////        }
//        Form{
//            Picker("Select Your Student", selection: $selectedstudent){
//                ForEach(students, id: \.self){
//                    student in Text(student)
//                }
//            }
//        }
//    }
    @State private var checkAmount = 0.0
    let tipPercentages: [Int] = [10, 15, 20, 25, 0]
    @State private var numberofPeople = 2
    @State private var tip = 2
    @FocusState private var amountIsFocused: Bool
    var totalperson: Double {
        let peopleCount = Double(numberofPeople + 2)
        let tipSelection = Double(tip)
        let tipValue = checkAmount/100*tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerson = grandTotal/peopleCount
        
        return amountPerson
    }
    
    var body: some View{
        NavigationStack{
            Form{
                Section{
                    TextField("Amount", value: $checkAmount,
                              format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    Picker("Number of People", selection: $numberofPeople){
                        ForEach(2 ..< 11){
                            personCount in Text("\(personCount) people")
                        }
                    }.pickerStyle(.navigationLink)
                }.keyboardType(.decimalPad)
                Section{
                    Picker("Tip",selection: $tip){
                        ForEach(tipPercentages, id:\.self){
                        Text($0, format:.percent)
                    }
                    }
                }
                
                Text("Payment Amount")
                Text(totalperson,
                     format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
        .navigationTitle("Split Bill")
        .toolbar{
            if amountIsFocused{
                Button("Done"){
                    amountIsFocused = false
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
