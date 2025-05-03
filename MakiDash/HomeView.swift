//
//  MainView.swift
//  MakiDash
//
//  Created by Wiktor Bramer on 02/05/2025.
//

import SwiftUI

struct HomeView: View {
    
    @State private var name: String = ""
    @State private var orderNum: String = ""
    @State private var review: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("MakiDash").font(.title).fontWeight(.bold).padding([.top, .leading, .trailing])
                Spacer()
            }
            HStack {
                Text("Crave it. Click it. MakiDash it.")
                Image(systemName: "hare.fill")
                Spacer()
            }
            .padding([.leading, .bottom, .trailing])
            
            
            VStack {
                Text("Recent Orders").font(.title2).fontWeight(.semibold)
                HStack{
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Order: #2").font(.caption).fontWeight(.semibold)
                            Spacer()
                            Text("24.05.2025").font(.caption)
                        }
                        Divider()
                        
                        Text("• Meguro Sushi")
                        Text("• Avocado Maki")
                    }
                    .padding()
                    .background(.brown.opacity(0.3))
                    .cornerRadius(10)
                    Spacer()
                    VStack(alignment: .leading){
                        HStack {
                            Text("Order: #1").font(.caption).fontWeight(.semibold)
                            Spacer()
                            Text("23.05.2025").font(.caption)
                        }
                        Divider()
                        
                        Text("• California Roll")
                        Text("• Shrimp Sushi")
                    }
                    .padding()
                    .background(.brown.opacity(0.3))
                    .cornerRadius(10)
                    Spacer()
                }
                
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            
            
            VStack{
                Text("Popular Items")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("• Meguro Sushi")
                            Spacer()
                            VStack {
                                HStack {
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.leadinghalf.filled")
                                }
                                Text("(Reviews 361)")
                            }.foregroundStyle(.orange).font(.caption)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("• Onigiri")
                            Spacer()
                            VStack {
                                HStack {
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.leadinghalf.filled")
                                    Image(systemName: "star")
                                }
                                Text("(Reviews 154)")
                            }.foregroundStyle(.orange).font(.caption)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("• Hamachi Sushi")
                            Spacer()
                            VStack {
                                HStack {
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.leadinghalf.filled")
                                    Image(systemName: "star")
                                }
                                Text("(Reviews 132)")
                            }.foregroundStyle(.orange).font(.caption)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("• California Roll")
                            Spacer()
                            VStack {
                                HStack {
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                }
                                Text("(Reviews 248)")
                            }.foregroundStyle(.orange).font(.caption)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("• Ikura Sushi")
                            Spacer()
                            VStack {
                                HStack {
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                }
                                Text("(Reviews 95)")
                            }.foregroundStyle(.orange).font(.caption)
                        }
                    }
                }
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            
            NavigationStack {
                    NavigationLink("Log Out", destination: LoginView().navigationBarBackButtonHidden(true))
                        .font(.headline)
                        .padding()
                        .background(Color.brown.opacity(0.5))
                        .foregroundColor(.white)
                        .cornerRadius(25)
                        .padding()
            }
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
