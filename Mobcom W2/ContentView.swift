//
//  ContentView.swift
//  Mobcom W2
//
//  Created by student on 27/09/24.
//

import SwiftUI

func coba() {
    var say = "Helololo"
    say = "hah"
    
    let hai = "halo"
    
    print(say)
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            let cobaBaru = """
            Hello Feli!
            How are you?
            🛼
            """
            Text(cobaBaru)
            
            let cobaCount = "Universitas Ciputra"
            
            //Text(cobaBaru.uppercased())
            let hasilCount = cobaCount.count
            Text(String(hasilCount))
            
            let number = 100
            let number2 = 504_567
            let randomnumber = 123_467_635
            
            let hasil = number * randomnumber
            Text(String(hasil))
            
            var counter = 1

            Text(String(number.isMultiple(of: 3)))
            Text(String(number.isMultiple(of: 5)))
            
            Text(String(number2))
            
            let decimal = 1.3
            let total = Double(number) + decimal
            Text(String(total))
            

            let name = "Feli"
            let age = 19
            let tahunlahir = 2024-age
            
            let print = "Halo namaku adalah " + name + ", aku lahir di tahun " + String(tahunlahir)
            Text(print)
            
            
            var Kilometer = 10
            var Miles = Double(Kilometer) * 0.62
            
            Text(String(Miles))
            
            
            var bandFav = ["Kangen Band", "Vierra", "Coboy Junior"]
            let angkaFav = [1, 2, 3, 4]
            
            Text(bandFav[1])
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
