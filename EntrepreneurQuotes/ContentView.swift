//
//  ContentView.swift
//  EntrepreneurQuotes
//
//  Created by Salih Yusuf Göktaş on 13.07.2023.
//

import SwiftUI

struct ContentView: View {
	
	let quotes = [
		"The best way to predict the future is to create it. \n- Peter Drucker",
		"Winners never quit and quitters never win. \n- Vince Lombardi",
		"Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma – which is living with the results of other people’s thinking. Don’t let the noise of other’s opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition. They somehow already know what you truly want to become. Everything else is secondary. \n- Steve Jobs",
		"My biggest motivation? Just to keep challenging myself. I see life almost like one long University education that I never had -- everyday I’m learning something new. \n- Richard Branson",
		"Every time you state what you want or believe, you’re the first to hear it. It’s a message to both you and others about what you think is possible. Don’t put a ceiling on yourself. \n- Oprah Winfrey",
		"It’s fine to celebrate success but it is more important to heed the lessons of failure. \n- Bill Gates",
		"It takes 20 years to build a reputation and five minutes to ruin it. If you think about that, you’ll do things differently. \n- Warren Buffett",
		"One of the huge mistakes people make is that they try to force an interest on themselves. You don't choose your passions; your passions choose you. \n- Jeff Bezos",
		"I have not failed. I’ve just found 10,000 ways that won’t work. \n- Thomas Edison",
		"Logic will get you from A to B. Imagination will take you everywhere. \n- Albert Einstein",
		"As long as you’re going to be thinking anyway, think big. \n- Donald Trump",
		"Success is walking from failure to failure with no loss of enthusiasm \n- Winston Churchill",
		"Genius is 1% inspiration, and 99% perspiration. \n- Thomas Edison",
		"The best way to predict the future is to create it. \n- Peter Drucker",
		"If you cannot do great things, do small things in a great way. \n- Napoleon Hill",
		"I don’t know the key to success, but the key to failure is trying to please everybody. \n- Bill Cosby",
		"Success is not what you have, but who you are. \n- Bo Bennet",
		"Entrepreneurship is living a few years of your life like most people won't so you can spend the rest of your life like most people cant. \n- Warren G. Tracy’s student",
		"To win without risk is to triumph without glory. \n- Corneille",
	]
	
	
	let images = [
	"quotes1",
	"quotes2",
	"quotes3",
	"quotes4",
	"quotes5",
	"quotes6",
	"quotes7",
	"quotes8",
	"quotes9",
	"quotes10",
	"quotes11",
	"quotes12",
	"quotes13",
	"quotes14",
	"quotes15",
	"quotes16",
	"quotes17",
	"quotes18",
	]
	
	@State var currentIndex = 0
	
    var body: some View {
		ZStack {
			Image(images[currentIndex])
				.resizable()
				.scaledToFill()
				.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height )
				.ignoresSafeArea()
			
			VStack(spacing: 40) {
				Text(quotes[currentIndex])
					.font(.title)
					.multilineTextAlignment(.center)
					.padding()
					.frame(width: 300, height: 350)
					.background(.ultraThinMaterial.opacity(0.8))
					.cornerRadius(20)
					.shadow(color: .black.opacity(0.3), radius: 20)
				
				Button("Shuffle") {
					//Next
				//	currentIndex = (currentIndex + 1) % quotes.count
					
					//Shuffle(random)
					currentIndex = Int.random(in: 0..<quotes.count)
				}
				.frame(width: 150, height: 50)
				.foregroundColor(.black)
				.background(.ultraThinMaterial)
				.cornerRadius(10)
				.shadow(color: .black.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
			}
		}
    }
}

#Preview {
    ContentView()
}
