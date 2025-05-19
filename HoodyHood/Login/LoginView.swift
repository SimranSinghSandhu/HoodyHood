//
//  LoginView.swift
//  HoodyHood
//
//  Created by Simran Sandhu on 19/05/25.
//

import SwiftUI

struct LoginView: View {
    
    let horizonalPadding: CGFloat = 20
    
    @State private var phoneNumber = ""
    
    var body: some View {
        VStack {
            VStack(spacing: 40) {
                Image("icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Welcome")
                            .font(.system(size: 26))
                            .bold()
                        
                        Text("Enter your phone number to continue")
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                }
                .padding(.horizontal, horizonalPadding)
                
                VStack(spacing: 30) {
                    VStack(alignment: .leading) {
                        Text("Phone Number")
                            .fontWeight(.medium)
                            .font(.system(size: 14))
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 7.5)
                                    .fill(.gray.opacity(0.05))
                                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                                    .frame(width: 100, height: 44)
                                
                                HStack(spacing: 10) {
                                    HStack(spacing: 5) {
                                        Text("🇮🇳")
                                            .font(.system(size: 16))
                                        Text("+91")
                                            .font(.system(size: 16))
                                    }
                                    Image(systemName: "chevron.down")
                                        .font(.system(size: 12))
                                }
                            }
                            
                            TextField("Enter phone number", text: $phoneNumber)
                                .padding(.horizontal, 8)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 7.5)
                                        .stroke(.gray.opacity(0.5), lineWidth: 1)
                                        .frame(height: 44)
                                }
                            Spacer()
                        }
                    }
                    
                    VStack(spacing: 30) {
                        Button {
                            print("Get OTP")
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 7.5)
                                    .frame(height: 44)
                                Text("Get OTP")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                            }
                        }
                        
                        HStack(spacing: 20) {
                            Rectangle()
                                .fill(.gray.opacity(0.25))
                                .frame(height: 1)
                            
                            Text("or")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                                .foregroundStyle(.gray)
                            
                            Rectangle()
                                .fill(.gray.opacity(0.25))
                                .frame(height: 1)
                        }
                        
                        Button {
                            print("Continue as Guest")
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 7.5)
                                    .fill(.white)
                                    .stroke(.gray.opacity(0.5), lineWidth: 1)
                                    .frame(height: 44)
                                Text("Continue as Guest")
                                    .foregroundStyle(.black)
                                    .font(.system(size: 16))
                                    .fontWeight(.regular)
                            }
                        }
                    }
                }
                .padding(.horizontal, horizonalPadding)
                
                Spacer()
                
            }.padding(.top, 40)
            
        }
    }
}

#Preview {
    LoginView()
}
