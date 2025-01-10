//
//  Lecture 36 Picker.swift
//  IOS Learning
//
//  Created by  Sadi on 02/01/2025.
//

import SwiftUI

struct Lecture_36_Picker: View {
    
    @State private var selected: Int = 1
    @State private var date: Date = Date()
    
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2018, month: 1, day: 1)
        let endComponents = DateComponents(year: 2025, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()
    
    //make a date formatter
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }()
    
    var body: some View {
        VStack {
            
            
            Text("Selected Date : \(dateFormatter.string(from: date))")
            
            
            DatePicker("Select Date",
                       selection: $date,
                       in: dateRange,
                       displayedComponents: [.date, .hourAndMinute])
            //.datePickerStyle(CompactDatePickerStyle())
            //.datePickerStyle(WheelDatePickerStyle())
            .datePickerStyle(GraphicalDatePickerStyle())
            
           
        }
        .padding(.horizontal)
        
    }
    
    
    
    
    //        MARK: OPTION PICKER
    //        VStack {
    //
    //            Text("Selected Number : \(selected)")
    //
    //            Picker("Select", selection: $selected) {
    ////                Text("Option 1").tag(1)
    ////                Text("Option 2").tag(2)
    ////                Text("Option 3").tag(3)
    //                ForEach(0..<50) {
    //                    Text("Option \( $0 + 1 )").tag($0 + 1)
    //                }
    //
    //
    //
    //            }
    //            .pickerStyle(WheelPickerStyle())
    //            //.pickerStyle(InlinePickerStyle())
    //            //.pickerStyle(MenuPickerStyle())
    //            //.pickerStyle(SegmentedPickerStyle())
    //
}

#Preview {
    Lecture_36_Picker()
}
