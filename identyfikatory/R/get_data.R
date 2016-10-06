library('googlesheets')
library('magrittr')

# Reading of google sheet data
gs_auth(new_user = TRUE)
gap_url <- "https://docs.google.com/spreadsheets/d/1KVDAQ25_0xhLGLRvSouW3qcnhn3awdP2amo3pE91SUs/edit#gid=0"
gap <- gap_url %>% gs_url()
sheet <- gs_read(gap)
df <- sheet[c('first_name', 'last_name', 'id_code2')]

write.csv(df, '~/Dropbox/erum/identyfikatory/lista_gosci.csv', quote=FALSE, row.names = FALSE)