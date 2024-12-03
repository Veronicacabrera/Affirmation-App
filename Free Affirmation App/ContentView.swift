//
//  ContentView.swift
//  Free Affirmation App
//
//  Created by VLol on 10/25/24.
//
/*
 tHIS is the default view file provided to help you start building the UI.
 */

import SwiftUI
/*
struct ContentView: View {
    // Placeholder for affirmation text, which you could later connect to real data.
    
    
      //  @State private var affirmationText: String = "You are capable of amazing things!"
    @State private var affirmationsData: String = "You are capable of amazing things!"

        var body: some View {
            VStack(spacing: 30) {
                // App Icon
                Image(systemName: "sparkles")
                    .imageScale(.large)
                    .foregroundColor(.yellow)
                    .font(.system(size: 60))
                    .padding(.top, 50)

                // Greeting and Affirmation Text
                Text("Welcome to Your Daily Affirmations")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                // Displayed Affirmation
               // Text(affirmationText)
                Text(affirmationsData)
                    .font(.title2)
                    .foregroundColor(.purple)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                // Button to Generate New Affirmation
                Button(action: {
                    // This could later pull from an array of affirmations
                    //affirmationText = "Believe in yourself //and all that you are."
                    // Select a new random affirmation
                     displayedAffirmation = affirmationsData.randomElement()!
                }) {
                    Text("Show Me an Affirmation")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.yellow)
                        .cornerRadius(12)
                        .shadow(radius: 5)
                        .padding(.horizontal, 20)
                }

                Spacer()
            }
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [
                    Color.yellow.opacity(0.4),
                    Color.pink.opacity(0.4),
                    
                    Color.purple.opacity(0.7),
                    Color.purple.opacity(0.9),
                    Color.blue.opacity(1.1),
                    Color.blue.opacity(1.3)
                                          ]),
                               startPoint: .top, endPoint: .bottom)
            )
            .edgesIgnoringSafeArea(.all) // Make the gradient cover the full screen
        }
    }
*/


struct ContentView: View {
    // The currently displayed affirmation text
    @State private var displayedAffirmation: Affirmation = affirmationsData.randomElement()!

    var body: some View {
        VStack(spacing: 30) {
            // App Icon
            Image(systemName: "sparkles")
                .imageScale(.large)
                .foregroundColor(.yellow)
                .font(.system(size: 60))
                .padding(.top, 50)

            // Greeting and Affirmation Text
            Text("Welcome to Your Daily Affirmations")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            // Displayed Affirmation
            Text(displayedAffirmation.text)
                .environment(\.font, .custom("TimesNewRomanPS-BoldMT", size: 24))  // Adjust size as needed
                .font(.title2)
                .foregroundColor(.purple)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            
            //favorited(if user favorited)
           // if let favorited = displayedAffirmation.author {
            //    Text("— \(favorited)")
           //         .font(.caption)
            //        .foregroundColor(.gray)
           // }
            
            
            // Display the category if it exists
             //           if let category = displayedAffirmation.category {
            //              Text(category)
            //                 .font(.subheadline)
             //                  .foregroundColor(.secondary)
             //            }

            
            // Author (if available)
            if let author = displayedAffirmation.author {
                Text("— \(author)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
                
            // Button to Generate New Affirmation
            Button(action: {
                // Select a new random affirmation
                displayedAffirmation = affirmationsData.randomElement()!
            }) {
                Text("Show Me Another Affirmation")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(12)
                    .shadow(radius: 5)
                    .padding(.horizontal, 20)
            }
            .environment(\.font, .custom("TimesNewRomanPS-BoldMT", size: 20))  // Adjust size as needed
            Spacer()
        }
        .environment(\.font, .custom("TimesNewRomanPS-BoldMT", size: 20))  // Adjust size as needed
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.yellow.opacity(0.01), //Color.yellow.opacity(0.03),
                //Color.yellow.opacity(0.06),
                Color.yellow.opacity(0.08),
              //  Color.yellow.opacity(0.10),
                Color.yellow.opacity(0.12),
               // Color.yellow.opacity(0.15),
                //Color.yellow.opacity(0.20),
                Color.yellow.opacity(0.24),
               // Color.yellow.opacity(0.34),
               
                Color.pink.opacity(0.34),
              //  Color.pink.opacity(0.35),
                Color.pink.opacity(0.39),
              //  Color.pink.opacity(0.50),
             //   Color.pink.opacity(0.52),
                                                    
                                                    
               
                //Color.purple.opacity(0.58),
               // Color.purple.opacity(0.59),
                                     
                //Color.purple.opacity(0.60),
                Color.purple.opacity(0.67),
                
                //Color.purple.opacity(0.69),
                Color.purple.opacity(0.70),
                //Color.purple.opacity(0.73),
               // Color.purple.opacity(0.74),
                                                
                                                       
               // Color.blue.opacity(0.73),
                Color.blue.opacity(0.74),
               // Color.blue.opacity(0.75),
               // Color.blue.opacity(0.85),
             //   Color.blue.opacity(0.95),
                Color.blue.opacity(1.0),

                Color.blue.opacity(1.9),
                                                    
                                                       
                
                                                       
                                                    //add more grardient colors here
                                          ]),
                           startPoint: .top, endPoint: .bottom)
        )
        .edgesIgnoringSafeArea(.all) // Make the gradient cover the full screen
    }
}

#Preview {
    ContentView()
}


#Preview {
    ContentView()
}
