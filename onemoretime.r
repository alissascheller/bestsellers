
c('rvest','dplyr','pipeR', 'knitr') -> packages
lapply(packages, library, character.only = T)

pre <- "http://www.nytimes.com/best-sellers-books/"
post <- "/hardcover-fiction/list.html"
urls <- c("2015-08-02",
          "2015-08-09",
          "2015-08-16"
)
css_page <- '.bestSellersList' #get the whole group of desired items
summaries <- c()
for (url in urls) {
  fullUrl <- paste(pre,url,post,sep="") 
  print(url)
  fullUrl %>>%
    html %>>%
    html_nodes(css_page) -> nodes
  
  nodes %>>% html_nodes('.summary') %>>% html_text(trim = TRUE)-> a
  fileName <- paste(url, ".", "csv", sep="")
  location <- paste("Desktop", fileName, sep="/")
  write(a, file=location, sep="\n")
  #print(a)
  
}

#print(summaries)
#for (summary in summaries) {
  #xml_node(summary, ".bookName") %>>% xml_text() -> text
  #print(xml_text(summary)[1])
  #print(xml_node(summary, ".bookName"),xml_node(summary, ".summary") )
}
#summaries %>>% dump(data.sum, file="dump_data_sum.asc")




#summaries %>>% 
  
  #dump(summaries, file="dump.csv") #put data frame in csv

#df <- data.frame(matrix(unlist(summaries), nrow=96, byrow=T),stringsAsFactors=FALSE)
#data.frame() %>>% #put summaries and book names in data frame

#data.frame(summaries, row.names = NULL, check.rows = FALSE,
           #check.names = TRUE,
           #stringsAsFactors = default.stringsAsFactors())

#default.stringsAsFactors()




#url %>>%
  #html %>>%
  #html_nodes(css_page) %>>%
  #html_table(header = F) %>>%
  #data.frame() %>>%
  #tbl_df() -> total_table

#merge urls with total_table

#total_table %>>%
  #filter(total_table$X1 == 'Name') %>>% summaries.character -> names

#'Name' %>>% grep(x = total_table$X1) -> row_of_name_header #find where name is

#names %>>% tolower -> names(total_table)

#names(total_table) %>>% (gsub('\\%|/','\\.',.)) -> names(total_table)

#(row_of_name_header + 1) %>>% (total_table[.:nrow(total_table),]) -> total_table
#total_table %>>% head
#total_table %>>% write.csv('Desktop/titanic_two.csv', row.names = F)
"2015-07-26",
"2015-07-19", 
"2015-07-12", 
"2015-07-05",
"2015-06-28",
"2015-06-21",
"2015-06-14",
"2015-06-07",
"2015-05-31",
"2015-05-24",
"2015-05-17",
"2015-05-10",
"2015-05-03",
"2015-04-26",
"2015-04-19", 
"2015-04-12",
"2015-04-05",
"2015-03-29",
"2015-03-22",
"2015-03-15",
"2015-03-08",
"2015-03-01",
"2015-02-22",
"2015-02-15",
"2015-02-08",
"2015-02-01",
"2015-01-25",
"2015-01-18",
"2015-01-11",
"2015-01-04",
"2014-12-28",
"2014-12-21",
"2014-12-14",
"2014-12-07",
"2014-11-30",
"2014-11-23",
"2014-11-16",
"2014-11-09",
"2014-11-02",
"2014-10-26",
"2014-10-19",
"2014-10-12",
"2014-10-05",
"2014-09-28",
"2014-09-21",
"2014-09-14",
"2014-09-07",
"2014-08-31",
"2014-08-24",
"2014-08-17",
"2014-08-10",
"2014-08-03",
"2014-07-27",
"2014-07-20"
