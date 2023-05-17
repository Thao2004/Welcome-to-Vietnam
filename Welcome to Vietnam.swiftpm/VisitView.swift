//
//  VisitView.swift
//  Welcome to Vietnam
//
//  Created by Thao Nguyen on 4/12/23.
//

import SwiftUI

struct VisitView: View {
    //estimate the position of the locations
    let locations = [
        ("Sapa", 190.0, 140.0),
        ("Ha Noi", 350.0, 200.0),
        ("Ha Long", 500.0, 210.0),
        ("Hue", 430.0, 450.0),
        ("Da Nang", 470.0, 515.0),
        ("Hoi An", 500.0, 555.0),
        ("Nha Trang", 600.0, 710.0),
        ("Da Lat", 580.0, 760.0),
        ("Ho Chi Minh", 470.0, 880.0),
        ("Vung Tau", 550.0, 930.0),
        ("Can Tho", 380.0, 950.0),
        ("Phu Quoc", 200.0, 950.0),
    ]

    var body: some View {
        Image("vietnam_map")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                ZStack {
                    ForEach(locations, id: \.0) { location in
                        let name = location.0
                        let x = location.1
                        let y = location.2
                        LocationButtonView(locationName: name, destinationView: AnyView(getDestinationView(for: name)))
                            .position(x: x, y: y)
                    }
                }
            )
    }

    private func getDestinationView(for locationName: String) -> some View {
        switch locationName {
        case "Sapa":
            return AnyView(SapaView())
        case "Ha Noi":
            return AnyView(HaNoiView())
        case "Ha Long":
            return AnyView(HaLongView())
        case "Hue":
            return AnyView(HueView())
        case "Da Nang":
            return AnyView(DaNangView())
        case "Hoi An":
            return AnyView(HoiAnView())
        case "Nha Trang":
            return AnyView(NhaTrangView())
        case "Da Lat":
            return AnyView(DaLatView())
        case "Ho Chi Minh":
            return AnyView(HoChiMinhView())
        case "Vung Tau":
            return AnyView(VungTauView())
        case "Can Tho":
            return AnyView(CanThoView())
        case "Phu Quoc":
            return AnyView(PhuQuocView())
        default:
            return AnyView(Text("Unknown location"))
        }
    }
}
 
//defines card view to display each city
struct CardView: View {
    let imageName: String
    let title: String
    let description: String


    var body: some View {
        VStack(alignment: .leading) {
           
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 330)
                .clipped()

            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .font(.system(size: 27))
                Text(description)
                    .foregroundColor(.black)
                    .font(.system(size: 22))
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
        )
        .padding()
        .shadow(radius: 5)
    }
}

//information for each location
struct SapaView: View {
    var body: some View {
        Text("Sapa")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Sapa is a town in the province of Lao Cai in Vietnam's northern region. It is famous for its picturesque sceneries, which include terraced rice fields, rolling hills, and misty mountains. It is also home to many ethnic minority groups, including the Hmong, Dao, and Tay, who have preserved their unique customs and traditions. Sapa has become a popular tourist destination, attracting people interested in trekking, hiking, and learning about the local culture.")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "fansipan", title: "Fansipan", description: "Fansipan, at 3,143 meters (10,312 ft), is the highest peak in Vietnam and Indochina. It is situated in the Hoang Lien Son mountain range in northwest Vietnam, close to the border with China. Fansipan is noted for its amazing natural beauty, with the summit providing breathtaking views of the surrounding scenery of dense forests, deep valleys, and twisting rivers. The trek up to Fansipan is a difficult but rewarding journey, with visitors going through a range of terrains and habitats, including bamboo woods, mossy forests, and alpine meadows.")
                CardView(imageName: "silver_waterfall", title: "Silver Waterfall", description: "Visitors can also view the wonderful natural scenery and immerse themselves in the majestic environment along the road to Sa Pa Silver Waterfall, such as pine forests, chayote gardens spread on the slope, the wings Lush fields all year round... Will make tourists forget about their tiredness from the lengthy journey. Exploring Silver Waterfall is undoubtedly one of the most memorable aspects of a trip to Sapa.")
                CardView(imageName: "cat_cat", title: "Cat Cat Village", description: "Coming to Cat Cat Village, you will enjoy a colorful picture in all 4 seasons. In spring, all kinds of peach and plum flowers bloom. In the summer is the appearance of a field of ecstatic yellow canola flowers. In the fall, the terraced rice fields create a beautiful and touching yellow color. In winter, there will be white colors covering the branches. After passing through the welcome gate, you will walk down a beautiful little stone path, nestled between two blocks of traditional souvenir shops. Enjoy this walk and sometimes you should stop to admire the majestic scenery with simple, idyllic houses and immense terraced fields.")
            }
            .padding()
        }
        .navigationTitle("Sapa")
    }
}

struct HaNoiView: View {
    var body: some View {
        Text("Ha Noi City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Hanoi is the capital and second-largest city of Vietnam. It is a vibrant city with a rich history, a thriving culture, and a unique blend of traditional and modern elements. Hanoi is known for its colonial architecture, narrow streets filled with scooters, delicious street food, and numerous cultural and historical landmarks.")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "ba_dinh_square", title: "Ba Dinh Square", description: "Ba Dinh Square is a large open space surrounded by government buildings, including the Ho Chi Minh Mausoleum, the Presidential Palace, and the National Assembly Building. The square is considered the political center of Vietnam, and many important events and ceremonies are held here, including the annual Independence Day parade on September 2nd. It is also a popular tourist destination, offering visitors a glimpse into the country's history and culture.")
                CardView(imageName: "temple_of_literature", title: "The Temple of Literature", description: "The Temple of Literature is a famous historical site in Hanoi. It was originally built in 1070. Over time, the temple became a center of learning and education, and was home to Vietnam's first national university, the Imperial Academy, which was founded in 1076. Today, the Temple of Literature is a popular tourist attraction, attracting visitors from all over the world who come to explore its beautiful architecture, tranquil gardens, and rich history. ")
                CardView(imageName: "sword_lake", title: "The Sword Lake", description: "The Sword Lake, also known as Hoan Kiem Lake, is a popular landmark in the heart of Hanoi. The lake is surrounded by green parks and bustling streets and is known for its scenic beauty and cultural significance. The name of it comes from an ancient legend about a magical sword that was given to the Vietnamese emperor by a golden turtle god, and which was later returned to the turtle in the depths of the lake. Today, the lake is a popular spot for tourists and locals alike to relax, take a stroll, or engage in various recreational activities.")
            }
            .padding()
        }
        .navigationTitle("Ha Noi")
    }
}

struct HaLongView: View {
    var body: some View {
        Text("Ha Long City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Ha Long Bay has been designated as a World Natural Heritage Site by Unesco several times, with hundreds of islets formed by a spectacular and active creation. Because of its gorgeous environment, Ha Long Bay is a popular tourist attraction for both local and international visitors.")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "ha_long_bay", title: "Ha Long Bay", description: "Ha Long Bay stands out with its beautiful system of rocky islands and caves. It is a unique heritage because this place contains important vestiges in the formation and development of the earth's history, is the cradle of the ancient Vietnamese people, and is also a work of art. The great shape of nature with the presence of thousands of rocky islands of all shapes and sizes, with many interesting caves gathering into a world that is both vivid and mysterious.")
                CardView(imageName: "night_market", title: "Ha Long's Night Market", description: "The night market is a cultural element of Vietnam. When you arrive at the Ha Long night market, you will notice a large number of stalls and vendor carts on both sides of the road, as well as a long line of people. Visiting Vietnam, you will have many opportuinites to enjoy the hustle and bustle of the night market. You can eat a variety of specialized foods and buy souvenirs for your family here.")
                CardView(imageName: "ba_vang_pagoda", title: "Ba Vang Pagoda", description: "The pagoda is located on a very beautiful location at an altitude of 340m, the front is a long river, the back is leaning against the mountain and the two sides are pine forests stretching green. Traveling to Ba Vang Pagoda is to come to the sacred and mysterious Buddha land - a beautiful scene that captivates people's hearts.")
            }
            .padding()
        }
        .navigationTitle("Ha Long")
    }
}

struct HueView: View {
    var body: some View {
        Text("Hue City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Hue is a city located in central Vietnam, about halfway between Hanoi and Ho Chi Minh City. It was once the capital of Vietnam during the Nguyen dynasty (1802-1945) and is known for its rich history, culture, and architecture. Hue is also known for its cuisine, which is considered to be some of the best in Vietnam. Some of the most popular dishes include bun bo Hue (spicy beef noodle soup), banh khoai (a type of savory pancake), and nem lui (grilled pork skewers).")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "hue_imperial", title: "Imperial City of Hue", description: "Imperial City of Hue is recognized as the UNESCO World Heritage Site, which was the seat of the Nguyen emperors and their household from 1802 to 1945. The Imperial City is a massive complex of palaces, temples, and other buildings that were once the heart of the Vietnamese court. It is also famous for its unique architecture, which combines both traditional Vietnamese and French styles.")
                CardView(imageName: "thien_mu", title: "Thien Mu Pagoda", description: "Thien Mu Pagoda is located on the banks of the Huong River (or Perfume River). The pagoda is one of the oldest and most revered religious sites in Vietnam, and it has a tall, seven-story tower that offers panoramic views of the surrounding area. The Thien Mu Pagoda complex also includes several shrines, halls, and gardens, all of which are meticulously decorated with traditional Vietnamese architectural and artistic elements.")
                CardView(imageName: "thuy_tien", title: "Thuy Tien Lake", description: "Thuy Tien Lake is an abandoned water park located in the outskirt of Hue. It is home to several abandoned structures, including a dragon-shaped amphitheater, a giant concrete lotus flower, and a dilapidated waterpark with rusted slides and pools. Despite its state of disrepair, the park still retains a certain eerie beauty and has become a popular tourist attraction in recent years.")
            }
            .padding()
        }
        .navigationTitle("Hue")
    }
}

struct DaNangView: View {
    var body: some View {
        Text("Da Nang City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Da Nang is a beautiful city located in the South Central Coast of Vietnam. It is one of the most famous coastal cities in Vietnam with its own charisma and culture. It is recognized as the best city to live in Vietnam. There are many reasons for this claim: the scenery is picturesque, the food is varied and delicious, and have many dreamy beaches.")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "danang_beach", title: "Da Nang Beach", description: "Da Nang has many wondeful beaches. It is famous for the intoxicated beaches. Some of the famous beaches at Da Nang included: My Khe beach, Non Nuoc beach, Nam O beach,... . Each beach has its own characteristic and beauty. Besides, at the beaches, there are many different activities and sports that you can involve in, for example: scuba diving, windsurfing, water skiing, snorkeling,... ")
                CardView(imageName: "golden_bridge", title: "The Golden Bridge", description: "Golden Bridge is one of the most famous constructions in Da Nang. It is also known as the Ba Na Hills Hand Bridge because it has a hand that looks like holding the bridge up across the sky and located in Ba Na Hills. The bridge does not cross any river but like a silk strip across the sky. It attracts many tourists every year and is a best placces to have many selfies and pictures.")
                CardView(imageName: "dragon_bridge", title: "The Dragon Bridge", description: "The Dragon Bridge is another popular bridge in Da Nang. Perhaps, it is more well-known than the Golden Bridge one because it has been there for a longer time and it has a better location. It is located right at the center of Da Nang Cityw where many hotels and entertainment plaves gather there. It is not only has a shaped of a dragon but also if you are lucky enough you will be there when the dragon bridge is blowing fire and spraying water. So if you come to Da Nang, make sure to see the schedule of the dragon bridge to have a real experience of the amazing bridge. ")
            }
            .padding()
        }
        .navigationTitle("Da Nang")
    }
}


struct HoiAnView: View {
    var body: some View {
        Text("Hoi An City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Hoi An is a charming ancient town located in central Vietnam, known for its well-preserved architectural heritage and cultural significance. The town is famous for its colorful lanterns, which adorn the streets and riverfront at night, creating a magical atmosphere. The attraction of the city is its ancient and peaceful beauty. At the same time, it is also famous for its cultural dishes.")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "hoi_an_buildings", title: "Hoi An buildings", description: "One of Hoi An's distinctive characteristics is its ancient architecture, which evokes a sense of nostalgia. Every year, these residences are meticulously maintained in order to preserve the cultural grandeur of this ancient city.")
                CardView(imageName: "lantern_river", title: "Lantern Festival", description: "The Lantern Festival takes place on the 14th day of each lunar month. During the festival, the entire ancient town of Hoi An is illuminated by thousands of colorful lanterns, creating a surreal and enchanting atmosphere. Locals and tourists alike flock to the streets to witness the spectacle, which includes traditional performances, food vendors, and the release of paper lanterns onto the Thu Bon River. Visitors can purchase their own lanterns to release, adding to the beauty and symbolism of the event.")
                CardView(imageName: "lantern_market", title: "Lantern Market", description: "Because lanterns are one of the traits that distinguish Hoi An, you will come across stalls selling lanterns of all colors and shapes as you go through the markets. These are excellent souvenirs for visitors to buy in Hoi An.")
                CardView(imageName: "bridge_temple", title: "The Bridge Temple", description: "The Bridge Temple is a historical landmark located in the ancient town of Hoi An, Vietnam. It is a wooden bridge that was constructed in the 16th century by Japanese traders to connect the Japanese and Chinese quarters of the town. The Bridge Temple is an iconic symbol of Hoi An, and it attracts many tourists every year who come to admire its beauty and learn about its history.")
            }
            .padding()
        }
        .navigationTitle("Hoi An")
    }
}

struct NhaTrangView: View {
    var body: some View {
        Text("Nha Trang City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Nha Trang is a coastal city located in the south-central region of Vietnam. It is known for its beautiful beaches, clear blue waters, and vibrant nightlife. The city is surrounded by mountains, islands, and bays, offering breathtaking natural scenery.")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "doc_let_beach", title: "Beaches", description: "One of the most popular attractions in Nha Trang is the long stretch of sandy beach which is perfect for swimming, sunbathing, and water activities such as jet-ski, banana boat, parasaling, and so on. The beaches in Nha Trang are characterized by soft golden sands and calm, turquoise waters.")
                CardView(imageName: "hon_tre", title: "Hon Tre Island", description: "Hon Tre Island is a beautiful island which offers a wide range of activities and attractions for visitors to enjoy. Visitors can enjoy swimming, sunbathing, and snorkeling on the island's beautiful beaches, or take a cable car ride from the mainland to the island for a scenic view of the bay. It also offers a variety of dining options, including seafood restaurants and cafes with ocean views.")
                CardView(imageName: "vinpearl_nha_trang", title: "Vinpearl Nha Trang", description: "Vinpearl Nha Trang is a luxurious resort located on Hon Tre Island. In addition to the luxurious accommodations, Vinpearl Nha Trang also features a variety of dining options to suit all tastes. From fine dining restaurants to casual cafes and bars, guests can indulge in delicious Vietnamese and international cuisine. The resort also boasts a range of entertainment options, including a water park, amusement park, golf course, and spa.")
            }
            .padding()
        }
        .navigationTitle("Nha Trang")
    }
}

struct DaLatView: View {
    var body: some View {
        Text("Da Lat City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Dalat is a city located in the central highlands of Vietnam, surrounded by rolling hills, pine forests, and picturesque lakes. The city has a temperate climate, with cooler temperatures than most other parts of Vietnam, making it a popular destination for tourists. It is also known as a City of Love.")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "datanla_waterfall", title: "Datanla Waterfall", description: "The waterfall flows into a crystal-clear pool of water, creating a refreshing and relaxing atmosphere for visitors. To reach the waterfall, visitors can take a scenic ride on the Datanla Alpine Coaster, which is a thrilling and unique experience. The coaster ride takes visitors through the lush green forest and provides spectacular views of the waterfall and surrounding areas. Visitors can also enjoy various activities such as swimming, hiking, and picnicking in the beautiful surroundings.")
                CardView(imageName: "valley_of_love", title: "Valley of Love", description: "The Valley of Love is known for its natural beauty and charming landscape, with a wide range of attractions for visitors. It is a popular spot for couples and tourists who come to enjoy the fresh air, scenic views, and various outdoor activities. Visitors can take a leisurely stroll around the lake, rent a swan-shaped paddle boat, or take a horse-drawn carriage ride to explore the valley. There are also several colorful flower gardens and romantic spots scattered throughout the valley, including heart-shaped arches, love lock bridges, and various love-themed sculptures.")
                CardView(imageName: "da_lat_night_market", title: "Da Lat's Night Market", description: "The night market in Da Lat is known for its lively atmosphere and colorful displays. The market stalls are adorned with twinkling lights, and the air is filled with the aromas of local Vietnamese street food. Visitors can expect to find a wide variety of items for sale, including clothing, handicrafts, souvenirs, local produce, and more.One of the highlights of the Da Lat night market is the street food scene. There are numerous food stalls offering a wide array of delicious Vietnamese dishes there.")
            }
            .padding()
        }
        .navigationTitle("Da Lat")
    }
}

struct HoChiMinhView: View {
    var body: some View {
        Text("Ho Chi Minh City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Ho Chi Minh City, also known as Saigon, is the largest city in Vietnam, located in the southern region of the country. It is the economic hub of Vietnam, with a population of over 9 million people. It is a bustling metropolis with a mix of modern skyscrapers and historic landmarks. It has a vibrant nightlife and a diverse culinary scene, with street food vendors and restaurants serving traditional Vietnamese dishes as well as international cuisine.")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "ben_thanh_market", title: "Ben Thanh Market", description: "Ben Thanh Market is a bustling marketplace located in the heart of Ho Chi Minh City, Vietnam. It is one of the city's most famous landmarks and a major tourist attraction. The market is housed within a large, covered structure and features a wide variety of stalls selling a range of goods, including food, clothing, handicrafts, souvenirs, and electronics.In addition to shopping, Ben Thanh Market is also a popular destination for foodies, with numerous food stalls selling traditional Vietnamese dishes.")
                CardView(imageName: "bitexco_tower", title: "Bitexco Financial Tower", description: "It is one of the tallest buildings in the city, standing at a height of 262 meters with 68 floors above ground and three basement levels. The tower's design is inspired by the shape of a lotus bud, which is a significant symbol in Vietnamese culture. Visitors can enjoy panoramic views of the city from the observation deck located on the 49th floor. The observation deck features a glass floor, providing a unique perspective of the city below. ")
                CardView(imageName: "notre_dame_cathedral_of_saigon", title: "Notre Dame Cathedral of Sai Gon", description: "The Notre Dame Cathedral of Saigon is a Cathedral located in the heart of Ho Chi Minh city. It is near to the Ben Thanh Market. The building's exterior features intricate stone carvings and stained glass windows, while the interior is decorated with religious statues, frescoes, and an ornate altar. It is a popular destination for both tourists and worshippers, and serves as an important religious and cultural center in the city. There are many couples come to take wedding pictures here. ")
            }
            .padding()
        }
        .navigationTitle("Ho Chi Minh")
    }
}

struct VungTauView: View {
    var body: some View {
        Text("Vung Tau City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Vung Tau is a coastal city located in the southeast region of Vietnam. It is known for its beautiful beaches, seafood, and French colonial architecture. The city has a mix of modern high-rise buildings and traditional Vietnamese houses.")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "vung_tau_beach", title: "Vung Tau Beach", description: "Vung Tau's main attractions are its beaches, which include Front Beach, Back Beach, Pineapple Beach, and Paradise Beach. Visitors can relax on the sand, swim in the clear waters, or enjoy water sports like jet skiing and parasailing. The beach is a long, sandy stretch of coastline that offers clear blue waters and spectacular views of the surrounding hills and ocean.")
                CardView(imageName: "hon_ba_island", title: "Hon Ba Island", description: "Hon Ba Island is one of the interesting places to visit in Vung Tau. There are two ways to get to the island: by boat or by foot through the long stone road that links the island to the mainland. Most tourists will choose the road to explore. To go to this road, visitors need to watch the time because the road only appears at low tide and will disappear after a while.")
                CardView(imageName: "jesus_christ_statue", title: "Jesus Christ Statue", description: "The statue, also known as Christ the King, stands at a height of 32 meters and overlooks the city and the sea. The Jesus Christ Statue is an important religious symbol for many Vietnamese Christians and a popular tourist attraction for visitors to Vung Tau. It is also illuminated at night, providing a stunning view of the city from afar.")
            }
            .padding()
        }
        .navigationTitle("Vung Tau")
    }
}

struct CanThoView: View {
    var body: some View {
        Text("Can Tho City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Can Tho is a vibrant city located in the heart of the Mekong Delta in southern Vietnam. It is known for its picturesque waterways, bustling floating markets, and a rich agricultural heritage. Can Tho is also a food lover's paradise, with an abundance of delicious local cuisine to try out.")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "cai_rang_floating_market", title: "Cai Rang Floating Market", description: "Cai Rang Floating Market is a vibrant and bustling market located on the Cai Rang River. It is one of the largest floating markets in the Mekong Delta region and attracts a large number of tourists every year. This is a unique culture of people in the Mekong Delta region. The market starts early in the morning when boats loaded with various fruits, vegetables, and other goods gather on the river. The vendors hang their goods on long poles on their boats, making it easy for customers to see what they are selling. Buyers can approach the vendors by boat or by standing on the bank of the river.")
                CardView(imageName: "bang_lang", title: "Bang Lang Stork Sanctuary", description: "Bang Lang Stork Sanctuary covers an area of over 1.3 hectares and is a home to thousands of storks, which make it a popular destination for birdwatchers and nature enthusiasts. The birds can be seen roosting on trees, flying overhead, or foraging in the wetlands. Visitors can also take a boat ride to explore the sanctuary and get a closer look at the storks in their natural habitat. Aside from bird watching, visitors can also enjoy the tranquil natural surroundings and learn more about the local culture and way of life. The sanctuary is situated amidst a rural area of Vietnam, which offers a glimpse into the traditional lifestyle of the local communities.")
                CardView(imageName: "tay_do", title: "Tay Do Night Market", description: "It is a popular destination for tourists and locals alike who want to enjoy delicious food, shop for souvenirs, and experience the local culture. The market is known for its vibrant and lively atmosphere with hundreds of vendors selling various goods such as clothing, accessories, handicrafts, and traditional Vietnamese foods.")
            }
            .padding()
        }
        .navigationTitle("Can Tho")
    }
}

struct PhuQuocView: View {
    var body: some View {
        Text("Phu Quoc City")
            .fontWeight(.bold)
            .font(.system(size: 35))
            .foregroundColor(.primary)
            .padding(.vertical)
        Text("Phu Quoc is known for its pristine beaches, turquoise waters, and lush tropical forests. ")
            .padding(.horizontal)
            .font(.system(size: 20))
        ScrollView {
            VStack (spacing: 20) {
                CardView(imageName: "phu_quoc", title: "Phu Quoc Island", description: "It is the largest island in Vietnam, covering an area of around 574 square kilometers. The island is also a popular tourist destination and offers a range of activities, including swimming, snorkeling, diving, fishing, and exploring the island's many nature reserves and national parks.")
                CardView(imageName: "sunset", title: "Sunset Sanato", description: "Sunset Sanato is a breathtaking resort located on the picturesque island of Phu Quoc. One of the most unforgettable experiences here is witnessing the sunset over the ocean. The warm hues of the sun casting a golden glow on the crystal-clear waters is simply awe-inspiring. In addition to the stunning surroundings, guests can indulge in a variety of activities, including water sports, yoga, and cycling.")
                CardView(imageName: "vinpearl", title: "Vinpearl Land", description: "It is a large amusement park where visitors can enjoy thrilling rides such as the roller coaster, drop tower, and giant swing, or they can take a leisurely ride on the cable car which offers breathtaking views of the surrounding landscape. There is also a water park with a variety of pools and slides to cool off in on hot days. In addition to the rides, Vinpearl Land Phu Quoc also has an aquarium where visitors can see a variety of sea creatures up close. The park also features a shopping area, restaurants serving a range of cuisines, and live entertainment shows. This is a popular destination for families and friends looking to have a fun-filled day on the island.")
            }
            .padding()
        }
        .navigationTitle("Phu Quoc")
    }
}

struct LocationButtonView: View {
    let locationName: String
    let destinationView: AnyView

    @State private var isPresented = false

    var body: some View {
        Button(action: {
            self.isPresented.toggle()
        }) {
            Text(locationName)
                .font(.system(size: 25))
                .bold()
                .foregroundColor(.white)
                .padding(10)
                .background(Color.yellow)
                .cornerRadius(20)
        }
        .sheet(isPresented: $isPresented) {
            self.destinationView
        }
    }
}

struct VisitView_Previews: PreviewProvider {
   static var previews: some View {
       VisitView()
           .previewInterfaceOrientation(.portrait)
           .previewDevice(PreviewDevice(rawValue: "iPad Air (5th generation)"))
   }
}
