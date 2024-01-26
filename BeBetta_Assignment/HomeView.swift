//
//  HomeView.swift
//  BeBetta_Assignment
//
//  Created by usha mayuri on 26/01/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack {
            headerText
            ScrollView(showsIndicators: false) {
                gameOptions
                matches
                mostHappening
                coinPoster
                rapidFire
                matchPreview
            }
            tabBar
        }
        .sheet(isPresented: $showSheet) {
            SheetView()
                .presentationDetents([.medium])
        }
    }
    
    private var headerText: some View {
        HStack{
            Image("BeBetta")
                .resizable()
                .scaledToFit()
                .frame(width:50,height: 50)
            Spacer()
            Image("Wallet")
                .resizable()
                .scaledToFit()
                .frame(width:50,height: 50)
            Image("Bell")
                .resizable()
                .scaledToFit()
                .frame(width:50,height: 50)
        }
        .padding(.all)
    }
    
    private var gameOptions: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                RoundedRectangle(cornerRadius:30)
                    .frame(width: 105,height: 34)
                    .overlay(
                        HStack{
                            Image("soccer")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 18,height: 18)
                            Text("Football")
                                .foregroundStyle(.black)
                                .bold()
                        }
                    )
                RoundedRectangle(cornerRadius:30)
                    .stroke(.white, lineWidth: 1)
                    .frame(width: 105,height: 34)
                    .foregroundColor(.clear)
                    .overlay(
                        HStack{
                            Image("Bat")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 18,height: 18)
                            Text("Cricket")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    )
                Image("f1Button")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 224,height: 34)
            }
        }
        .padding(.vertical, 5)
        .ignoresSafeArea(.all)
    }
    
    @ViewBuilder
    private var matches: some View {
        VStack{
            HStack{
                RoundedRectangle(cornerRadius:5)
                    .frame(width: 36, height: 19)
                    .foregroundColor(.red)
                    .overlay(
                        Text("LIVE")
                            .font(.system(size: 11))
                        .bold()
                    )
                Text("Live Matches")
                    .bold()
                Spacer()
            }
            .padding(.vertical)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    matchCard1
                    matchCard2
                    matchCard3
                }
            }
        }
        .padding(.leading)
    }
    
    private var mostHappening: some View {
        VStack{
            HStack {
                Text("🔥 Most Happening Tickr")
                    .bold()
                Spacer()
            }
            .padding(.vertical)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 25) {
                    VStack{
                        Image("Usab")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 55,height: 55)
                        Text("USAB")
                            .font(.system(size: 14))
                    }
                    VStack{
                        Image("dal")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 55,height: 55)
                        Text("DAL")
                            .font(.system(size: 14))
                    }
                    VStack{
                        Image("Ncaff")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 55,height: 55)
                        Text("NCAAF")
                            .font(.system(size: 14))
                    }
                    VStack{
                        Image("Madrid")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 55,height: 55)
                        Text("Madrid")
                            .font(.system(size: 14))
                    }
                    VStack{
                        Image("Phi")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 55,height: 55)
                        Text("PHI")
                            .font(.system(size: 14))
                    }
                 
                }
            }
        }
        .padding(.leading)
    }
    
    private var coinPoster: some View {
        Button {
            showSheet.toggle()
        } label: {
            Image("bettaCoinPoster")
                .resizable()
                .scaledToFit()
                .frame(width: 370)
        }
        .padding(.vertical, 10)
    }
    
    private var rapidFire: some View {
        VStack {
            HStack {
                Text("🔥 Rapid Fire")
                    .bold()
                Spacer()
                Text("5 Questions")
                    .foregroundColor(.gray)
            }
            .padding([.vertical, .trailing])
            .padding(.leading)
            Image("rapidFireCards")
                .resizable()
                .scaledToFit()
                .frame(width: 380)
        }
    }
    
    private var matchPreview: some View {
        VStack {
            HStack {
                Text("Match Preview")
                    .bold()
                Spacer()
                Text("View All")
                    .foregroundColor(.orange)
            }
            .padding([.vertical, .trailing])
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Image("barcvsbay")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Image("acvsfio")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                }
            }
        }
        .padding(.leading)
    }
    
}

extension HomeView {
    private var matchCard1: some View {
        VStack(spacing: 10) {
            HStack {
                VStack {
                    Image("Espanyol")
                        .resizable()
                        .scaledToFit()
                        .frame(width:28,height: 33.19)
                    Text("Espanyol")
                          .font(.system(size: 10))
                          .fontWeight(.semibold)
                }
                .offset(x: -10)
                Text("vs")
                    .foregroundColor(Color(hex:"#EAEAEA80"))
                VStack {
                    Image("atl")
                        .resizable()
                        .scaledToFit()
                        .frame(width:22,height:29)
                    Text("Atl. Madrid")
                        .font(.system(size: 10))
                        .fontWeight(.semibold)
                }
                .offset(x: 10)
            }
            HStack {
                Text("2")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.medium)
                Spacer()
                Text("72 min")
                    .foregroundColor(Color.yellow)
                    .font(.system(size: 10))
                Spacer()
                Text("0")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.medium)
            }
            .padding(.bottom, 35)
        }
        .padding(.horizontal, 10)
        .frame(width: 162, height: 149)
        .padding(.all, 10)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(hex: "#645F7080"))
        }
        .overlay {
            Text("BET NOW")
                .padding(.horizontal, 10)
                .padding(.vertical, 15)
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.white)
                        .opacity(0.2)
                        .frame(width: 180, height: 36)
                }
                .offset(y: 65)
        }
    }
    
    private var matchCard2: some View {
        VStack(spacing: 10) {
            HStack {
                VStack {
                    Image("Leeds")
                        .resizable()
                        .scaledToFit()
                        .frame(width:28,height: 33.19)
                    Text("Leeds Utd.")
                          .font(.system(size: 10))
                          .fontWeight(.semibold)
                }
                .offset(x: -10)
                Text("vs")
                    .foregroundColor(Color(hex:"#EAEAEA80"))
                VStack {
                    Image("liverpool")
                        .resizable()
                        .scaledToFit()
                        .frame(width:22,height:29)
                    Text("Liverpool")
                        .font(.system(size: 10))
                        .fontWeight(.semibold)
                }
                .offset(x: 10)
            }
            HStack {
                Text("1")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.medium)
                Spacer()
                Text("36 min")
                    .foregroundColor(Color.green)
                    .font(.system(size: 10))
                Spacer()
                Text("3")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.medium)
            }
            .padding(.bottom, 35)
        }
        .padding(.horizontal, 10)
        .frame(width: 162, height: 149)
        .padding(.all, 10)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(hex: "#645F7080"))
        }
        .overlay {
            Text("BET NOW")
                .padding(.horizontal, 10)
                .padding(.vertical, 15)
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.white)
                        .opacity(0.2)
                        .frame(width: 180, height: 36)
                }
                .offset(y: 65)
        }
    }
    
    private var matchCard3: some View {
        VStack(spacing: 10) {
            HStack {
                VStack {
                    Image("Espanyol")
                        .resizable()
                        .scaledToFit()
                        .frame(width:28,height: 33.19)
                    Text("Espanyol")
                          .font(.system(size: 10))
                          .fontWeight(.semibold)
                }
                .offset(x: -10)
                Text("vs")
                    .foregroundColor(Color(hex:"#EAEAEA80"))
                VStack {
                    Image("atl")
                        .resizable()
                        .scaledToFit()
                        .frame(width:22,height:29)
                    Text("Atl. Madrid")
                        .font(.system(size: 10))
                        .fontWeight(.semibold)
                }
                .offset(x: 10)
            }
            HStack {
                Text("2")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.medium)
                Spacer()
                Text("72 min")
                    .foregroundColor(Color.yellow)
                    .font(.system(size: 10))
                Spacer()
                Text("0")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.medium)
            }
            .padding(.bottom, 35)
        }
        .padding(.horizontal, 10)
        .frame(width: 162, height: 149)
        .padding(.all, 10)
        .background {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(hex: "#645F7080"))
        }
        .overlay {
            Text("BET NOW")
                .padding(.horizontal, 10)
                .padding(.vertical, 15)
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.white)
                        .opacity(0.2)
                        .frame(width: 180, height: 36)
                }
                .offset(y: 65)
        }
    }
    private var tabBar: some View {
        HStack(spacing: 45) {
            Image("feed")
                .resizable()
                .scaledToFit()
                .frame(width: 23,height: 23)
            Image("Vector")
                .resizable()
                .scaledToFit()
                .frame(width: 24,height: 24)
            Image("receipt")
                .resizable()
                .scaledToFit()
                .frame(width: 32,height: 32)
            Image("like")
                .resizable()
                .scaledToFit()
                .frame(width: 32,height: 32)
            Image("account")
                .resizable()
                .scaledToFit()
                .frame(width: 24,height: 24)
        }
        .padding(.top, 10)
    }
}


#Preview {
    HomeView()
}
