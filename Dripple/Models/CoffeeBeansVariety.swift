//
//  CoffeeBeansVariety.swift
//  Dripple
//
//  Created by Fiona ZHOU on 2024-05-16.
//

import Foundation

struct CoffeeBeansVariety: Identifiable {
    let id = UUID()
    let NameOfBeans: String
    var Image1Name: String
    let History: String
    let Image2Name: String
    let Flavour: String
}

let Typica = CoffeeBeansVariety(
    NameOfBeans: "Typica",
    Image1Name: "Typica1",
    History: "Typica coffee is a natural mutation, and one of the two main Arabica varieties recognized worldwide, with the second one being the Bourbon variety. Typica is unfortunately highly susceptible to diseases like coffee leaf rust and other pests, so it is not grown commonly now, but it is well-adapted to the cold (1). Typica plants are known for having bronze leaf tips, being tall and conical in shape, and producing a low yield of large, high-quality coffee beans.",
    Image2Name: "Typica2",
    Flavour: "Typica coffee tends to have a smoother, sweeter taste, with flavour notes of chocolate and sugar. They often also have hints of fruits or berries."
)

let Bourbon = CoffeeBeansVariety(
    NameOfBeans: "Bourbon",
    Image1Name: "Bourbon1",
    History: "Bourbon is the most famous of the Bourbon-descended varieties. It is a tall variety characterized by relatively low production, susceptibility to the major diseases, and excellent cup quality. French missionaries introduced Bourbon from Yemen to Bourbon Island (now La Réunion)—giving it the name it has today—in the early 1700s. Until the mid-19th century, Bourbon did not leave the island. But beginning in the mid-1800s, the variety spread to new parts of the world as the missionaries moved to establish footholds in Africa and the Americas.",
    Image2Name: "Bourbon2",
    Flavour: "Bourbon beans are known for their deep, buttery chocolate flavors, as well as their sweetness and very light fruit overtones."
)

let Caturra = CoffeeBeansVariety(
    NameOfBeans: "Caturra",
    Image1Name: "Caturra1",
    History: "Caturra is a genetic mutation of Bourbon, first identified outside of a village called Caturra in Brazil. This variety was selected and cultivated for its smaller plant size and higher level of production compared to Bourbon. Caturra tastes similar to Bourbon, but is somewhat brighter.",
    Image2Name: "Caturra2",
    Flavour: "Caturra's cup profile is usually balanced, sweet, and citrusy with aromas of maple and honey notes."
)

let Catimor = CoffeeBeansVariety(
    NameOfBeans: "Catimor",
    Image1Name: "Catimor1",
    History: "The Catimor coffee cultivar is an increasingly popular varietal among farmers, producers, and consumers alike. It was originally developed by agricultural scientists Portugal in 1959 with the goal of cultivating a breed of coffee bean that had a high yield and that was easy to grow.",
    Image2Name: "Catimor2",
    Flavour: "In terms of tasting notes, Coffee made from the Catimor varietal gives off nutty and herbal aromas, and has distinct cherry and berry notes upon tasting."
)

let Kona = CoffeeBeansVariety(
    NameOfBeans: "Kona",
    Image1Name: "Kona1",
    History: "Kona coffee is a hard bean that forms as a result of the bean variety, the weather, and the rich volcanic soil. Coffee beans harvested in the Kona region have a very high density, which leads to complex bean development during the roasting process and unique and fantastic flavor profiles once brewed.",
    Image2Name: "Kona2",
    Flavour: "Generally, Kona coffee is known to be smooth, balanced and slightly nutty. Kona coffee generally has a syrupy, medium body and tasting notes like caramel, honey and milk chocolate."
)

let Pacamara = CoffeeBeansVariety(
    NameOfBeans: "Pacamara",
    Image1Name: "Pacamara1",
    History: "What is Pacamara and why is it special? The Pacamara variety is an intraspecific hybrid developed out of a breeding program housed at El Salvador's Institute for Coffee Research that started back in the 1950s. The two parents of its partial namesake, 'PACA - MARA', are Pacas and Maragogipe. Both are mutations.",
    Image2Name: "Pacamara2",
    Flavour: "The flavor profile of Pacamara coffee beans is complex, with notes of chocolate, fruit, and floral flavors. The coffee bean is also known for its low acidity and smooth texture, making it a popular choice for coffee lovers who prefer a milder taste."
)

let Villalobos = CoffeeBeansVariety(
    NameOfBeans: "Villalobos",
    Image1Name: "Villalobos1",
    History: "As part of the Bourbon bean variety, Villalobos (also called Villa Sarchi) is a hardy coffee plant that farmers primarily cultivate in Costa Rica. It grows best in high altitude areas and holds up well against strong winds.",
    Image2Name: "Villalobos2",
    Flavour: "Villalobos beans are sweet and delightfully acidic with strong berry, fruit, and raw sugar notes. Villalobos beans are often described as complex, with different taste layers emerging throughout the cupping."
)

let Erecta = CoffeeBeansVariety(
    NameOfBeans: "Erecta",
    Image1Name: "Erecta1",
    History: "Erecta is characterised by a sharp body and neutral flavour, but at the same time has a slight acidity thanks to the always visible pineapple and banana plantations around it. Arabica coffee takes up the remaining 15% of the country's coffee export volume, and though the percentage is low, the variety is high.",
    Image2Name: "Erecta2",
    Flavour: "Erecta is characterised by a sharp body and neutral flavour, but at the same time has a slight acidity thanks to the always visible pineapple and banana plantations around it."
)

let Nganda = CoffeeBeansVariety(
    NameOfBeans: "Nganda",
    Image1Name: "Nganda1",
    History: "Robusta coffee is native to Uganda, and the two most common varietals found in the wild are known locally as Nganda and Erecta. Nganda is a Robusta varietal with high caffeine content and high sweetness that’s rare for a Robusta coffee.",
    Image2Name: "Nganda2",
    Flavour: "Get yourself a bag of Nganda if you enjoy coffees with high acidity and bitterness. The Nganda beans tend to have a flavour profile that is earthy and nutty, especially when compared to a typical cup of arabica coffee."
)

let Conilon = CoffeeBeansVariety(
    NameOfBeans: "Conilon",
    Image1Name: "Conilon1",
    History: "Predominantly grown in Brazil, Conilon is a robust and disease-resistant variety of Robusta coffee. It is prized for its strong, bold flavor, which makes it a popular choice for blending, especially in espresso. Conilon plants are known for their high productivity and ability to adapt to diverse growing conditions, contributing significantly to Brazil's coffee industry.",
    Image2Name: "Conilon2",
    Flavour: "Conilon coffee offers an intense, robust flavor with notes of dark chocolate, a smooth, lingering finish, and a slightly smoky undertone."
)

let UgandaRobusta = CoffeeBeansVariety(
    NameOfBeans: "Uganda Robusta",
    Image1Name: "UgandaRobusta1",
    History: "Grown primarily in Uganda, this variety is celebrated for its intense and unique flavor profile, which sets it apart from other Robusta beans. Uganda Robusta is well-adapted to the local climate and terrain, thriving in the country's specific growing conditions. Its rich, bold taste is often favored in blends that require a more pronounced coffee flavor.",
    Image2Name: "UgandaRobusta2",
    Flavour: "Uganda Robusta coffee is strong and distinctive with hints of spice, wood, and a deep, full-bodied finish that is both rich and complex."
)

let Kwilu = CoffeeBeansVariety(
    NameOfBeans: "Kwilu",
    Image1Name: "Kwilu1",
    History: "This variety is cultivated in the Democratic Republic of Congo and is known for its resilience and adaptability. Kwilu Robusta plants are robust and can withstand various environmental stresses, making them a reliable choice for farmers. The beans produced have a distinctive, full-bodied flavor that adds depth to coffee blends, reflecting the unique terroir of the Congo region.",
    Image2Name: "Kwilu2",
    Flavour: "Kwilu coffee is bold and earthy with subtle woody and nutty undertones, a robust finish, and a slightly bitter, savory aftertaste."
)

let JavaIneac = CoffeeBeansVariety(
    NameOfBeans: "Java-Ineac",
    Image1Name: "JavaIneac1",
    History: "Developed in Indonesia, the Java-Ineac variety is a hybrid of Java and Ineac Robustas, aimed at improving both yield and disease resistance. This variety benefits from the best traits of its parent plants, offering a balanced, strong flavor profile. Java-Ineac is particularly valued for its ability to produce high-quality beans consistently, making it a staple in Indonesian coffee production.",
    Image2Name: "JavaIneac2",
    Flavour: "Java-Ineac coffee has a balanced and strong flavor with a smooth body, featuring hints of dark cocoa, earthy notes, and a rich, lingering aftertaste."
)

let Dewevrei = CoffeeBeansVariety(
    NameOfBeans: "Dewevrei",
    Image1Name: "Dewevrei1",
    History: "Excelsa, now considered a variety of Liberica, is primarily grown in Southeast Asia. It is known for its unique taste profile and complex flavor characteristics. Excelsa beans are often used in blends to add depth and complexity. The trees are hardy, capable of growing in diverse climates, and produce large, irregularly shaped beans.",
    Image2Name: "Dewevrei2",
    Flavour: "Excelsa coffee has a unique tart, fruity, and complex flavor with hints of dark berries, light floral notes, and a lingering, tart aftertaste."
)

let VietnameseExcelsa = CoffeeBeansVariety(
    NameOfBeans: "Vietnamese",
    Image1Name: "VietnameseExcelsa1",
    History: "Grown predominantly in Vietnam, this variety of Excelsa is cherished for its ability to thrive in the country's varied climate. Vietnamese Excelsa contributes significantly to local coffee blends, enhancing their flavor with its distinctive profile. The trees are resilient, often grown alongside other crops, and produce beans that are highly valued in Vietnamese coffee culture.",
    Image2Name: "VietnameseExcelsa2",
    Flavour: "Vietnamese Excelsa coffee is fruity and tart with notes of tamarind, a light floral aroma, and a refreshing, slightly acidic finish."
)

let PhilippineExcelsa = CoffeeBeansVariety(
    NameOfBeans: "Philippine",
    Image1Name: "PhilippineExcelsa1",
    History: "Commonly cultivated in the Philippines, this variety of Excelsa is known for its robust growth and adaptability to local conditions. It is an integral part of many traditional Filipino coffee blends, adding a unique depth and character. The beans are irregularly shaped, and the trees are known for their resistance to diseases and pests.",
    Image2Name: "PhilippineExcelsa2",
    Flavour: "Philippine Excelsa coffee offers a bold, fruity flavor with hints of dark berries, tamarind, and a distinct, tart aftertaste."
)

let CambodianExcelsa = CoffeeBeansVariety(
    NameOfBeans: "Cambodian",
    Image1Name: "CambodianExcelsa1",
    History: "Excelsa beans grown in Cambodia are recognized for their ability to thrive in the country's warm, humid climate. These beans contribute to local coffee culture by providing a unique flavor that stands out in blends. The trees are hardy, capable of withstanding challenging growing conditions, and produce beans that are prized for their distinctive taste.",
    Image2Name: "CambodianExcelsa2",
    Flavour: "Cambodian Excelsa coffee is known for its tart, fruity flavor with a unique blend of dark berry notes and a lingering, slightly acidic aftertaste."
)

let ThaiExcelsa = CoffeeBeansVariety(
    NameOfBeans: "Thai Excelsa",
    Image1Name: "ThaiExcelsa1",
    History: "Cultivated in Thailand, this variety of Excelsa is noted for its ability to grow in diverse environmental conditions. Thai Excelsa beans are a crucial component of local coffee blends, adding complexity and depth to the flavor profile. The trees are robust and produce large, irregularly shaped beans that are highly valued in Thai coffee culture.",
    Image2Name: "ThaiExcelsa2",
    Flavour: "Thai Excelsa coffee has a complex, fruity flavor with a tart, berry-like taste, light floral notes, and a refreshing, lingering aftertaste."
)

let Barako = CoffeeBeansVariety(
    NameOfBeans: "Barako",
    Image1Name: "Barako1",
    History: "Known locally as 'Barako,' Philippine Liberica is a beloved variety in the Philippines. It is highly valued for its strong, bold flavor and distinct aroma. The trees are well-suited to the tropical climate, and the beans are larger and more robust than those of other coffee species. Barako is a significant part of the Philippine coffee tradition.",
    Image2Name: "Barako2",
    Flavour: "Barako coffee offers a bold, smoky flavor with strong woody notes, hints of dark chocolate, and a slightly fruity, lingering finish."
)

let MalaysianLiberica = CoffeeBeansVariety(
    NameOfBeans: "Malaysian",
    Image1Name: "MalaysianLiberica1",
    History: "Cultivated mainly in Malaysia, this variety of Liberica is known for its unique flavor profile and adaptability to the local climate. The beans are larger and irregularly shaped, and the trees are hardy, making them suitable for various growing conditions. Malaysian Liberica is often used in blends to enhance complexity.",
    Image2Name: "MalaysianLiberica2",
    Flavour: "Malaysian Liberica coffee has a robust, smoky flavor with woody undertones, a touch of dark chocolate, and a slightly floral, fruity aftertaste."
)

let IndonesianLiberica = CoffeeBeansVariety(
    NameOfBeans: "Indonesian",
    Image1Name: "IndonesianLiberica1",
    History: "Grown in parts of Indonesia, Liberica coffee from this region is recognized for its distinctive taste and adaptability. The trees thrive in Indonesia's tropical climate and produce large, irregularly shaped beans. Indonesian Liberica is used to add depth and complexity to coffee blends, contributing to the local coffee culture.",
    Image2Name: "IndonesianLiberica2",
    Flavour: "Indonesian Liberica coffee features a smoky, woody flavor with notes of dark chocolate, subtle floral hints, and a lingering, slightly fruity finish."
)

let LiberianLiberica = CoffeeBeansVariety(
    NameOfBeans: "Liberian",
    Image1Name: "LiberianLiberica1",
    History: "Originating from Liberia, this variety of Liberica is known for its unique and robust flavor profile. The trees are tall and capable of growing in diverse climates, producing large beans that are irregularly shaped. Liberian Liberica is used to add a distinctive character to coffee blends, enhancing their overall complexity.",
    Image2Name: "LiberianLiberica2",
    Flavour: "Liberian Liberica coffee has a strong, smoky flavor with woody and dark chocolate notes, a hint of floral aroma, and a slightly fruity, lingering aftertaste."
)

let allArabicaBeans = [Typica, Bourbon, Caturra, Catimor, Kona, Pacamara, Villalobos]
let allRobustaBeans = [Erecta, Nganda, Conilon, UgandaRobusta, Kwilu, JavaIneac]
let allExcelsaBeans = [Dewevrei, VietnameseExcelsa, PhilippineExcelsa, CambodianExcelsa, ThaiExcelsa]
let allLibericaBeans = [Barako, MalaysianLiberica, IndonesianLiberica, LiberianLiberica]
let allVarieties = [allArabicaBeans, allRobustaBeans, allExcelsaBeans, allLibericaBeans]

