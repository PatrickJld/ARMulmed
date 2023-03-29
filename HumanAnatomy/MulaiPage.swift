//
//  MulaiPage.swift
//  HumanAnatomy
//
//  Created by Patrick Jeremiah on 29/03/23.
//

import SwiftUI

struct MulaiPage: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("bg").ignoresSafeArea(.all)
                VStack {
                    Text("Human Anatomy")
                        .font(.largeTitle.bold())
                        .foregroundColor(Color.black)
                    Image("logo")
                        .resizable()
                        .frame(width: .infinity,height: 300)
                        .padding(42)
                    Spacer()
                    NavigationLink{
                        MenuPage()
                    }label: {
                        Text("Mulai")
                            .font(.largeTitle.bold())
                            .padding(.vertical,25)
                            .padding(.horizontal,50)
                            .foregroundColor(Color("primary"))
                            .background{
                                RoundedRectangle(cornerRadius: 50)
                                    .foregroundColor(Color.white)
                            }
                    }
                }
                .foregroundColor(Color.blue)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .padding(.vertical, 42)
            }
        }
    }
}

struct MulaiPage_Previews: PreviewProvider {
    static var previews: some View {
        MulaiPage()
    }
}
