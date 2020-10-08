//
//  CategoryImage.swift
//  Todo
//
//  Created by 村澤祐樹 on 2020/10/08.
//  Copyright © 2020 niki. All rights reserved.
//

import SwiftUI

struct CategoryImage: View {
    
    var category: TodoEntity.Category
    
    
    init(_ category: TodoEntity.Category?){
        self.category = category ?? .ImpUrg_1st
    }
    
    var body: some View {
        Image(systemName: "tortoise.fill")
        .resizable()
        .scaledToFit()
            .foregroundColor(.white)
            .padding(2.0)
            .frame(width: 30, height: 30)
            .background(category.color())
            .cornerRadius(6.0)
            
    }
}

struct CategoryImage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImage(TodoEntity.Category.ImpNUrg_2nd)
    }
}
