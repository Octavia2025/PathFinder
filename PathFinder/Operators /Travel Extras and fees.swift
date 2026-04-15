//
//  Travel Extras and fees.swift
//  PathFinder
//
//  Created by Octavia Mucheche on 10/17/25.
//
//
//import SwiftUI
//
//struct Travel_Extras_and_fees: View {
//    var body: some View {
//        ScrollView{
//            VStack{
//                VStack{
//                    Image("ticket")
//                        .resizable()
//                        .frame(width: 200, height: 200)
//                        .cornerRadius(20)
//                    VStack(alignment: .leading){
//                        Text("Lost Ticket Fee: $1")
//                            .font(.largeTitle)
//                            .underline(true)
//                            .padding(10)
//                        Text("Lost Ticket Fee Service allows passengers who have lost or mispaced their tickets to re-validate their bookings and receive replacement bus tickets for a nominal fee.")
//                       
//                        
//                    }
//                }
//                Spacer()
//                .padding()
//                
//                VStack{
//                    Image("child")
//                        .resizable()
//                        .frame(width: 200, height: 200)
//                        .cornerRadius(20)
//                    VStack(alignment: .leading) {
//                        Text("Unaccompanied Minor Fee: $5")
//                            .font(.largeTitle)
//                            .underline(true)
//                            .padding(10)
//                        Text(
//                           """
//Unaccompanied Minor Service ensures safe and comfortable travel for children aged 5-12 years. For this age group, the fee is mandatory. However, the service is optional for children aged 13-17.
//"""
//                        )
//                        
//                        
//                    }
//                }
//                .padding(10)
//                VStack{
//                    Image("online")
//                        .resizable()
//                        .frame(width: 200, height: 200)
//                        .cornerRadius(20)
//                    VStack(alignment: .leading) {
//                        Text("Rebooking Fee: $3")
//                            .font(.largeTitle)
//                            .underline(true)
//                            
//                        Text(
//                           """
//                             
//This service allows you to rebook your tickets that you had booked for one destination and use it for a new destination. The service also allows you to reschedule for a new date and/or time, and is charged per passenger.
//
//"""
//                        )
//                       
//                        
//                    }
//                }
//                .padding()
//                VStack{
//                    Image("baggage")
//                        .resizable()
//                        .frame(width: 200, height: 200)
//                        .cornerRadius(20)
//                    VStack(alignment: .leading) {
//                        Text("Excess Baggage: $10")
//                            .font(.largeTitle)
//                            .underline(true)
//                            .padding(10)
//                        Text(
//                           """
//This service allows you to rebook your tickets that you had booked for one destination and use it for a new destination. The service also allows you to reschedule for a new date and/or time, and is charged per passenger.
//
//"""
//                        )
//                        
//                        
//                        
//                    }
//                }
//
//            }
//        }
//       
//    }
//    
//}
//
//#Preview {
//    Travel_Extras_and_fees()
//}
import SwiftUI

struct TravelExtrasView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Fee Cards
                    FeeCard(imageName: "ticket", title: "Lost Ticket Fee: $1", description: "Lost Ticket Fee Service allows passengers who have lost or misplaced their tickets to re-validate their bookings and receive replacement bus tickets.")
                    
                    FeeCard(imageName: "child", title: "Unaccompanied Minor: $5", description: "Ensures safe travel for children aged 5-12 (mandatory) and 13-17 (optional).")
                    
                    FeeCard(imageName: "online", title: "Rebooking Fee: $3", description: "Allows you to change your destination, date, or time. Charged per passenger.")
                    
                    FeeCard(imageName: "baggage", title: "Excess Baggage: $10", description: "Additional luggage beyond the standard allowance is subject to an excess fee based on weight.")

                    // Official Website Link
                    Link(destination: URL(string: "https://www.extracity.co.zw/")!) {
                        Text("Visit Official Website")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding(.top, 10)
                }
                .padding()
            }
            .navigationTitle("Extras & Fees")
            .background(Color(UIColor.systemGroupedBackground))
        }
    }
}

// Reusable Card Component for a cleaner look
struct FeeCard: View {
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 180)
                .clipped()
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(description)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding([.horizontal, .bottom], 12)
        }
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    TravelExtrasView()
}
