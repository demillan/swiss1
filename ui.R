shinyUI(pageWithSidebar(
  headerPanel('Swiss k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(swiss)),
    selectInput('ycol', 'Y Variable', names(swiss),
                selected=names(swiss)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1'),
    h1('DOCUMENTATION'),
    h2('Swiss Fertility and Socioeconomic Indicators (1888) Data'),
    h3('Description'),
    
    h4('Standardized fertility measure and socio-economic indicators for each of 47 French-speaking provinces of Switzerland at about 1888.'),
    
    h3('Format'),
    
    h4('A data frame with 47 observations on 6 variables, each of which is in percent, i.e., in [0, 100].'),
    
    h4('1: Fertility:	common standardized fertility measure'),
    
    h4('2: Agriculture:	 % of males involved in agriculture as occupation'),
    h4('3: Examination:	 % draftees receiving highest mark on army examination'),
    h4('4: Education:	 % education beyond primary school for draftees.'),
    h4('5: Catholic:	 % catholic'),
    h4('6: Infant.Mortality	 live births who live less than 1 year.'),    
    h4('All variables but Fertility give proportions of the population.'),
    
    h3('Details'),
    h4('Switzerland, in 1888, was entering a period known as the demographic transition; i.e., its fertility was beginning to fall from the high level typical of underdeveloped countries. The data collected are for 47 French-speaking "provinces" at about 1888. Here, all variables are scaled to [0, 100], where in the original, all but "Catholic" were scaled to [0, 1].'),
    
    h3('Note'),
    h4('Files for all 182 districts in 1888 and other years have been available at http://opr.princeton.edu/archive/eufert/switz.html or http://opr.princeton.edu/archive/pefp/switz.asp. They state that variables Examination and Education are averages for 1887, 1888 and 1889.')
    
    )
  
))