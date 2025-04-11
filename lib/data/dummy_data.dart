import 'package:flutter/material.dart';

import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'İtalyan',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Hızlı & Kolay',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgerler',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Alman',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Hafif & Güzel',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Egzotik',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Kahvaltı',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asya',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Fransız',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Yaz',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Domates Soslu Spagetti',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Domates',
      '1 Yemek Kaşığı Zeytinyağı',
      '1 Soğan',
      '250g Spagetti',
      'Baharatlar',
      'Peynir (isteğe bağlı)'
    ],
    steps: [
      'Domatesleri ve soğanı küçük parçalar halinde doğrayın.',
      'Biraz su kaynatın - kaynadıktan sonra tuz ekleyin.',
      'Spagettileri kaynayan suya koyun - yaklaşık 10-12 dakika pişmeleri gerekiyor.',
      'Bu arada, biraz zeytinyağını ısıtın ve doğranmış soğanı ekleyin.',
      '2 dakika sonra, domates parçalarını, tuz, karabiber ve diğer baharatlarınızı ekleyin.',
      'Sos, spagettiler piştiğinde hazır olacak.',
      'Bitmiş yemeğin üzerine isteğe bağlı olarak biraz peynir ekleyebilirsiniz.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Hawaii Tost',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Dilim Beyaz Ekmek',
      '1 Dilim Jambon',
      '1 Dilim Ananas',
      '1-2 Dilim Peynir',
      'Tereyağı'
    ],
    steps: [
      'Beyaz ekmeğin bir tarafına tereyağı sürün',
      'Beyaz ekmeğin üzerine jambon, ananas ve peyniri yerleştirin',
      'Tostu 200°C fırında yaklaşık 10 dakika pişirin'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Klasik Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Dana Kıyma',
      '1 Domates',
      '1 Salatalık',
      '1 Soğan',
      'Ketçap',
      '2 Hamburger Ekmeği'
    ],
    steps: [
      '2 köfte şekli verin',
      'Köfteleri her tarafında yaklaşık 4 dakika kızartın',
      'Ekmekleri her tarafından yaklaşık 1 dakika hızlıca kızartın',
      'Ekmeklere ketçap sürün',
      'Hamburgeri domates, salatalık ve soğan ile servis edin'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Viyana Şnitzeli',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Dana Pirzola',
      '4 Yumurta',
      '200g Galeta Unu',
      '100g Un',
      '300ml Tereyağı',
      '100g Bitkisel Yağ',
      'Tuz',
      'Limon Dilimleri'
    ],
    steps: [
      'Danayı yaklaşık 2-4 mm inceliğinde yumuşatın ve her iki tarafına tuz serpin.',
      'Düz bir tabakta, yumurtaları çatalla hafifçe çırpın.',
      'Etleri önce una, sonra yumurtaya ve son olarak galeta ununa bulayın.',
      'Büyük bir tavada tereyağı ve yağı ısıtın (yağın çok sıcak olmasına izin verin) ve şnitzelleri her iki tarafı altın kahverengi olana kadar kızartın.',
      'Şnitzellerin yağla çevrili olması ve galetaların kabarması için tavayı düzenli olarak salladığınızdan emin olun.',
      'Çıkarın ve mutfak kağıdında süzün. Maydanozu kalan yağda kızartın ve süzün.',
      'Şnitzelleri ısıtılmış bir tabağa koyun ve maydanoz ve limon dilimleriyle süsleyerek servis edin.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Füme Somonlu Salata',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Roka',
      'Kuzu Marulu',
      'Maydanoz',
      'Rezene',
      '200g Füme Somon',
      'Hardal',
      'Balsamik Sirke',
      'Zeytinyağı',
      'Tuz ve Karabiber'
    ],
    steps: [
      'Salata ve otları yıkayın ve doğrayın',
      'Somonu küp küp doğrayın',
      'Hardal, sirke ve zeytinyağını bir sos haline getirin',
      'Salatayı hazırlayın',
      'Somon küpleri ve sosu ekleyin'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Lezzetli Portakal Musu',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Yaprak Jelatin',
      '150ml Portakal Suyu',
      '80g Şeker',
      '300g Yoğurt',
      '200g Krema',
      'Portakal Kabuğu',
    ],
    steps: [
      'Jelatini tencerede eritin',
      'Portakal suyu ve şeker ekleyin',
      'Tencereyi ocaktan alın',
      '2 yemek kaşığı yoğurt ekleyin',
      'Jelatini kalan yoğurdun altına karıştırın',
      'Her şeyi buzdolabında soğutun',
      'Kremayı çırpın ve portakal kütlesinin altına kaldırın',
      'En az 4 saat daha soğutun',
      'Portakal kabuğu ile servis edin',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Krep',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Su Bardağı Un',
      '3 1/2 Çay Kaşığı Kabartma Tozu',
      '1 Çay Kaşığı Tuz',
      '1 Yemek Kaşığı Beyaz Şeker',
      '1 1/4 su bardağı Süt',
      '1 Yumurta',
      '3 Yemek Kaşığı Tereyağı, eritilmiş',
    ],
    steps: [
      'Büyük bir kapta un, kabartma tozu, tuz ve şekeri eleyin.',
      'Ortasına bir çukur açın ve süt, yumurta ve eritilmiş tereyağını dökün; pürüzsüz olana kadar karıştırın.',
      'Hafif yağlanmış bir tava veya kızartma tavasını orta-yüksek ateşte ısıtın.',
      'Hamuru tavaya dökün veya kepçe ile alın, her krep için yaklaşık 1/4 su bardağı kullanın. Her iki tarafını da kızartın ve sıcak servis edin.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Kremalı Hint Tavuk Köri',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Tavuk Göğsü',
      '1 Soğan',
      '2 Diş Sarımsak',
      '1 Parça Zencefil',
      '4 Yemek Kaşığı Badem',
      '1 Çay Kaşığı Kırmızı Biber',
      '500ml Hindistan Cevizi Sütü',
    ],
    steps: [
      'Tavuk göğsünü dilimleyin ve kızartın',
      'Soğan, sarımsak ve zencefili macun haline getirin ve her şeyi soteleyin',
      'Baharatları ekleyin ve kavurun',
      'Tavuk göğsü + 250ml su ekleyin ve her şeyi 10 dakika pişirin',
      'Hindistan cevizi sütü ekleyin',
      'Pirinçle servis edin'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Çikolatalı Sufle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Çay Kaşığı eritilmiş Tereyağı',
      '2 Yemek Kaşığı beyaz Şeker',
      '2 Ons %70 Bitter Çikolata, parçalara ayrılmış',
      '1 Yemek Kaşığı Tereyağı',
      '1 Yemek Kaşığı Un',
      '4 1/3 yemek kaşığı soğuk Süt',
      '1 Tutam Tuz',
      '1 Tutam Kırmızı Biber',
      '1 Büyük Yumurta Sarısı',
      '2 Büyük Yumurta Beyazı',
      '1 Tutam Krem Tartar',
      '1 Yemek Kaşığı beyaz Şeker',
    ],
    steps: [
      'Fırını 190°C\'ye ısıtın. Fırın tepsisine pişirme kağıdı serin.',
      '2 ramekin\'in alt ve kenarlarını 1 çay kaşığı eritilmiş tereyağı ile hafifçe fırçalayın; alt ve kenarları kenara kadar kaplayın.',
      'Ramekinlere 1 yemek kaşığı beyaz şeker ekleyin. Tüm yüzeyleri şekerle kaplanana kadar ramekinleri döndürün.',
      'Çikolata parçalarını metal bir karıştırma kabına koyun.',
      'Kaseyi düşük ateşte yaklaşık 3 fincan sıcak su dolu bir tencerenin üzerine yerleştirin.',
      'Orta ateşte bir tavada 1 yemek kaşığı tereyağı eritin. Un serpin. Un tereyağına yedirilinceye ve karışım koyulaşıncaya kadar çırpın.',
      'Karışım pürüzsüz olana ve koyulaşana kadar soğuk sütü çırpın. Karışımı erimiş çikolata ile kaseye aktarın.',
      'Tuz ve kırmızı biber ekleyin. İyice karıştırın. Yumurta sarısını ekleyin ve karıştırın.',
      'Yumurta beyazlarını çırparken çikolatayı sıcak tutmak için kaseyi sıcak (kaynamayan) suyun üstünde bırakın.',
      '2 yumurta beyazını bir karıştırma kabına koyun; krem tartar ekleyin. Karışım koyulaşmaya başlayana ve çırpıcıdan damlayan karışımın yüzeyde yaklaşık 1 saniye kalıp karışıma karışmadan önce kaybolana kadar çırpın.',
      'Şekerin 1/3\'ünü ekleyin ve çırpın. Yaklaşık 15 saniye daha biraz şeker çırpın.',
      'Kalan şekeri çırpın. Karışım tıraş kremi kadar koyulaşana ve yumuşak tepecikler oluşturana kadar 3-5 dakika çırpmaya devam edin.',
      'Yumurta beyazlarının yarısından biraz daha azını çikolataya aktarın.',
      'Yumurta beyazları çikolataya tamamen karışana kadar karıştırın.',
      'Kalan yumurta beyazlarını ekleyin; bir spatula ile alttan kaldırıp üstten katlayarak çikolataya nazikçe yedirin.',
      'Yumurta beyazı kaybolduğunda karıştırmayı durdurun. Karışımı 2 hazırlanmış ramekin arasında bölün. Ramekinleri hazırlanmış fırın tepsisine yerleştirin.',
      'Sufleler kabarıp ramekinlerin üst kısmını aşana kadar önceden ısıtılmış fırında 12-15 dakika pişirin.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Kiraz Domatesli Kuşkonmaz Salatası',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Beyaz ve Yeşil Kuşkonmaz',
      '30g Çam Fıstığı',
      '300g Kiraz Domates',
      'Salata',
      'Tuz, Karabiber ve Zeytinyağı'
    ],
    steps: [
      'Kuşkonmazları yıkayın, soyun ve kesin',
      'Tuzlu suda pişirin',
      'Kuşkonmazlara tuz ve karabiber ekleyin',
      'Çam fıstıklarını kavurun',
      'Domatesleri ikiye bölün',
      'Kuşkonmaz, salata ve sosla karıştırın',
      'Baget ekmekle servis edin'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
