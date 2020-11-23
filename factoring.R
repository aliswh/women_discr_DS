attr(sample, "label") <- c(
  "Ripartizione geografica",
  "Suo padre è nato in Italia o all’estero?",
  "Sua madre è nata in Italia o all’estero?",
  "Le capita di pensare di avere un carico eccessivo di lavoro domestico?",
  "D’accordo o contrario alla seguente affermazione: In condizione di scarsità di lavoro, dare la precedenza agli uomini rispetto alle donne",
  "E’ soprattutto l’uomo che deve provvedere alle necessità economiche della famiglia",
  "E’ l’uomo che deve prendere le decisioni più importanti riguardanti la famiglia",
  "Non è naturale che un uomo abbia un superiore donna al lavoro",
  "Per una donna le responsabilità familiari sono un ostacolo nell’accesso a posizioni dirigenziali",
  "Le donne che ricoprono cariche pubbliche dovrebbero essere più numerose rispetto a quante sono oggi",
  "In una coppia in cui entrambi i partner lavorano a tempo pieno, le faccende domestiche dovrebbero essere divise in modo uguale",
  "Gli uomini sono meno adatti ad occuparsi delle faccende domestiche",
  "Gli uomini dovrebbero partecipare di più alla cura e all’educazione dei propri figli",
  "Secondo Lei, in Italia, in generale le donne sono discriminate, cioè trattate meno bene rispetto agli uomini?",
  "Se confronta la situazione di oggi con quella di 5 anni fa in Italia, direbbe che oggi le donne sono più o meno discriminate?",
  "Nel corso della vita ha rinunciato a cercare lavoro/iniziare un lavoro, a causa dei suoi impegni e responsabilità familiari",
  "Nel corso della vita ha dovuto smettere/cambiare lavoro a causa dei suoi impegni e responsabilità familiari",
  "Nel corso della vita ha rinunciato a lavoro ad un particolare incarico che avrebbe voluto accettare a causa dei suoi impegni e responsabilità familiari",
  "Quando era a SCUOLA o all’UNIVERSITA', Le è capitato di essere discriminato/a",
  "Quando era a SCUOLA o all’UNIVERSITA', Le è capitato di essere discriminato/a perché era maschio/femmina?",
  "Quando era a SCUOLA o all’UNIVERSITA', Le è capitato di essere discriminato/aper il suo aspetto esteriore?",
  "Nel corso della Sua vita, Le è capitato di essere discriminato/a, mentre CERCAVA LAVORO?",
  "Che cosa è successo: mi hanno proposto una retribuzione inferiore a quella prevista (o concessa ad altri) per le stesse mansioni",
  "MOTIVI: Per una gravidanza o perché aveva dei familiari di cui occuparsi?",
  "MOTIVI: perché era (testo mobile) maschio/femmina?",
  "MOTIVI: per il suo aspetto esteriore?",
  "Nel corso della Sua vita, Le è capitato di essere discriminato/a, cioè trattato/a meno bene degli altri, mentre lavorava?",
  "Che cosa è successo: E' stato  LICENZIATO/A, prepensionato/a, messo/a in cassa integrazione o in condizione di lasciare il lavoro",
  "E’ successo in occasione o a seguito di una gravidanza?",
  "Rispetto alla gravidanza/nascita di Suo figlio quando ha lasciato il lavoro?",
  "Nel corso della sua vita, mentre lavorava, Le è mai capitato di essere LICENZIATO/A, prepensionato/a, messo/a in cassa integrazione o in condizione di lasciare il lavoro attraverso sue dimissioni?",
  "E’ successo in occasione o a seguito di una gravidanza?",
  "Rispetto alla gravidanza/nascita di Suo figlio quando ha lasciato il lavoro?",
  "Nel corso della sua vita, mentre lavorava, Le è mai capitato che i risultati raggiunti o le sue CAPACITÀ SONO STATE SMINUITE e/o valutate negativamente dai suoi colleghi (superiori, sottoposti o pari ",
  "Nel corso della sua vita, mentre lavorava, Le è mai capitato di essere retribuito con un SALARIO INFERIORE A QUELLO ADEGUATO per la mansione svolta o a quello percepito da colleghi con le stesse mansi",
  "Nel corso della sua vita, mentre lavorava, Le è mai capitato di essere retribuito con un SALARIO INFERIORE A QUELLO ADEGUATO per la mansione svolta o a quello percepito da colleghi con le stesse mansioni perché era maschio/femmina?",
  "Nel corso della sua vita, mentre lavorava, Le è mai capitato di essere retribuito con un SALARIO INFERIORE A QUELLO ADEGUATO per la mansione svolta o a quello percepito da colleghi con le stesse mansioni per il suo aspetto esteriore?",
  "Nel corso della Sua vita è mai capitato che qualcuno l’abbia insultata o presa a male parole, che l’abbia umiliata, offesa o messa in ridicolo in un modo che l’ha fatta stare male?",
  "Nel corso della Sua vita Le è mai capitato di essere minacciato/a, assalito/a o aggredito/a fisicamente in un modo che l’ha davvero  spaventata, da persone conosciute o da sconosciuti?",
  "Attualmente ha una relazione di coppia anche se non vivete insieme?",
  "Chi si occupa di cucinare?",
  "Chi si occupa  di pulire la casa?",
  "Chi si occupa  di prendersi cura dei figli: lavarli, vestirli, farli mangiare?",
  "Diviso del lavoro domestico tra Lei e il Suo/la Sua partner",
  "Tra Lei e il Suo/la Sua partner chi guadagna di più? ",
  "Che cosa è successo: Ha subito delle percosse, violenze fisiche",
  "Indicare il sesso di “NOME”",
  "Età in classi",
  "Qual è il titolo di studio più elevato che ha conseguito?",
  "Condizione professionale")

RIP_Fact <- factor(sample$RIP, 
                   levels=c(1, 
                            2, 
                            3, 
                            4), 
                   labels=c("Italia Nord_Ovest", 
                            "Italia Nord_Est", 
                            "Italia Centrale", 
                            "Sud e Isole")) 


PADRENATO_Fact <- factor(sample$PADRENATO, 
                         levels=c(1, 
                                  2), 
                         labels=c("Italia", 
                                  "Estero")) 


MADRENATO_Fact <- factor(sample$MADRENATO, 
                         levels=c(1, 
                                  2), 
                         labels=c("Italia", 
                                  "Estero")) 
CARICOLAV_Fact <- factor(sample$CARICOLAV, 
                         levels=c(1, 
                                  2, 
                                  3, 
                                  4), 
                         labels=c("Sì, spesso", 
                                  "Sì, di tanto in tanto", 
                                  "Sì, ma raramente", 
                                  "No, mai")) 
UOMOPRIMA_Fact <- factor(sample$UOMOPRIMA, 
                         levels=c(1, 
                                  2, 
                                  3), 
                         labels=c("D'accordo", 
                                  "Né d'accordo né contrario", 
                                  "Contrario"))
UOMOSOLDI_Fact <- factor(sample$UOMOSOLDI, 
                         levels=c(1, 
                                  2, 
                                  3, 
                                  4), 
                         labels=c("Molto", 
                                  "Abbastanza", 
                                  "Poco", 
                                  "Per niente")) 


UOMODECIDE_Fact <- factor(sample$UOMODECIDE, 
                          levels=c(1, 
                                   2, 
                                   3, 
                                   4), 
                          labels=c("Molto", 
                                   "Abbastanza", 
                                   "Poco", 
                                   "Per niente")) 


NODONNASUP_Fact <- factor(sample$NODONNASUP, 
                          levels=c(1, 
                                   2, 
                                   3, 
                                   4, 
                                   9), 
                          labels=c("Molto", 
                                   "Abbastanza", 
                                   "Poco", 
                                   "Per niente", 
                                   "Non sa"))
FAMOSTACOLO_Fact <- factor(sample$FAMOSTACOLO, 
                           levels=c(1, 
                                    2, 
                                    3, 
                                    4, 
                                    9), 
                           labels=c("Molto", 
                                    "Abbastanza", 
                                    "Poco", 
                                    "Per niente", 
                                    "Non sa")) 


PIUDONNE_Fact <- factor(sample$PIUDONNE, 
                        levels=c(1, 
                                 2, 
                                 3, 
                                 4), 
                        labels=c("Molto", 
                                 "Abbastanza", 
                                 "Poco", 
                                 "Per niente")) 


DIVISIONEFAM_Fact <- factor(sample$DIVISIONEFAM, 
                            levels=c(1, 
                                     2, 
                                     3, 
                                     4), 
                            labels=c("Molto", 
                                     "Abbastanza", 
                                     "Poco", 
                                     "Per niente")) 


INADATTI_Fact <- factor(sample$INADATTI, 
                        levels=c(1, 
                                 2, 
                                 3, 
                                 4), 
                        labels=c("Molto", 
                                 "Abbastanza", 
                                 "Poco", 
                                 "Per niente")) 


PIUCURA_Fact <- factor(sample$PIUCURA, 
                       levels=c(1, 
                                2, 
                                3, 
                                4), 
                       labels=c("Molto", 
                                "Abbastanza", 
                                "Poco", 
                                "Per niente")) 


D_DISCRIM_Fact <- factor(sample$D_DISCRIM, 
                         levels=c(1, 
                                  2, 
                                  3, 
                                  4), 
                         labels=c("Sì, molto", 
                                  "Sì, abbastanza", 
                                  "Sì, poco", 
                                  "No, per niente")) 


D_DISCRIM5AA_Fact <- factor(sample$D_DISCRIM5AA, 
                            levels=c(1, 
                                     2, 
                                     3, 
                                     9), 
                            labels=c("Più discriminate", 
                                     "Meno discriminate", 
                                     "Non c'è differenza", 
                                     "Non sa"))
RINUNCLAV_Fact <- factor(sample$RINUNCLAV, 
                         levels=c(1, 
                                  2), 
                         labels=c("Sì", 
                                  "No")) 
RINUNCCAMBIO_Fact <- factor(sample$RINUNCCAMBIO, 
                            levels=c(1, 
                                     2), 
                            labels=c("Sì", 
                                     "No")) 


RINUNINC_Fact <- factor(sample$RINUNINC, 
                        levels=c(1, 
                                 2, 
                                 3, 
                                 4), 
                        labels=c("Sì, ha rinunciato per impegni/responsabilità familiari", 
                                 "Sì, ha rinunciato per altri motivi", 
                                 "No, ha accettato", 
                                 "No, non gli è stato mai proposto"))
S_DISCRIM_Fact <- factor(sample$S_DISCRIM, 
                         levels=c(1, 
                                  2), 
                         labels=c("Sì", 
                                  "No"))
S_SESSO_Fact <- factor(sample$S_SESSO, 
                       levels=c(1, 
                                2), 
                       labels=c("Sì", 
                                "No"))
S_ASPET_Fact <- factor(sample$S_ASPET, 
                       levels=c(1, 
                                2), 
                       labels=c("Sì", 
                                "No"))
C_DISCRIM_Fact <- factor(sample$C_DISCRIM, 
                         levels=c(1, 
                                  2, 
                                  3), 
                         labels=c("Sì", 
                                  "No", 
                                  "Non ho mai cercato lavoro"))
C_RETRINF_Fact <- factor(sample$C_RETRINF, 
                         levels=c(0, 
                                  3), 
                         labels=c("Assenza", 
                                  "Presenza")) 
C_GRAVID_Fact <- factor(sample$C_GRAVID, 
                        levels=c(1, 
                                 2), 
                        labels=c("Sì", 
                                 "No")) 


C_SESSO_Fact <- factor(sample$C_SESSO, 
                       levels=c(1, 
                                2), 
                       labels=c("Sì", 
                                "No"))
C_ASPET_Fact <- factor(sample$C_ASPET, 
                       levels=c(1, 
                                2), 
                       labels=c("Sì", 
                                "No"))
L_DISCRIM_Fact <- factor(sample$L_DISCRIM, 
                         levels=c(1, 
                                  2), 
                         labels=c("Sì", 
                                  "No"))
L_LICENZ_Fact <- factor(sample$L_LICENZ, 
                        levels=c(0, 
                                 4), 
                        labels=c("Assenza", 
                                 "Presenza")) 


L_LICGRAV_Fact <- factor(sample$L_LICGRAV, 
                         levels=c(1, 
                                  2), 
                         labels=c("Sì", 
                                  "No")) 


L_QDLICGRAV_Fact <- factor(sample$L_QDLICGRAV, 
                           levels=c(1, 
                                    2, 
                                    3, 
                                    4), 
                           labels=c("Durante la gravidanza", 
                                    "Nei primi 3 mesi dalla nascita del bambino", 
                                    "Dopo i 3 mesi e nell'arco del primo anno di vita del bambino", 
                                    "Dopo il primo anno di vita del bambino")) 
L_LICENZ2_Fact <- factor(sample$L_LICENZ2, 
                         levels=c(1, 
                                  2), 
                         labels=c("Sì", 
                                  "No")) 


L_LICGRAV2_Fact <- factor(sample$L_LICGRAV2, 
                          levels=c(1, 
                                   2), 
                          labels=c("Sì", 
                                   "No")) 


L_QDLICGRAV2_Fact <- factor(sample$L_QDLICGRAV2, 
                            levels=c(1, 
                                     2, 
                                     3, 
                                     4), 
                            labels=c("Durante la gravidanza", 
                                     "Nei primi 3 mesi dalla nascita del bambino", 
                                     "Dopo i 3 mesi e nell'arco del primo anno di vita del bambino", 
                                     "Dopo il primo anno di vita del bambino")) 
L_CAPAC2_Fact <- factor(sample$L_CAPAC2, 
                        levels=c(1, 
                                 2), 
                        labels=c("Sì", 
                                 "No")) 
L_RETRINF2_Fact <- factor(sample$L_RETRINF2, 
                          levels=c(1, 
                                   2), 
                          labels=c("Sì", 
                                   "No"))
L_SESSO_Fact <- factor(sample$L_SESSO, 
                       levels=c(1, 
                                2), 
                       labels=c("Sì", 
                                "No")) 
L_ASPET_Fact <- factor(sample$L_ASPET, 
                       levels=c(1, 
                                2), 
                       labels=c("Sì", 
                                "No"))
UMILIATA_Fact <- factor(sample$UMILIATA, 
                        levels=c(1, 
                                 2), 
                        labels=c("Sì", 
                                 "No"))
MIN_Fact <- factor(sample$MIN, 
                   levels=c(1, 
                            2, 
                            3, 
                            4), 
                   labels=c("Sì, è stato minacciato", 
                            "Sì, è stato aggredito fisicamente", 
                            "Sì, è stato minacciato e aggredito fisicamente (in episodi diversi)", 
                            "No, non è mai capitato"))
RELAZOUT_Fact <- factor(sample$RELAZOUT, 
                        levels=c(1, 
                                 2), 
                        labels=c("Si", 
                                 "No")) 
CUCINA_Fact <- factor(sample$CUCINA, 
                      levels=c(1, 
                               2, 
                               3, 
                               4, 
                               5, 
                               6), 
                      labels=c("Solo il/la partner", 
                               "Prevalentemente il/la partner", 
                               "Solo l’intervistato/a", 
                               "Prevalentemente l’intervistato/a", 
                               "Entrambi in egual misura", 
                               "Nessuno dei due"))
PULIZIA_Fact <- factor(sample$PULIZIA, 
                       levels=c(1, 
                                2, 
                                3, 
                                4, 
                                5, 
                                6), 
                       labels=c("Solo il/la partner", 
                                "Prevalentemente il/la partner", 
                                "Solo l’intervistato/a", 
                                "Prevalentemente l’intervistato/a", 
                                "Entrambi in egual misura", 
                                "Nessuno dei due")) 


CURAFIGLI_Fact <- factor(sample$CURAFIGLI, 
                         levels=c(1, 
                                  2, 
                                  3, 
                                  4, 
                                  5, 
                                  6, 
                                  7), 
                         labels=c("Solo il/la partner", 
                                  "Prevalentemente il/la partner", 
                                  "Solo l’intervistato/a", 
                                  "Prevalentemente l’intervistato/a", 
                                  "Entrambi in egual misura", 
                                  "Nessuno dei due", 
                                  "Non pertinente")) 


DIVISLAV_Fact <- factor(sample$DIVISLAV, 
                        levels=c(1, 
                                 2, 
                                 3), 
                        labels=c("Giusta nei riguardi di entrambi", 
                                 "Ingiusta nei suoi riguardi", 
                                 "Ingiusta nei riguardi del partner")) 


PIUGUAD_Fact <- factor(sample$PIUGUAD, 
                       levels=c(1, 
                                2, 
                                3, 
                                4, 
                                5, 
                                6), 
                       labels=c("L'intervistato/a", 
                                "Il/la  partner", 
                                "Guadagniamo all’incirca la stessa cifra", 
                                "L’intervistato non lavora/non guadagna", 
                                "Il Suo/la Sua partner non lavora/non guadagna", 
                                "L’intervistato/a e il /la suo/a partner non lavorano/non guadagnano")) 


S_PERCOSS_Fact <- factor(sample$S_PERCOSS, 
                         levels=c(0, 
                                  5), 
                         labels=c("Assente", 
                                  "Presente")) 


SESSO_Fact <- factor(sample$SESSO, 
                     levels=c(1, 
                              2), 
                     labels=c("Maschio", 
                              "Femmina")) 
ETA_Fact <- factor(sample$ETA, 
                   levels=c(1, 
                            2, 
                            3, 
                            4, 
                            5), 
                   labels=c("18-34", 
                            "35-44", 
                            "45-54", 
                            "55-64", 
                            "65-74"))
ISTR_Fact <- factor(sample$ISTR, 
                    levels=c(1, 
                             3, 
                             4, 
                             5, 
                             8, 
                             10, 
                             12, 
                             14), 
                    labels=c("Nessun titolo e non sa leggere né scrivere;Nessun titolo ma sa leggere e scrivere", 
                             "Licenza elementare/attestato di valutazione finale", 
                             "Licenza media (o avviamento professionale)/Diploma di istruzione secondaria di primo grado", 
                             "Diploma di qualifica professionale di scuola superiore di 2-3 anni che non permette l’iscrizione all’Università;Diploma di maturità/Diploma di istruzione secondaria superiore di 4-5 anni/Diploma intermedio di conservatorio musicale o di danzatore;Diploma d", 
                             "Diploma universitario di due/tre anni, Scuola diretta a fini speciali, Scuola parauniversitaria;Laurea di primo livello (corsi di 3 anni)", 
                             "Laurea specialistica  (corsi di secondo livello di 2 anni);Laurea di 4 anni o più (vecchio ordinamento o laurea specialistica/magistrale a ciclo unico)", 
                             "Titolo di studio post-laurea (diploma di specializzazione, master universitario di 1° e di 2° livello);Titolo di dottore di ricerca", 
                             "Non sa/Non ricorda"))
CONDIZ_Fact <- factor(sample$CONDIZ, 
                      levels=c(1, 
                               2, 
                               4, 
                               5, 
                               6, 
                               8), 
                      labels=c("Occupati", 
                               "In cerca di nuova occupazione;In cerca di prima occupazione;Cercano ma non attivamente e/o non disponibili", 
                               "Casalinghe", 
                               "Studenti", 
                               "Ritirati dal lavoro", 
                               "Inabili al lavoro;In altra condizione")) 

save.image (file="sample.RData")