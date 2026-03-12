//
//  Travel Extras and fees.swift
//  PathFinder
//
//  Created by Octavia Mucheche on 10/17/25.
//

import SwiftUI

struct Travel_Extras_and_fees: View {
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    Image("ticket")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    VStack(alignment: .leading){
                        Text("Lost Ticket Fee: $1")
                            .font(.largeTitle)
                            .underline(true)
                            .padding(10)
                        Text("Lost Ticket Fee Service allows passengers who have lost or mispaced their tickets to re-validate their bookings and receive replacement bus tickets for a nominal fee.")
                       
                        
                    }
                }
                Spacer()
                .padding()
                
                VStack{
                    Image("child")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    VStack(alignment: .leading) {
                        Text("Unaccompanied Minor Fee: $5")
                            .font(.largeTitle)
                            .underline(true)
                            .padding(10)
                        Text(
                           """
Unaccompanied Minor Service ensures safe and comfortable travel for children aged 5-12 years. For this age group, the fee is mandatory. However, the service is optional for children aged 13-17.
"""
                        )
                        
                        
                    }
                }
                .padding(10)
                VStack{
                    Image("online")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    VStack(alignment: .leading) {
                        Text("Rebooking Fee: $3")
                            .font(.largeTitle)
                            .underline(true)
                            .padding(10)
                        Text(
                           """
                             
This service allows you to rebook your tickets that you had booked for one destination and use it for a new destination. The service also allows you to reschedule for a new date and/or time, and is charged per passenger.

"""
                        )
                       
                        
                    }
                }
                .padding()
                VStack{
                    Image("baggage")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    VStack(alignment: .leading) {
                        Text("Excess Baggage:$10")
                            .font(.largeTitle)
                            .underline(true)
                            .padding(10)
                        Text(
                           """
This service allows you to rebook your tickets that you had booked for one destination and use it for a new destination. The service also allows you to reschedule for a new date and/or time, and is charged per passenger.

"""
                        )
                        
                        
                        
                    }
                }
//                Spacer()
            }
        }
       
    }
    
}

#Preview {
    Travel_Extras_and_fees()
}
