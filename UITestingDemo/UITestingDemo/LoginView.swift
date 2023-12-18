//
//  LoginView.swift
//  UITestingDemo
//
//  Created by 김지훈 on 2023/12/18.
//

import SwiftUI

struct LoginView: View {
    // UserViewModel 인스턴스 엑세스
    @EnvironmentObject private var userVM: UserViewModel
    // 나중에 시트를 닫을수 있도록 속성 선언
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    TextField("Username", text: $userVM.userName)
                    //보안필드
                    SecureField("Password", text: $userVM.password)
                }
                
                Button{
                    if userVM.login(){
                        presentationMode.wrappedValue.dismiss()
                    }
                } label: {
                    Text("Login")
                }
                .accessibilityIdentifier("loginNow")
            }
            .navigationTitle(Text("로그인 창"))
            .navigationBarItems(trailing: Button{
                //로그인 시트 닫기
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark.circle")
                    .accessibilityLabel("")
            }
            )
        }

    }
}

