theme_pres <- function() {
  theme_classic(base_size= 30, base_family= "Verdana") %+replace%
    theme(plot.title= element_text(hjust= 0.5),
          plot.background = element_rect(fill= "transparent", color= NA),
          panel.background = element_rect(color= NA, fill= "#f0f0f0"),
          panel.border =element_blank(),
          axis.title.x= element_text(size=28,colour="darkslategray"),
          axis.title.y= element_text(size=28,angle=90,colour="darkslategray"),
          axis.text.x = element_text(size=20,colour="deepskyblue4"),
          axis.text.y = element_text(size=20,colour="deepskyblue4"),
          legend.title=element_text(size=20,colour="darkslategray"),
          legend.text=element_text(size=18,colour="steelblue4"),
          legend.background = element_rect(fill= "#f0f0f0", color= NA))
}
theme_pub <- function() {
  theme_classic(base_size= 18, base_family= "Times New Roman") %+replace%
    theme(plot.title= element_text(hjust= 0.5),
          axis.text.x = element_text(size=10),
          axis.text.y = element_text(size=10),
          axis.title.x= element_text(size=16),
          axis.title.y= element_text(size=16,angle=90),
          legend.title=element_text(size=16),
          legend.text=element_text(size=14))
}