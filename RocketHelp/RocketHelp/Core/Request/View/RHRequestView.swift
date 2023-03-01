//
//  RHRequestView.swift
//  RocketHelp
//
//  Created by Grazi  Berti on 10/02/23.
//

import SwiftUI

struct RHRequestView: View {
    @StateObject var requestViewModel: RequestViewModel = .init()
    @State var selection: Int? = nil
    
    @Namespace var animation
    
    
    let tabs = ["EM ANDAMENTO", "FINALIZADOS"]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                headerView
                
                Spacer(minLength: 0)
                
                VStack(spacing: 10) {
                    // Label and count Request
                    leabelRequest
                        .padding(.horizontal)
                    
                    //Segment Bar
                    requestSegmentBar
                        .padding(.vertical, 10)
                    
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
                .padding(.vertical)
                
            }
            //Buttom
            NavigationLink(destination: RHNewRequestView(), tag: 1, selection: $selection) {
                Button(action: {
                    self.selection = 1
                }) {
                    RHButtonView(textButton: "Nova solicitação") {
                        self.selection = 1
                    }
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

extension RHRequestView {
    private var headerView: some View {
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
    }
    
    private var leabelRequest: some View {
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
    }
    
    private var requestSegmentBar: some View {
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
    }
}
