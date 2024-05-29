//
//  Supabase.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-29.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
    supabaseURL: URL(string: "https://tmnmoaipbregdgedtsjm.supabase.co")!,
    supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRtbm1vYWlwYnJlZ2RnZWR0c2ptIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY5OTM1ODYsImV4cCI6MjAzMjU2OTU4Nn0.l2Jln3QvON8lw5KRN9nPEwI1DgJ2ZsDepXUzZgwrxDY"
)
