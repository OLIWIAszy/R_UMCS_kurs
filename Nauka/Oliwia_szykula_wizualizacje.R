
# 1. Prosty wykres punktowy -----------------------------------------------

uczniowie <- data.frame(
  czas_nauki=c(3,4,5,2,6,7),
  ocena=c(3,4,4,2,5,5)
)

ggplot(uczniowie, aes(x=czas_nauki, y=ocena))+
  geom_point(size=4, color="blue")+
  labs(title = "czas nauki a ocena", x = "czas poświęcony na naukę [h]", y = "ocena")
# 2. Wykresy kategorii ----------------------------------------------------

sprzedarz <- data.frame(
  produkt=c("margaryna", "masło", "mleko", "ser"), 
  liczba_sztuk=c(2,3,5,7)
)

ggplot(sprzedarz, aes(x=produkt, y=liczba_sztuk, color=produkt, fill=produkt))+
  geom_bar(stat="identity")+
  theme_classic()+
  labs(title = "Liczba produktów sprzedanych", x= "Produkty", y = "Liczba sprzedanych sztuk")+
  scale_color_manual(values = c("margaryna" = "magenta", "masło" = "green", "mleko" = "blue", "ser" = "yellow"))


# 3. Wstęp do ggplot2 i labs() --------------------------------------------

wyniki <- data.frame(
  liczba=c(3,4,5,2,6,7), 
  liczba_pasująca=c(2,3,5,7,8,10)
)

ggplot(wyniki, aes(x=liczba, y=liczba_pasująca))+
  geom_point(size=5, color="blue")+
  labs(title="Liczby pasujące do liczb", x="Liczba", y="Liczba pasująca")+
  theme_minimal()
