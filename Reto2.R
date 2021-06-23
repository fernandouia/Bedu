players.stats <- read.csv("players_stats.csv")
players.stats <

summary(players.stats)



g <- players.stats %>%
  ggplot() + 
  aes(MIN) +
  geom_histogram(binwidth = 100) +
  geom_vline(aes(xintercept=mean(players.stats$MIN)), col = "blue") 

g

media <- mean(na.omit(players.stats$Age))

(h <- players.stats %>%
  ggplot() + 
  aes(Age) +
  geom_histogram(binwidth = 2) +
  geom_vline(aes(xintercept=mean(na.omit(players.stats$Age)), col = "blue")) 

h

x <- which.max(players.stats$Height)
paste("El jugador más alto es", players.stats$Name[x], "con una altura de: ", players.stats$Height[x]/100)


y <- which.min(players.stats$Height)
paste("El jugador más bajito es", players.stats$Name[y], "con una altura de: ", players.stats$Height[y]/100)


paste("La altura promedio es: ", round(mean(na.omit(players.stats$Height/100)), 2))


(my_scatplot <- ggplot(players.stats, 
                       aes(x = AST.TOV, y = PTS)) + 
    geom_point())

my_scatplot + facet_wrap("Pos")
