//
//  DataPicker_Demo.swift
//  SwiftUIMaster
//
//  Created by 冉金 on 2023/7/3.
//

import SwiftUI

struct DataPicker_Demo: View {
    @State private var selectedDate: Date = Date()
    
    var dateFormatter : DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .short
        return formatter;
    }
    
    var body: some View {
        VStack {
            Text(dateFormatter.string(from: selectedDate))
            DatePicker("Select a day", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
    //            .datePickerStyle(.wheel)
        }
        
    }
}

struct DataPicker_Demo_Previews: PreviewProvider {
    static var previews: some View {
        DataPicker_Demo()
    }
}
