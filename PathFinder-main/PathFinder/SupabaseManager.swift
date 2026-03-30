//
//  SupabaseManager.swift
//  PathFinder
//
//  Created by octavia on 20/3/2026.
//
//import Foundation
//import Supabase
//
//// 1. The Global Connection
//class SupabaseManager {
//    static let shared = SupabaseClient(
//        supabaseURL: URL(string: "https://kraoiuxfytevowesvoiz.supabase.co")!,
//        supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtyYW9pdXhmeXRldm93ZXN2b2l6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM5Nzc4NDUsImV4cCI6MjA4OTU1Mzg0NX0.ke3-8rd3xDpRUtw9oys0O1laIF9X7IO6vBVV_Rprils"
//    )
//}
//
//
//// 2. The Shared Data Model (Only define this ONCE here)
//struct BusSchedule: Identifiable, Codable {
//    let id: Int
//    var route: String
//    var time: String
//    var fare: String
//    var operatorName: String
//
//    enum CodingKeys: String, CodingKey {
//        case id, route, time, fare
//        case operatorName = "operator" // Maps DB 'operator' to 'operatorName'
//    }
//}
