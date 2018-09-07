#install.packages("shiny")
#install.packages("shinydashboard")
#install.packages("markdown")
library(shiny)
library(shinydashboard)
library(markdown)

ui <- dashboardPage(
  dashboardHeader(title = "Trabalho Final"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Capa", tabName = "capa", icon = icon("th")),
      menuItem("Sobre", tabName = "sobre", icon = icon("th")),
      menuItem("Conteúdo", tabName = "conteudo", icon = icon("th"))
    )
  ),
  dashboardBody(
    
    tabItems(
      tabItem(tabName = "capa",
              fluidRow(
                includeHTML("./capa.html")
              )
              
      ),
      tabItem(tabName = "sobre",
              fluidRow(
                includeHTML("./sobre.html")
              )
      ),
      tabItem(tabName = "conteudo",
              fluidRow(
                includeHTML("./VINHOS.html")
              )
      )
    )
  )
)

server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)

