//
//  RHRequestView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 10/02/23.
//

import SwiftUI

struct RHRequestView: View {
    @StateObject var requestViewModel: RequestViewModel = .init()
    
    @Namespace var animation
    
    let tabs = ["EM ANDAMENTO", "FINALIZADOS"]
    
    var body: some View {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Image("logo_header")
                        
                        Spacer(minLength: 0)
                        Button {
                            print("login out")
                        } label: {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .foregroundColor(Color("Background_LightGray"))
                        }
                    }
                    .padding(.horizontal, 20)
                    .frame(height: 80)
                    .background(Color("Background_Gray"))
                    
                    Spacer(minLength: 0)
                    
                }
                
                VStack(spacing: 32) {
                    HStack {
                        Text("Solicitações")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.title3)
                        
                        Spacer(minLength: 0)
                        
                        Text("0")
                            .foregroundColor(Color("Background_LightGray"))
                            .font(.title3)
                    }
                    .padding(.horizontal)
                    
                    HStack(spacing: 10) {
                        ForEach(tabs, id: \.self) { tab in
                            Text(tab)
                                .font(.callout)
                                .foregroundColor(requestViewModel.currentTab == tab ? Color("Yellow") : Color("Background_LightGray"))
                                .padding(.vertical, 10)
                                .frame(maxWidth: .infinity)
                                .background {
                                    Color("Background_Gray")
                                    if requestViewModel.currentTab == tab {
                                        Rectangle()
                                            .stroke(
                                                requestViewModel.currentTab == tab ? Color("Yellow") : Color("Background_Gray")
                                            )
                                            .matchedGeometryEffect(id: "TAB", in: animation)
                                    }
                                }
                                .contentShape(Rectangle())
                                .onTapGesture {
                                        withAnimation {
                                            requestViewModel.currentTab = tab
                                                
                                        }
                                }
                        }
                        .padding(.horizontal)
                    }
                }
                
            }
            .navigationBarBackButtonHidden(true)
    }
}

struct RHRequestView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RHRequestView()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}
