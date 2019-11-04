//
//  QuestionBank.swift
//  Yay or Nay
//
//  Created by Rustem Supayev on 18/10/2019.
//  Copyright © 2019 Zeebagzo Lab. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        // Creating a quiz item and appending it to the list
        list.append(Question(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: false, description: "An old tradition but kept in the dark for too long has made its appearance in the Kingdom of Saudi Arabia on Feb 2018."))
        
        list.append(Question(text: "A slug\'s blood is green.", correctAnswer: true, description: "The proteins in slug blood carry copper which gives the blood a bluish green color."))
        
        list.append(Question(text: "Ocean floor is discovered better than surface of Mars.", correctAnswer: false, description: "The ocean takes up about 71 percent of Earth's space, yet a whopping 95 percent of that ocean is completely unexplored."))
        
        list.append(Question(text: "Only female mosquitos bite humans.", correctAnswer: true, description: "The female mosquito is the one that bites. She requires blood to produce eggs.Males feed on flower nectar"))
        
        list.append(Question(text: "Keeping dogs as pets is banned in Iceland.", correctAnswer: true, description: "The official ban on dogs in Reykjavík was issued in 1924 after it was discovered that dogs were the carriers of echinococcosis."))
        
        list.append(Question(text: "Longest sniper kill was 3.5 kilometres long.", correctAnswer: false, description: "The current record holder is an anonymous sniper from the Joint Task Force 2, a unit of the Canadian Forces who managed a successful sniper kill at a range of 3,871 yards during the Iraq Civil War."))
        
        list.append(Question(text: "Nigeria is the largest country without rivers.", correctAnswer: false, description: "Saudi Arabia is the world's largest country without a river."))
        
        list.append(Question(text: "Iguanas have three eyes.", correctAnswer: true, description: "Also known as a parietal eye, this organ is used to alert iguanas (as well as other reptiles) of aerial threats."))
        
        list.append(Question(text: "Apple Inc. used to have a clothing line.", correctAnswer: true, description: "In 1986, Apple Launched a clothing line. With a brilliant sense of product design and a knack for always knowing exactly what their customers want next, Apple has developed a cult-like following in its 40 years in business."))
        
        list.append(Question(text: "Camels originate from Middle East.", correctAnswer: false, description: "Camels actually originated in North America some 45 million years ago. Between 3 and 5 million years ago, they crossed the Bering land bridge to Eurasia and eventually migrated south."))
        
        list.append(Question(text: "Sealand is the country built on a ocean military platform.", correctAnswer: true, description: "The Principality of Sealand is a micronation that claims Roughs Tower, an offshore platform in the North Sea approximately 12 kilometres (7.5 mi) off the coast of Suffolk, as its territory."))
        
        list.append(Question(text: "Cows never existed in wildlife.", correctAnswer: false, description: "There are no wild cows anymore. This is actually a fairly recent development. All the domestic cows on Earth are descended from a single species of wild cow, called Bos primigenius."))
        
        list.append(Question(text: "Apple seeds are poisonous.", correctAnswer: true, description: "Apple seeds contain a compound called amygdalin. When the seeds are chewed or digested, amygdalin degrades into hydrogen cyanide."))
        
        list.append(Question(text: "Tokyo metropolitan area has bigger population than Canada.", correctAnswer: true, description: "The Greater Tokyo Area is the most populous metropolitan area in the world with a population of 38 million people."))
        
        list.append(Question(text: "People can marry a dead person in France.", correctAnswer: true, description: "Posthumous marriage became legal in France by Article 171 of the civil code."))
        
        list.append(Question(text: "It`s illegal to be overweight in Japan.", correctAnswer: true, description: "Japanese lawmakers set a maximum waistline size for anyone age 40 and older: 85 centimeters (33.5 inches) for men and 90 centimeters (35.4 inches) for women."))
        
        list.append(Question(text: "It rains diamonds in Jupiter and Saturn.", correctAnswer: true, description: "Lightning storms turn methane into soot which hardens into chunks of graphite and then diamond as it falls."))
        
        list.append(Question(text: "Rice is the most produced grain in the world.", correctAnswer: false, description: "Maize has become a staple food in many parts of the world, with total production surpassing that of wheat or rice. However, not all of this maize is consumed directly by humans."))
        
        list.append(Question(text: "'Titanic' was the first movie with a budget over $100 million.", correctAnswer: false, description: "True Lies is a 1994 American action comedy thriller film written, directed and co-produced by James Cameron.The budget of the movie estimates to be around $120.000.000"))
        
        list.append(Question(text: "CD games on first Play Station had smells on them.(i.e. FIFA - smell of pith, Grand Turismo 2 - smell of tyres)", correctAnswer: true, description: "Scratch and sniff technology generally refers to stickers or cardboard items that have been treated with a fragrant coating. When scratched, the coating releases an odor that is normally related to the image displayed under the coating."))
        
        list.append(Question(text: "Beard will grow faster if it`s shaved everyday.", correctAnswer: false, description: "Shaving your facial hair or any part of your body for that matter will not make it grow back faster. There is nothing proven scientifically."))
        
        list.append(Question(text: "World Cup 2022 will be held in a city that doesn`t even exist yet.", correctAnswer: true, description: "Lusail is a planned city in Qatar.Lusail is located about 23 km north of the city centre of Doha, just north of the West Bay Lagoon, on over 38 km² and will eventually have the infrastructure to accommodate 450,000 people."))
        
        list.append(Question(text: "SOS stands for 'save our souls'.", correctAnswer: false, description: "SOS is just a continuous Morse code string of three dots, three dashes, and three dots all run together with no spaces or full stops (…---…)"))
        
        list.append(Question(text: "Distance between Russia and the U.S. is only 4 kilometres.", correctAnswer: true, description: "At their closest point, the distance between the United States and Russia is less than 4 kilometres. Although the countries are divided by the Bering Strait, which is 53 kilometres wide at its narrowest point, there are two islands located in its centre. While Big Diomede belongs to Russia, Little Diomede belongs to the United States."))
        
        list.append(Question(text: "Adolf Hitler was nominated for the Nobel Peace Prize.", correctAnswer: true, description: "Adolf Hitler was nominated for the Nobel Peace Prize in 1939 by a member of the Swedish parliament, E.G.C. Brandt."))
        
        list.append(Question(text: "The oldest continuously running hotel is almost 2000 years old.", correctAnswer: true, description: "The Nishiyama Onsen Keiunkan hot spring hotel in Japan dates from the year 705, and has been in continuous operation ever since. It claims to be the world's oldest hotel, and one of the most ancient businesses still running."))
        
        list.append(Question(text: "Shortest regular flight lasts less than a minute.", correctAnswer: true, description: "The Loganair Westray to Papa Westray route is one of the shortest scheduled passenger flights in the world. Flights on the route are scheduled for one and a half minutes, and actual flying time is closer to one minute. The record for the fastest flight is 53 seconds."))
        
        list.append(Question(text: "Unicorn considered national animal in Scotland.", correctAnswer: true, description: "The national symbols of Scotland are flags, icons or cultural expressions that are emblematic, representative or otherwise characteristic of Scotland or Scottish culture."))
        
        list.append(Question(text: "Carrots has always been orange color.", correctAnswer: false, description: "The Dutch grew carrots in the traditional hues of purple, yellow, and white. In the 17th century, a strain of carrot was developed that contained higher amounts of beta carotene - the first orange carrot."))
        
        list.append(Question(text: "France has 12 time zones.", correctAnswer: true, description: "The country uses 12 time zones, the highest in the world because it has several overseas territories."))
        
        
    }
    
}


