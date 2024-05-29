//
//  CoffeeBeansVariety.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-16.
//

import Foundation

struct CoffeeBeansVariety: Identifiable {
    let id = UUID()
    let nameOfBeans: String
    var image1Name: String
    let history: String
    let image2Name: String
    let flavour: String
}

let typica = CoffeeBeansVariety(
    nameOfBeans: "Typica",
    image1Name: "Typica1",
    history: "Typica coffee is a natural mutation, and one of the two main Arabica varieties recognized worldwide, with the second one being the Bourbon variety. Typica is unfortunately highly susceptible to diseases like coffee leaf rust and other pests, so it is not grown commonly now, but it is well-adapted to the cold (1). Typica plants are known for having bronze leaf tips, being tall and conical in shape, and producing a low yield of large, high-quality coffee beans.",
    image2Name: "Typica2",
    flavour: "Typica coffee tends to have a smoother, sweeter taste, with flavour notes of chocolate and sugar. They often also have hints of fruits or berries."
)

let bourbon = CoffeeBeansVariety(
    nameOfBeans: "Bourbon",
    image1Name: "Bourbon1",
    history: "Bourbon is the most famous of the Bourbon-descended varieties. It is a tall variety characterized by relatively low production, susceptibility to the major diseases, and excellent cup quality. French missionaries introduced Bourbon from Yemen to Bourbon Island (now La Réunion)—giving it the name it has today—in the early 1700s. Until the mid-19th century, Bourbon did not leave the island. But beginning in the mid-1800s, the variety spread to new parts of the world as the missionaries moved to establish footholds in Africa and the Americas.",
    image2Name: "Bourbon2",
    flavour: "Bourbon beans are known for their deep, buttery chocolate flavors, as well as their sweetness and very light fruit overtones."
)

let caturra = CoffeeBeansVariety(
    nameOfBeans: "Caturra",
    image1Name: "Caturra1",
    history: "Caturra is a genetic mutation of Bourbon, first identified outside of a village called Caturra in Brazil. This variety was selected and cultivated for its smaller plant size and higher level of production compared to Bourbon. Caturra tastes similar to Bourbon, but is somewhat brighter.",
    image2Name: "Caturra2",
    flavour: "Caturra's cup profile is usually balanced, sweet, and citrusy with aromas of maple and honey notes."
)

let catimor = CoffeeBeansVariety(
    nameOfBeans: "Catimor",
    image1Name: "Catimor1",
    history: "The Catimor coffee cultivar is an increasingly popular varietal among farmers, producers, and consumers alike. It was originally developed by agricultural scientists Portugal in 1959 with the goal of cultivating a breed of coffee bean that had a high yield and that was easy to grow.",
    image2Name: "Catimor2",
    flavour: "In terms of tasting notes, Coffee made from the Catimor varietal gives off nutty and herbal aromas, and has distinct cherry and berry notes upon tasting."
)

let kona = CoffeeBeansVariety(
    nameOfBeans: "Kona",
    image1Name: "Kona1",
    history: "Kona coffee is a hard bean that forms as a result of the bean variety, the weather, and the rich volcanic soil. Coffee beans harvested in the Kona region have a very high density, which leads to complex bean development during the roasting process and unique and fantastic flavor profiles once brewed.",
    image2Name: "Kona2",
    flavour: "Generally, Kona coffee is known to be smooth, balanced and slightly nutty. Kona coffee generally has a syrupy, medium body and tasting notes like caramel, honey and milk chocolate."
)

let pacamara = CoffeeBeansVariety(
    nameOfBeans: "Pacamara",
    image1Name: "Pacamara1",
    history: "What is Pacamara and why is it special? The Pacamara variety is an intraspecific hybrid developed out of a breeding program housed at El Salvador's Institute for Coffee Research that started back in the 1950s. The two parents of its partial namesake, 'PACA - MARA', are Pacas and Maragogipe. Both are mutations.",
    image2Name: "Pacamara2",
    flavour: "The flavor profile of Pacamara coffee beans is complex, with notes of chocolate, fruit, and floral flavors. The coffee bean is also known for its low acidity and smooth texture, making it a popular choice for coffee lovers who prefer a milder taste."
)

let villalobos = CoffeeBeansVariety(
    nameOfBeans: "Villalobos",
    image1Name: "Villalobos1",
    history: "As part of the Bourbon bean variety, Villalobos (also called Villa Sarchi) is a hardy coffee plant that farmers primarily cultivate in Costa Rica. It grows best in high altitude areas and holds up well against strong winds.",
    image2Name: "Villalobos2",
    flavour: "Villalobos beans are sweet and delightfully acidic with strong berry, fruit, and raw sugar notes. Villalobos beans are often described as complex, with different taste layers emerging throughout the cupping."
)

let erecta = CoffeeBeansVariety(
    nameOfBeans: "Erecta",
    image1Name: "Erecta1",
    history: "Erecta is characterised by a sharp body and neutral flavour, but at the same time has a slight acidity thanks to the always visible pineapple and banana plantations around it. Arabica coffee takes up the remaining 15% of the country's coffee export volume, and though the percentage is low, the variety is high.",
    image2Name: "Erecta2",
    flavour: "Erecta is characterised by a sharp body and neutral flavour, but at the same time has a slight acidity thanks to the always visible pineapple and banana plantations around it."
)

let nganda = CoffeeBeansVariety(
    nameOfBeans: "Nganda",
    image1Name: "Nganda1",
    history: "Robusta coffee is native to Uganda, and the two most common varietals found in the wild are known locally as Nganda and Erecta. Nganda is a Robusta varietal with high caffeine content and high sweetness that’s rare for a Robusta coffee.",
    image2Name: "Nganda2",
    flavour: "Get yourself a bag of Nganda if you enjoy coffees with high acidity and bitterness. The Nganda beans tend to have a flavour profile that is earthy and nutty, especially when compared to a typical cup of arabica coffee."
)

let conilon = CoffeeBeansVariety(
    nameOfBeans: "Conilon",
    image1Name: "Conilon1",
    history: "Predominantly grown in Brazil, Conilon is a robust and disease-resistant variety of Robusta coffee. It is prized for its strong, bold flavor, which makes it a popular choice for blending, especially in espresso. Conilon plants are known for their high productivity and ability to adapt to diverse growing conditions, contributing significantly to Brazil's coffee industry.",
    image2Name: "Conilon2",
    flavour: "Conilon coffee offers an intense, robust flavor with notes of dark chocolate, a smooth, lingering finish, and a slightly smoky undertone."
)

let ugandaRobusta = CoffeeBeansVariety(
    nameOfBeans: "Uganda Robusta",
    image1Name: "UgandaRobusta1",
    history: "Grown primarily in Uganda, this variety is celebrated for its intense and unique flavor profile, which sets it apart from other Robusta beans. Uganda Robusta is well-adapted to the local climate and terrain, thriving in the country's specific growing conditions. Its rich, bold taste is often favored in blends that require a more pronounced coffee flavor.",
    image2Name: "UgandaRobusta2",
    flavour: "Uganda Robusta coffee is strong and distinctive with hints of spice, wood, and a deep, full-bodied finish that is both rich and complex."
)

let kwilu = CoffeeBeansVariety(
    nameOfBeans: "Kwilu",
    image1Name: "Kwilu1",
    history: "This variety is cultivated in the Democratic Republic of Congo and is known for its resilience and adaptability. Kwilu Robusta plants are robust and can withstand various environmental stresses, making them a reliable choice for farmers. The beans produced have a distinctive, full-bodied flavor that adds depth to coffee blends, reflecting the unique terroir of the Congo region.",
    image2Name: "Kwilu2",
    flavour: "Kwilu coffee is bold and earthy with subtle woody and nutty undertones, a robust finish, and a slightly bitter, savory aftertaste."
)

let javaIneac = CoffeeBeansVariety(
    nameOfBeans: "Java-Ineac",
    image1Name: "JavaIneac1",
    history: "Developed in Indonesia, the Java-Ineac variety is a hybrid of Java and Ineac Robustas, aimed at improving both yield and disease resistance. This variety benefits from the best traits of its parent plants, offering a balanced, strong flavor profile. Java-Ineac is particularly valued for its ability to produce high-quality beans consistently, making it a staple in Indonesian coffee production.",
    image2Name: "JavaIneac2",
    flavour: "Java-Ineac coffee has a balanced and strong flavor with a smooth body, featuring hints of dark cocoa, earthy notes, and a rich, lingering aftertaste."
)

let dewevrei = CoffeeBeansVariety(
    nameOfBeans: "Dewevrei",
    image1Name: "Dewevrei1",
    history: "Excelsa, now considered a variety of Liberica, is primarily grown in Southeast Asia. It is known for its unique taste profile and complex flavor characteristics. Excelsa beans are often used in blends to add depth and complexity. The trees are hardy, capable of growing in diverse climates, and produce large, irregularly shaped beans.",
    image2Name: "Dewevrei2",
    flavour: "Excelsa coffee has a unique tart, fruity, and complex flavor with hints of dark berries, light floral notes, and a lingering, tart aftertaste."
)

let vietnameseExcelsa = CoffeeBeansVariety(
    nameOfBeans: "Vietnamese",
    image1Name: "VietnameseExcelsa1",
    history: "Grown predominantly in Vietnam, this variety of Excelsa is cherished for its ability to thrive in the country's varied climate. Vietnamese Excelsa contributes significantly to local coffee blends, enhancing their flavor with its distinctive profile. The trees are resilient, often grown alongside other crops, and produce beans that are highly valued in Vietnamese coffee culture.",
    image2Name: "VietnameseExcelsa2",
    flavour: "Vietnamese Excelsa coffee is fruity and tart with notes of tamarind, a light floral aroma, and a refreshing, slightly acidic finish."
)

let philippineExcelsa = CoffeeBeansVariety(
    nameOfBeans: "Philippine",
    image1Name: "PhilippineExcelsa1",
    history: "Commonly cultivated in the Philippines, this variety of Excelsa is known for its robust growth and adaptability to local conditions. It is an integral part of many traditional Filipino coffee blends, adding a unique depth and character. The beans are irregularly shaped, and the trees are known for their resistance to diseases and pests.",
    image2Name: "PhilippineExcelsa2",
    flavour: "Philippine Excelsa coffee offers a bold, fruity flavor with hints of dark berries, tamarind, and a distinct, tart aftertaste."
)

let cambodianExcelsa = CoffeeBeansVariety(
    nameOfBeans: "Cambodian",
    image1Name: "CambodianExcelsa1",
    history: "Excelsa beans grown in Cambodia are recognized for their ability to thrive in the country's warm, humid climate. These beans contribute to local coffee culture by providing a unique flavor that stands out in blends. The trees are hardy, capable of withstanding challenging growing conditions, and produce beans that are prized for their distinctive taste.",
    image2Name: "CambodianExcelsa2",
    flavour: "Cambodian Excelsa coffee is known for its tart, fruity flavor with a unique blend of dark berry notes and a lingering, slightly acidic aftertaste."
)

let thaiExcelsa = CoffeeBeansVariety(
    nameOfBeans: "Thai Excelsa",
    image1Name: "ThaiExcelsa1",
    history: "Cultivated in Thailand, this variety of Excelsa is noted for its ability to grow in diverse environmental conditions. Thai Excelsa beans are a crucial component of local coffee blends, adding complexity and depth to the flavor profile. The trees are robust and produce large, irregularly shaped beans that are highly valued in Thai coffee culture.",
    image2Name: "ThaiExcelsa2",
    flavour: "Thai Excelsa coffee has a complex, fruity flavor with a tart, berry-like taste, light floral notes, and a refreshing, lingering aftertaste."
)

let barako = CoffeeBeansVariety(
    nameOfBeans: "Barako",
    image1Name: "Barako1",
    history: "Known locally as 'Barako,' Philippine Liberica is a beloved variety in the Philippines. It is highly valued for its strong, bold flavor and distinct aroma. The trees are well-suited to the tropical climate, and the beans are larger and more robust than those of other coffee species. Barako is a significant part of the Philippine coffee tradition.",
    image2Name: "Barako2",
    flavour: "Barako coffee offers a bold, smoky flavor with strong woody notes, hints of dark chocolate, and a slightly fruity, lingering finish."
)

let malaysianLiberica = CoffeeBeansVariety(
    nameOfBeans: "Malaysian",
    image1Name: "MalaysianLiberica1",
    history: "Cultivated mainly in Malaysia, this variety of Liberica is known for its unique flavor profile and adaptability to the local climate. The beans are larger and irregularly shaped, and the trees are hardy, making them suitable for various growing conditions. Malaysian Liberica is often used in blends to enhance complexity.",
    image2Name: "MalaysianLiberica2",
    flavour: "Malaysian Liberica coffee has a robust, smoky flavor with woody undertones, a touch of dark chocolate, and a slightly floral, fruity aftertaste."
)

let indonesianLiberica = CoffeeBeansVariety(
    nameOfBeans: "Indonesian",
    image1Name: "IndonesianLiberica1",
    history: "Grown in parts of Indonesia, Liberica coffee from this region is recognized for its distinctive taste and adaptability. The trees thrive in Indonesia's tropical climate and produce large, irregularly shaped beans. Indonesian Liberica is used to add depth and complexity to coffee blends, contributing to the local coffee culture.",
    image2Name: "IndonesianLiberica2",
    flavour: "Indonesian Liberica coffee features a smoky, woody flavor with notes of dark chocolate, subtle floral hints, and a lingering, slightly fruity finish."
)

let liberianLiberica = CoffeeBeansVariety(
    nameOfBeans: "Liberian",
    image1Name: "LiberianLiberica1",
    history: "Originating from Liberia, this variety of Liberica is known for its unique and robust flavor profile. The trees are tall and capable of growing in diverse climates, producing large beans that are irregularly shaped. Liberian Liberica is used to add a distinctive character to coffee blends, enhancing their overall complexity.",
    image2Name: "LiberianLiberica2",
    flavour: "Liberian Liberica coffee has a strong, smoky flavor with woody and dark chocolate notes, a hint of floral aroma, and a slightly fruity, lingering aftertaste."
)

let allArabicaBeans = [typica, bourbon, caturra, catimor, kona, pacamara, villalobos]
let allRobustaBeans = [erecta, nganda, conilon, ugandaRobusta, kwilu, javaIneac]
let allExcelsaBeans = [dewevrei, vietnameseExcelsa, philippineExcelsa, cambodianExcelsa, thaiExcelsa]
let allLibericaBeans = [barako, malaysianLiberica, indonesianLiberica, liberianLiberica]
let allVarieties = [allArabicaBeans, allRobustaBeans, allExcelsaBeans, allLibericaBeans]

