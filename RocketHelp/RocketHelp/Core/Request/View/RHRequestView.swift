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
        ZStack(alignment: .bottom) {
                Color("Background")
                    .ignoresSafeArea()
                
            VStack(spacing: 0) {
                // Header
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
           
                VStack(spacing: 10) {
                    // Label and count Request
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
                    .padding(.vertical, 24)
                    
                    //Segment Bar
                    HStack(spacing: 5) {
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
                                    requestViewModel.currentTab = tab
                                }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.vertical, 16)
                    
                    //Spacer()
                    
                    //Card List
                    VStack(spacing: 16) {
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack(spacing: 16) {
                                RHApplicationCardView(colorCard: Color("Yellow"), iconCard: Image(systemName: "hourglass"))
                                
                                RHApplicationCardView(colorCard: Color("Yellow"), iconCard: Image(systemName: "hourglass"))
                                
                                RHApplicationCardView(colorCard: Color("Yellow"), iconCard: Image(systemName: "hourglass"))
                            }
                        }
                    }
                }
            }
                //Buttom
                RHButtonView(textButton: "NOVA SOLICITAÇÃO", actionButton: {})
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
