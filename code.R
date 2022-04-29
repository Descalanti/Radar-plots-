'''
Code for producing a heat map of reported Ebola bases in the DRC from 2018 - 2020. 
Authors: Devyn Escalanti
University of Central Florida 
Email: dtescalanti@gmail.com
'''

#creating data frames
bio2 <- data.frame(Jan = c(1300000, 0, 1023560),
                   Feb = c(1300000, 0, 993187),
                   Mar = c(1300000, 0, 1005959),
                   Apr = c(1300000, 0, 966692),
                   May = c(1300000, 0, 1065845),
                   Jun = c(1300000, 0, 1063463),
                   Jul = c(1300000, 0, 1090083),  
                   Aug = c(1300000, 0, 1076311),
                   Sep = c(1300000, 0, 1037628),
                   Oct = c(1300000, 0, 950967),
                   Nov = c(1300000, 0, 870190),
                   Dec = c(1300000, 0, 827686))#(max Hz for all buildings, min, monthly  Hz value)

mil2 <-data.frame(Jan = c(1300000, 0, 387455.2),
                  Feb = c(1300000, 0, 404306.3),
                  Mar = c(1300000, 0, 401010.7),
                  Apr = c(1300000, 0, 393600.9),
                  May = c(1300000, 0, 370172.8),
                  Jun = c(1300000, 0, 269145.9),
                  Jul = c(1300000, 0, 279818.2),  
                  Aug = c(1300000, 0, 332446.3),
                  Sep = c(1300000, 0, 287533.9),
                  Oct = c(1300000, 0, 226460.4),
                  Nov = c(1300000, 0, 326856.2),
                  Dec = c(1300000, 0, 336715.8))


su2 <- data.frame(Jan = c(1300000, 0, 1179997),
                     Feb = c(1300000, 0, 994423),
                     Mar = c(1300000, 0, 1095056),
                     Apr = c(1300000, 0, 1084332),
                     May = c(1300000, 0, 1102385),
                     Jun = c(1300000, 0, 1063684),
                     Jul = c(1300000, 0, 1107819),  
                     Aug = c(1300000, 0, 1040486),
                     Sep = c(1300000, 0, 1064158),
                     Oct = c(1300000, 0, 1169742),
                     Nov = c(1300000, 0, 1279466),
                     Dec = c(1300000, 0, 1191917))


fed2 <- data.frame(Jan = c(1300000, 0, 868339.9),
                  Feb = c(1300000, 0, 835089.1),
                  Mar = c(1300000, 0, 928441.9),
                  Apr = c(1300000, 0, 848898.3),
                  May = c(1300000, 0, 835169.7),
                  Jun = c(1300000, 0, 802202.4),
                  Jul = c(1300000, 0, 889969.5),  
                  Aug = c(1300000, 0, 1044845.7),
                  Sep = c(1300000, 0, 1046411.5),
                  Oct = c(1300000, 0, 1125846.5),
                  Nov = c(1300000, 0, 975069.7),
                  Dec = c(1300000, 0, 996794.6))


tch2 <- data.frame(Jan = c(1300000, 0, 339582.6),
                   Feb = c(1300000, 0, 303040.6),
                   Mar = c(1300000, 0, 347015.4),
                   Apr = c(1300000, 0, 351950.3),
                   May = c(1300000, 0, 335844.7),
                   Jun = c(1300000, 0, 325627.7),
                   Jul = c(1300000, 0, 345004.5),  
                   Aug = c(1300000, 0, 299905.4),
                   Sep = c(1300000, 0, 300416.9),
                   Oct = c(1300000, 0, 325621.2),
                   Nov = c(1300000, 0, 337203.8),
                   Dec = c(1300000, 0, 347028.3))


# plotting radar data ------------------------------------------

#Plot the buildings' electricity on a radar plot (I provide 2 different plots)

#plot 1
layout(matrix(1:6, ncol=3))
radarchart(bio2, 
           seg = 5,  # Number of axis segments
           title = "Biological Science",
           pfcol = scales::alpha("indianred", 0.3),
           plwd = 1)
  
radarchart(mil2, 
             seg = 5,  # Number of axis segments
             title = "Milican Hall",
             pfcol = scales::alpha("blue", 0.3),
             plwd = 1,
             caxislabels=c(650000, 1300000))

radarchart(su2, 
               seg = 5,  # Number of axis segments
               title = "Student Union",
               pfcol = scales::alpha("green", 0.3),
               plwd = 1)  

radarchart(fed2, 
                seg = 5,  # Number of axis segments
                title = "Federal Credit Union Arena",
                pfcol = scales::alpha("orange", 0.3),
                plwd = 1)    

radarchart(tch2, 
                seg = 5,  # Number of axis segments
                title = "Trevor Colbourn Hall",
                pfcol = scales::alpha("yellow", 0.3),
                plwd = 1,
           caxislabels=TRUE,)  

title(main="UCF Energy Usage by Building (Hertz per Month)", outer=TRUE, line=-1, cex.lab=1.2)
