#!/bin/sh

# ########################################################################
# [Alex Menteer] grep - Assignment
#                This script includes the practical aspects of using the
#                grep command with a file called cities.txt, which
#                contains over 500 different cities.
# ########################################################################

# ########################################################################
# Problems
# Provide a grep command (or concatenation of commands if needed) for the
# following queries (capitalization of letters matter):
# ########################################################################

function grepScript() {
############################ Begin Script Here ############################
###########################################################################

# -------------------------------------------------------------------------
# 1. List the cities that start with the letter "Z"
# 
# Output: Zaoshi, Zhukeng, Zhongxi, Zwettl, Zaragoza, Zheshart, Zhuji,
#         Zadvorsko, Zhoujia
# 
# Total:  9 cities
# -------------------------------------------------------------------------
grep "^Z" cities.txt

# -------------------------------------------------------------------------
# 2. List the cities that end with the word "gan"
# 
# Output: Tougan, Pedaringan, Banjar Sambangan, Salingogan
# 
# Total:  4 cities
# -------------------------------------------------------------------------
grep "gan$" cities.txt

# -------------------------------------------------------------------------
# 3. List the cities that start with "A", "D", or "E"
# 
# Output: Anticala, Algés, Detroit, Dvinskoy, Amassama, Eucaliptus,
#         Anahanahana, Ar Rawḑah, Duancun, Anina, Ateleta, Eskilstuna,
#         Akademgorodok, Adela, Atarodangwautu, Dongfu, Dan Sadau,
#         Arraial do Cabo, El’brus, Aubagne, Domsjö, Domampot, Damāvand,
#         Al Ḩīlah, Dimovo, Dori, Dalongtan, Dagang, Dongsheng, Aanislag,
#         Doctor Juan León Mallorquín, Ampeleíes, Dřiteň, Dijon, Antofagasta,
#         Dorchester, El Limon, Esperantina, Abricots, Emiliano Zapata,
#         Dykan’ka, Daleszyce, Ar Rawḑah, Dongchuan, Danyang, Dawan,
#         Erdaocha, Artémida, Alberton, Denton, Ayapa, Dengzhuang,
#         Ambohitrolomahitsy
# 
# Total: 53 cities
# -------------------------------------------------------------------------
grep "^[ADE]" cities.txt
grep -E "^A|^D|^E" cities.txt

# -------------------------------------------------------------------------
# 4. List the cities that have "a" as their second letter, and "r" as
#    their third letter (consider cities with more than one word)
# 
# Output: Farkaždin, Saint-Laurent-du-Var, Barra do Bugres, Karanglincak,
#         Caraparac, Paris 01, Kardítsa, Zaragoza, armen, Villa María,
#         Paris 14, Carabamba, Caraguatatuba, Karolino-Buhaz, Vargön,
#         Maruoka, Varnávas, Mariefred, Sarov, Karbinci, Bajo Naranjillo,
#         Barão de Cocais
# 
# Total: 22 cities
# -------------------------------------------------------------------------
grep "\<.ar" cities.txt

# -------------------------------------------------------------------------
# 5. List the cities that don't start with the letter "C"
# 
# Output: Orlando, Vilnius, Bangassou, Anticala, Longquan, Pesagen, Il’ka,
#         Stockholm, Kujang, Gjegjan, San Vicente acaya, Xiashan,
#         Masjed Soleymān, Magdeburg, Mogzon, Ibirataia, Farkaždin,
#         Kandana, Algés, Detroit, obertsfors, Samothráki, Manganitu,
#         Monastirákion, Saint-Laurent-du-Var, Topolná, Manzanillo, Heze,
#         La Mesa, vinskoy, Zaoshi, Pentaplátano, Qal‘at Bīshah, Fukagawa,
#         Amassama, Naprawa, Yanaul, Rimbo, Pajé, Jeju-si, zobil’nyy,
#         Eucaliptus, Namling, Anahanahana, Jiufeng, Paiçandu, Xiaotang,
#         Ujsoły, Huarancante, Barra do ugres, Plavsk, Zhukeng, Ar Rawḑah,
#         Pittsburgh, Tandaltī, Santa Lucia, Yangping, Jingyang, Zhongxi,
#         Phú Túc, uancun, Potęgowo, Linköping, Fresno, Huangludian,
#         Macabugos, Jimenez, Wufeng, Anina, Luau, Poděbrady, uinta o Anjo,
#         Kalá Déndra, Tougan, Ganja, San Rafael, Tyresö, Ludgeřovice,
#         Pelem, Phra Yuen, Weligama, Poli, aterbury, Wińsko, Ateleta,
#         Senj, Vicente Guerrero, São Pedro da Aldeia, Golubinci,
#         Stockholm, Burujul, ienne, Karanglincak, Kassándreia, Eskilstuna,
#         Puamata, London, Jawornik, Akademgorodok, Tríkala, Baugo, uqiao,
#         Adela, Kombissiri, Неготино, Surubim, Atarodangwautu, Jadowniki,
#         Dongfu, Quận Phú Nhuận, Russas, ouston, Mshinskaya, Borehbangle,
#         Niverville, Vale Flores, Río Sereno, Melaka, Pau, Uvarovo,
#         Pancan, Kiryū, edaringan, Salon-de-Provence, Toul, Gaoming,
#         Gerelayang, Minna, Gaocang, Lanlongkou, Tsirang, Nanshan, wettl,
#         Ketanggi, Leloboko, Manutapen, Jiangzao, Xiangfu, Waoundé,
#         Tabuaço, Rancakuya, Blinsung, Rîşcani, ongfang, Srabah, Fazhan,
#         Litvínovice, Goraj, Itoigawa, Santa Adélia, Shuangmiao,
#         Skärholmen, Itaberaí, ydney, Pont-Audemer, Sfax, Pechenizhyn,
#         Santa Nino, Rosh Pinna, Pa Phayom, Buga, Sceaux, Sendangkemulian,
#         angfang, Longtanhe, Jirjā, Gagarin, Pasirdalem, Paris 01,
#         Ntsoudjini, Dan Sadau, Ipoh, Jāsk, Arraial do Cabo, Paprotnia,
#         Shazhouba, Jawatiwa, Tran, Storozhevaya, Kokhanava,
#         Santa Rosa de Viterbo, El’brus, ertientes, Aubagne, Domsjö,
#         Huayang, Riti, Sitampiky, Vancouver, Fukura, Banjar Kelodan,
#         Rio Real, Tvrdonice, Domampot, Kardítsa, Katiola, Damāvand,
#         Mulchén, Kallar Kahār, Al Ḩīlah, Liaonan, Satsumasendai,
#         uôn Ma Thuột, Belišće, Vicente Guerrero, La Cruz de Río Grande,
#         Navan, Ronggo, Klenčí pod Čerchovem, Sinfra, Dimovo, Štěnovice,
#         Los Santos, San Miguel, Dori, Nishi-Tokyo-shi, Koua, Kuršėnai,
#         Gumaus, Vatutino, agbay, Dalongtan, Tyachiv, Sayansk, Beijie,
#         Mmaaf, Nakanojōmachi, Bukbatang, Pule, Semampir, Malaga, Salinas,
#         Yelizovo, Xiaoshan, Longwood, Tokuyama, Zaragoza, Fresno,
#         Lac du Bonnet, Kapuskasing, Shimabara, iangzhou, Zheshart,
#         Balneário Camboriú, Ravne, Mataloko, Dagang, Sanjia, Yanzhao,
#         Gesikan, Ichnya, Bundoc, ongsheng, Noxon, Jixiang, Neuzina,
#         Jishu, Pingyang, Turanj, Saint-Péray, Kedungbulu, Trondheim,
#         Madan, illa aría, Aanislag, Paris 14, Lashkar Gāh, Saguiaran,
#         Tawan tawan, Māmūnīyeh, Doctor Juan León Mallorquín, mpeleíes,
#         Quitilipi, Hupalivka, Békéscsaba, Guadalupe, Pacora, Volovo,
#         Qijia, Taber, Wasquehal, Badar, Pico a Pedra, Junín, London,
#         Dřiteň, Szklarska Poręba, Kertasari, Mautapaga Bawah,
#         Ngepoh Kidul, Xingfeng, insheng, Dijon, Poshnje, Antofagasta,
#         Tomé, Pallasovka, Bagumbayan, Jājarm, Xinxing, Bošnjaci, Trongsa,
#         awangkoan, Panay, Invercargill, Taltal, Dorchester, Birigui,
#         Banjar Sambangan, Weitang, Thị Trấn Mỹ Lộc, uarapari, Hubynykha,
#         Semalang, Kaskinen, Issoudun, Mosoc Llacta, Monjarás,
#         Monte Azul Paulista, Lagnieu, El imon, Kruhlaye, Karolino-Buhaz,
#         Mancha Khiri, Yangxu, Sanom, Skoczów, Esperantina, Guishan,
#         Крива Паланка, meå, Yuanjiazhuang, Tianjiazhuang, Ngulung Wetan,
#         Madrid, Stulovo, Sadar, Bharatpur, Zhuji, New Orleans, bricots,
#         Nabunturan, Lunas, Jhang Sadr, Tadabliro, Emiliano Zapata,
#         Sidayu, Dykan’ka, Vargön, Guazapa, ahía onda, Ždánice, Omutninsk,
#         Timurjaya, Ingersoll, Hawassa, Daleszyce, Manturovo, Meikeng,
#         Sinisian, Ar Rawḑah, Sengeti, Dongchuan, Smiths Falls, Wŏnsan,
#         Vynohradiv, Santa Cruz das Palmeiras, Sámara, Strabychovo,
#         Rosario de Mora, General Manuel J. Campos, Hroznětín, Úštěk,
#         Lukovë, Bayt Yāshūţ, Benito Juarez, Danyang,
#         Saint-Quentin-en-Yvelines, Dawan, Salingogan, Erdaocha,
#         Tabango, Lomintsevskiy, Quba, Xiangyanglu, Banjar harmasemedi,
#         Porto Ferreira, Maruoka, Baclayon, Sandayong Sur, Əhmədbəyli,
#         Villa Gesell, Linamon, Łeba, Ishii, Mekarjaya, Burgos, Gävle,
#         Banocboc, Thị Trấn Ngọc Lặc, Hengfeng, Kadubincarung, Varnávas,
#         Mariefred, aqiu, Mesa, Qingzhou, Maszkienice, Artémida, Luqiao,
#         Inya, Alberton, Tucheng, Takai, Ingersoll, Sayán, Nuga, arov,
#         Bukowiec, Maigo, Longfeng, Uluale, Denton, Zadvorsko, Tandayag,
#         Refojos de Riba de Ave, Bečej, ainte-Sophie, Miaotang, Haoba,
#         Gojō, Santa Cruz, San Vicente, Nyimba, Magisterial, Valencia,
#         Salt Lake City, im, Nadi, Bugul’ma, Longquan, Sioah, Tyachiv,
#         Qianjin, Na Tan, Ayapa, Keli, Gostimë, Zhoujia, Orange, eiwucha,
#         Kiukainen, Saga, Karbinci, Bayan Uula Sumu, Békéscsaba,
#         Bajo Naranjillo, Tonantins, Thành Phố Phủ Lý, Tamnag,
#         San Cristóbal, Dengzhuang, Horní Jiřetín, Takāb, Yangzhong,
#         Xiaojing, Malummaduri, Xiangshan, rzeżyno, Lengkongjaya, Bousso,
#         Santa Cruz, Ambohitrolomahitsy, Sūrāb, Paltashaco,
#         Barão de Cocais, Bambuí
# 
# Total: 477 cities
# -------------------------------------------------------------------------
grep "^[^C]" cities.txt

# -------------------------------------------------------------------------
# 6. List the cities that have at least 14 characters (hint: use egrep)
# 
# Output: Saint-Laurent-du-Var, Charlottenberg, Atarodangwautu,
#         Salon-de-Provence, Sendangkemulian, Nishi-Tokyo-shi,
#         arolino-Buhaz, Saint-Quentin-en-Yvelines, Challhuahuacho,
#         Chervonopartyzans’k, Ambohitrolomahitsy
# 
# Total: 11 cities
# -------------------------------------------------------------------------
grep -E "[^[:space:]]{14,}" cities.txt

# -------------------------------------------------------------------------
# 7. Count how many cities start with the letter "B"
# 
# Output: 39
# -------------------------------------------------------------------------
grep -c "^B" cities.txt
grep "^B" cities.txt | wc -l

# -------------------------------------------------------------------------
# 8. Count how many times the letter "d" repeats
# 
# Output: 88
# -------------------------------------------------------------------------
grep -o "d" cities.txt | wc -w

# -------------------------------------------------------------------------
# 9. List the cities that end with the same letter, twice (hint: use egrep)
# 
# Output: Izobil'nyy, Invercargill, Ingersoll, Villa Gesell, Ishii,
#         Ingersoll
#
# Total: 6 cities
# -------------------------------------------------------------------------
grep -E "(.)\1+$" cities.txt

# -------------------------------------------------------------------------
# 10. List the palindrome cities with five characters
# 
# Output: Anina, Navan, Noxon
# 
# Total: 3 cities
# -------------------------------------------------------------------------
grep -Ei "^(.)(.).?\2\1$" cities.txt

# -------------------------------------------------------------------------
# Extra: List the palindrome cities for any amount of characters
# 
# Output: Amassama, Anahanahana, Anina, Ateleta, Caraparac, Navan, Noxon
# 
# Total: 7 cities
# -------------------------------------------------------------------------

grep -Ei "^(.)(.?)(.?)(.?)(.?)(.?)(.?)(.?)(.).?\9\8\7\6\5\4\3\2\1$" cities.txt
# -------------------------------------------------------------------------
# Extra: List the cities that start and end with the same letter
# 
# Output: Orlando, Anticala, Amassama, Anahanahana, Anina, Ateleta,
#         Karanglincak, Adela, Caraparac, Gaoming, Gerelayang, Gaocang,
#         Nanshan, Gongfang, Damāvand, Navan, Salinas, Noxon, Antofagasta,
#         Ngulung Wetan, Nabunturan, Smiths Falls, Vynohradiv,
#         Santa Cruz das Palmeiras, Saint-Quentin-en-Yvelines, Ishii,
#         Artémida, Na Tan, Ayapa
# 
# Total: 29 cities
# -------------------------------------------------------------------------
grep -Ei "^(.).*\1$" cities.txt

###########################################################################
############################# End Script Here #############################
}

# Run the script
grepScript
