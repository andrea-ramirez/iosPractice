//
//  ContentView.swift
//  T6
//
//  Created by Andrea Ramirez on 11/5/20.
//  Copyright © 2020 Andrea Ramirez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var pesoStr : String = ""
    @State var alturaStr : String = ""
    @State var bmiStr : String = ""
    @State var mostrarAlarma : Bool = false
    
    var body: some View {
        VStack{
            Spacer()
            Text("BMI Calculator")
                .bold()
                .padding()
                .font(.largeTitle)
            Spacer()
            HStack{
                Text("Peso (kg): ")
                TextField("", text: $pesoStr)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
            }
            .padding(.leading, 20.0)
            .padding(.trailing, 20.0)
            HStack{
                Text("Altura (m): ")
                TextField("", text: $alturaStr)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
            }
            .padding(.leading, 20.0)
            .padding(.trailing, 20.0)
            HStack{
                Text("BMI: ")
                    .bold()
                TextField("", text: $bmiStr)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disabled(true)
            }
            .padding(.leading, 20.0)
            .padding(.trailing, 20.0)
            Spacer()
            Button(action: {
                if let peso = Double(self.pesoStr), let altura = Double(self.alturaStr){
                    self.bmiStr = String(peso / (altura * altura))
                }else{
                    self.mostrarAlarma = true
                }
            }){
                Text("Calcular")
                    .bold()
                    .padding()
                    .background(Color.init(.sRGB, red: 100/255, green: 40/255, blue: 60/255, opacity: 1))
                    .foregroundColor(Color.white)
                    .cornerRadius(5)
            }
            .alert(isPresented: $mostrarAlarma){
                Alert(title: Text("Error"), message: Text("Se necesitan valores numéricos en los campos"), dismissButton: .default(Text("OK")))
            }
            .padding(20)
            Image("bmi")
                .resizable()
                .padding(20)
                .aspectRatio(contentMode: .fit)
        }
        
        .background(Color.init(.sRGB, red: 255/255, green: 225/255, blue: 255/255, opacity: 1))
        //.ignoresSafeArea()
        .onTapGesture(count: 1, perform: {
            UIApplication.shared.endEditing()
        })
    }
}

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
