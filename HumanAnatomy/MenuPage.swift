//
//  MenuPage.swift
//  HumanAnatomy
//
//  Created by Patrick Jeremiah on 29/03/23.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("bg").ignoresSafeArea(.all)
                VStack {
                    MenuButton(title: "TUBUH MANUSIA",ar: HumanBody())
                    MenuButton(title: "SISTEM PERNAFASAN",ar: Lungs())
                    MenuButton(title: "SISTEM PENGLIHATAN",ar: Eyes())
                    MenuButton(title: "SISTEM PENDENGARAN",ar: Ear())
                    MenuButton(title: "SISTEM PENCERNAAN",ar: Pencernaan())
                    HStack {
                        Button{
                            
                        }label: {
                            Text("EXIT")
                                .font(.caption.bold())
                                .padding(.vertical,12)
                                .padding(.horizontal,25)
                                .foregroundColor(Color("primary"))
                                .background{
                                    RoundedRectangle(cornerRadius: 50)
                                        .foregroundColor(Color.white)
                                        .frame(maxWidth: .infinity)
                                }
                                .frame(maxWidth: .infinity)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
    }
}

func MenuButton(title:String, ar:some View)-> some View {
    NavigationLink {
        ar
    }label: {
        Text(title)
            .font(.title3.bold())
            .padding(.vertical,25)
            .padding(.horizontal,50)
            .foregroundColor(Color("primary"))
            .background{
                RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)
    }
    .padding(.bottom,16)
}
