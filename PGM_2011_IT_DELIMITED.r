#LIMITAZIONE DELLA RESPONSABILITA'. 
#Il software è fornito "così com'è", senza garanzie di  sorta.
fileInput = "DISCRIM_Microdati_Anno_2011.txt"
DF_DISCRIM_A2011<- read.delim2 (fileInput)
attr(DF_DISCRIM_A2011, "label") <- c(
"Ripartizione geografica",
"Numero di componenti la famiglia",
"Suo padre è nato in Italia o all’estero?",
"Sua madre è nata in Italia o all’estero?",
"Ha figli/e che non vivono con Lei?",
"La settimana scorsa, da lunedì a domenica, ha svolto almeno un'ora di lavoro?",
"Aveva comunque un lavoro che non ha svolto, ad esempio: per un periodo limitato di ridotta attività, per malattia, per vacanza, per cassa integrazione guadagni, etc.?",
"Nel corso della Sua vita ha mai svolto un lavoro?",
"Ha/aveva dei dipendenti?",
"Lei è/era:",
"In quale settore di attività economica lavora/lavorava?",
"Lavora/lavorava per una pubblica amministrazione o per un privato?",
"Il Suo rapporto di lavoro è/era regolato da un contratto o da un accordo verbale con il datore di lavoro?",
"Il Suo lavoroè/era a termine (a tempo determinato) oppure non ha/aveva una scadenza (lavoro a tempo indeterminato)?",
"Lavora/lavorava a tempo pieno o part-time?",
"Lavora/lavorava part-time (a tempo parziale) perché non vuole/voleva un lavoro a tempo pieno oppure perché non ha trovato/trovava un lavoro a tempo pieno?",
"Le capita di pensare di avere un carico eccessivo di lavoro domestico?",
"Sulla condizione degli uomini e delle donne oggi  in Italia",
"Le donne stanno meglio o peggio: possibilità di trovare un posto di lavoro adeguato al proprio titolo di studio e/o alla propria esperienza",
"Le donne stanno meglio o peggio: su guadagno percepito a parità di posto di lavoro?",
"Le donne stanno meglio o peggio: su possibilità di fare  carriera/promozione?",
"Le donne stanno meglio o peggio: su stabilità del posto di lavoro?",
"Le donne stanno meglio o peggio: su adeguata considerazione da parte del datore e dei colleghi di lavoro?",
"D’accordo o contrario alla seguente affermazione: In condizione di scarsità di lavoro, dare la precedenza agli uomini rispetto alle donne",
"E’ soprattutto l’uomo che deve provvedere alle necessità economiche della famiglia",
"E’ l’uomo che deve prendere le decisioni più importanti riguardanti la famiglia",
"Non è naturale che un uomo abbia un superiore donna al lavoro",
"Più donne in posizioni dirigenziali, mondo degli affari e l’economia migliore",
"Per una donna le responsabilità familiari sono un ostacolo nell’accesso a posizioni dirigenziali",
"Le donne che ricoprono cariche pubbliche dovrebbero essere più numerose rispetto a quante sono oggi",
"In una coppia in cui entrambi i partner lavorano a tempo pieno, le faccende domestiche dovrebbero essere divise in modo uguale",
"Gli uomini sono meno adatti ad occuparsi delle faccende domestiche",
"Gli uomini dovrebbero partecipare di più alla cura e all’educazione dei propri figli",
"Secondo Lei, in Italia, in generale le donne sono discriminate, cioè trattate meno bene rispetto agli uomini?",
"Se confronta la situazione di oggi con quella di 5 anni fa in Italia, direbbe che oggi le donne sono più o meno discriminate?",
"In generale gli uomini sono leader politici migliori delle donne",
"In genere, gli uomini sono dirigenti migliori delle donne",
"Avere un’istruzione universitaria è più importante per un ragazzo che per una  ragazza",
"Una madre che lavora può stabilire un buon rapporto con i propri figli esattamente come una madre che non lavora",
"La vita familiare spesso risente del fatto che gli uomini si concentrano troppo sul loro lavoro",
"Nel corso della vita ha rinunciato a cercare lavoro/iniziare un lavoro, a causa dei suoi impegni e responsabilità familiari",
"Qual è il motivo principale per cui ha dovuto rinunciare a cercare lavoro o ad iniziare a lavorare?",
"Nel corso della vita ha dovuto smettere/cambiare lavoro a causa dei suoi impegni e responsabilità familiari",
"Nel corso della vita ha rinunciato a lavoro ad un particolare incarico che avrebbe voluto accettare a causa dei suoi impegni e responsabilità familiari",
"Nel corso della vita ha dovuto prendere congedi, ridurre ore di lavoro, accettare incarico di minore importanza, a causa dei suoi impegni e responsabilità familiari",
"(Per i lav. dipendenti) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: RETRIBUZIONE",
"(Per i lav. dipendenti) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: CORSI FORMAZIONE",
"(Per i lav. dipendenti) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: CARICHI DI LAVORO",
"(Per i lav. dipendenti) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: CARRIERA",
"(Per i lav. dipendenti) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: STABILITA'",
"(Per i lav. dipendenti) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: RISULTATI CONSEGUITI",
"(Per i lav. dipendenti) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: CAPACITA' PROFESSIONALI",
"(Per i lav. dipendenti) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: AUTONOMIA",
"(Per i lav. autonomi) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: COMPETENZE",
"(Per i lav. autonomi) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: GUADAGNI",
"(Per i lav. autonomi) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: RELAZIONI CON CLIENTELA",
"(Per i lav. autonomi) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: CON ALTRI LAVORATORI AUTONOMI",
"(Per i lav. autonomi) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: CON I DIPENDENTI",
"(Per i lav. autonomi) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: OPPORTUNITA' E CRESCITA",
"(Per i lav. autonomi) Lei pensa che essere UOMO/DONNA l’abbia svantaggiato/a in termini di: SUSSIDI/FINANZIAMENTI",
"Quando era a SCUOLA o all’UNIVERSITA', Le è capitato di essere discriminato/a",
"Pensi all’ultima volta che Le è successo, DOVE è accaduto?",
"Sempre con riferimento all’ultima volta, può dirmi DA CHI è stato discriminato/a? compagni",
"Sempre con riferimento all’ultima volta, può dirmi DA CHI è stato discriminato/a? insegnanti",
"Sempre con riferimento all’ultima volta, può dirmi DA CHI è stato discriminato/a? genitori di compagni",
"Sempre con riferimento all’ultima volta, può dirmi DA CHI è stato discriminato/a? preside",
"Sempre con riferimento all’ultima volta, può dirmi DA CHI è stato discriminato/a? altro",
"Che cosa è successo: É stato sfavorito/a agli esami/interrogazioni",
"Che cosa è successo: É stato emarginato, isolato, tenuto in disparte",
"Che cosa è successo: È stato offeso, preso in giro, trattato male, ridicolizzato",
"Che cosa è successo: Altro",
"MOTIVI: Per problemi di salute, invalidità, ecc?",
"MOTIVI: Perché proveniva da una famiglia diversa dalle famiglie della maggior parte dei suoi compagni (ad esempio: più ricca/più povera)?",
"MOTIVI: Per una gravidanza o perché aveva dei familiari di cui occuparsi?",
"MOTIVI: perché era (testo mobile) maschio/femmina?",
"MOTIVI: perché era più giovane/piccolo degli altri?",
"MOTIVI: perché er più grande degli altri?",
"MOTIVI: perché straniero/ per le sue origini straniere?",
"MOTIVI: per le sue convinzioni religiose?",
"MOTIVI: per le sue idee politiche o l’attività sindacale?",
"MOTIVI: per il suo aspetto esteriore?",
"MOTIVI: per la Sua regione/zona di provenienza?",
"MOTIVI: perché omosessuale, bisessuale, transessuale?",
"MOTIVI: perché non aveva le giuste conoscenze/relazioni?",
"MOTIVI: altro",
"Nel corso della Sua vita, Le è capitato di essere discriminato/a, mentre CERCAVA LAVORO?",
"Che cosa è successo: non mi hanno dato il lavoro anche se avevo i requisiti",
"Che cosa è successo: mi hanno proposto mansioni inferiori a quelle per cui avevo fatto domanda e per le quali ero qualificato",
"Che cosa è successo: mi hanno proposto una retribuzione inferiore a quella prevista (o concessa ad altri) per le stesse mansioni",
"Che cosa è successo: non hanno voluto mettermi in regola",
"Che cosa è successo: non mi è stato concesso di partecipare alla selezione/fare domanda",
"Che cosa è successo: Altro",
"Indicare il fatto più recente",
"E’ successo negli ultimi 3 ANNI? ",
"E’ successo negli ultimi 12 MESI? ",
"MOTIVI: Per problemi di salute, invalidità, ecc?",
"MOTIVI: Perché proveniva da una famiglia diversa dalle famiglie della maggior parte dei suoi compagni (ad esempio: più ricca/più povera)?",
"MOTIVI: Per una gravidanza o perché aveva dei familiari di cui occuparsi?",
"MOTIVI: perché era (testo mobile) maschio/femmina?",
"MOTIVI: perché era troppo giovane?",
"MOTIVI: perché aveva un’età troppo avanzata?",
"MOTIVI: perché straniero/ per le sue origini straniere?",
"MOTIVI: per le sue convinzioni religiose?",
"MOTIVI: per le sue idee politiche o l’attività sindacale?",
"MOTIVI: per il suo aspetto esteriore?",
"MOTIVI: per la Sua regione/zona di provenienza?",
"MOTIVI: perché omosessuale, bisessuale, transessuale?",
"MOTIVI: perché non aveva le giuste conoscenze/i giusti rapporti interpersonali?",
"Ci sono ALTRI MOTIVI per cui ritiene di essere stato/a discriminato/a?",
"Nel corso della Sua vita, Le è capitato di essere discriminato/a, cioè trattato/a meno bene degli altri, mentre lavorava?",
"Che cosa è successo: Gli sono stato affidate MANSIONI DI SCARSA IMPORTANZA,MANSIONI INFERIORI ALLA SUA QUALIFICA o compiti meno importanti rispetto ai colleghi anche se sarebbe stato/a in grado di por",
"Che cosa è successo: Non gli sono stati concessi PROMOZIONI/AVANZAMENTI PROFESSIONALI, AUMENTI DI STIPENDIO/ATTRIBUZIONE PREMI che meritava, anche se era possibile darglieli",
"Che cosa è successo: Non gli è stata concessa la trasformazione del rapporto di lavoro da TEMPO DETERMINATO A TEMPO INDETERMINATO anche se sarebbe stato possibile farlo",
"Che cosa è successo: E' stato  LICENZIATO/A, prepensionato/a, messo/a in cassa integrazione o in condizione di lasciare il lavoro",
"E’ successo in occasione o a seguito di una gravidanza?",
"Rispetto alla gravidanza/nascita di Suo figlio quando ha lasciato il lavoro?",
"Che cosa è successo: Gli sono stati RIFIUTATI CONGEDI/PERMESSI PARENTALI",
"Che cosa è successo: Non ha fatto richiesta di CONGEDI/PERMESSI PARENTALI per evitare che il suo datore di lavoro glieli rifiutasse o comunque si creasse un clima sfavorebole nei suoi confronti",
"Che cosa è successo: I risultati raggiunti o le sue CAPACITÀ SONO STATE SMINUITE e/o valutate negativamente dai suoi colleghi (superiori, sottoposti o pari grado)",
"Che cosa è successo: Gli sono stati affidati CARICHI DI LAVORO ECCESSIVI o penalizzanti (turni/lunghi orari etc.)",
"Che cosa è successo: Aveva una RETRIBUZIONE INFERIORE A QUELLA prevista per la mansione svolta o a quella percepita da colleghi con le stesse mansioni e/o qualifiche",
"Che cosa è successo: C’era un CLIMA OSTILE nei suoi confronti da parte dei colleghi, e/o di superiori, clienti",
"Che cosa è successo: Altro",
"Nel corso della sua vita, mentre lavorava, Le è mai capitato che le siano state affidate MANSIONI DI SCARSA IMPORTANZA,MANSIONI INFERIORI ALLA SUA QUALIFICA o compiti meno importanti rispetto ai colle",
"Nel corso della sua vita, mentre lavorava, Le è mai capitato che non le abbiano concesso PROMOZIONI/AVANZAMENTI PROFESSIONALI, AUMENTI DI STIPENDIO/ATTRIBUZIONE PREMI che meritava, anche se sarebbe st",
"Nel corso della sua vita, mentre lavorava, Le è mai capitato che non le sia stata concessa la trasformazione del rapporto di lavoro da TEMPO DETERMINATO A TEMPO INDETERMINATO?",
"Nel corso della sua vita, mentre lavorava, Le è mai capitato di essere LICENZIATO/A, prepensionato/a, messo/a in cassa integrazione o in condizione di lasciare il lavoro attraverso sue dimissioni?",
"E’ successo in occasione o a seguito di una gravidanza?",
"Rispetto alla gravidanza/nascita di Suo figlio quando ha lasciato il lavoro?",
"Nel corso della sua vita, mentre lavorava, Le è mai capitato che le siano stati RIFIUTATI CONGEDI/PERMESSI PARENTALI?",
"Nel corso della sua vita, mentre lavorava, Le è mai capitato di non fare richiesta di CONGEDI/PERMESSI PARENTALI per evitare che il suo datore di lavoro glieli rifiutasse o comunque si creasse un clim",
"Nel corso della sua vita, mentre lavorava, Le è mai capitato che i risultati raggiunti o le sue CAPACITÀ SONO STATE SMINUITE e/o valutate negativamente dai suoi colleghi (superiori, sottoposti o pari ",
"Nel corso della sua vita, mentre lavorava, Le è mai capitato che le siano stati affidati CARICHI DI LAVORO ECCESSIVI o penalizzanti (turni/lunghi orari etc.)?",
"Nel corso della sua vita, mentre lavorava, Le è mai capitato di essere retribuito con un SALARIO INFERIORE A QUELLO ADEGUATO per la mansione svolta o a quello percepito da colleghi con le stesse mansi",
"Indicare il fatto più recente",
"E’ successo negli ultimi 3 ANNI? ",
"E’ successo negli ultimi 12 MESI? ",
"Il fatto dicui stiamo parlando è successo durante lo svolgimento della sua attuale/ultima attività lavorativa o durante una sua attività lavorativa precedente?",
"MOTIVI: Per problemi di salute, invalidità, ecc?",
"MOTIVI: Perché proveniva da una famiglia diversa dalle famiglie della maggior parte dei suoi compagni (ad esempio: più ricca/più povera)?",
"MOTIVI: Per una gravidanza o perché aveva dei familiari di cui occuparsi?",
"MOTIVI: perché era (testo mobile) maschio/femmina?",
"MOTIVI: perché era troppo giovane?",
"Lei mi ha detto di essere stato discriminato perché troppo giovane. Mi può spiegare in che senso?",
"MOTIVI: perché aveva un’età troppo avanzata?",
"MOTIVI: perché straniero/ per le sue origini straniere?",
"MOTIVI: per le sue convinzioni religiose?",
"MOTIVI: per le sue idee politiche o l’attività sindacale?",
"MOTIVI: per il suo aspetto esteriore?",
"MOTIVI: per la Sua regione/zona di provenienza?",
"MOTIVI: perché omosessuale, bisessuale, transessuale?",
"MOTIVI: perché non aveva le giuste conoscenze/i giusti rapporti interpersonali?",
"Ci sono ALTRI MOTIVI per cui ritiene di essere stato/a discriminato/a?",
"Nel corso della Sua vita è mai capitato che qualcuno l’abbia insultata o presa a male parole, che l’abbia umiliata, offesa o messa in ridicolo in un modo che l’ha fatta stare male?",
"E’ successo negli ultimi 3 ANNI? ",
"E’ successo negli ultimi 12 MESI? ",
"Nel corso della Sua vita Le è mai capitato di essere minacciato/a, assalito/a o aggredito/a fisicamente in un modo che l’ha davvero  spaventata, da persone conosciute o da sconosciuti?",
"E’ successo negli ultimi 3 ANNI? ",
"E’ successo negli ultimi 12 MESI? ",
"Gli immigrati che vivono oggi in Italia sono troppi, pochi, o né troppi né pochi",
"Come giudica il fenomeno su aspetto demografico",
"Giustificabile che: Un DATORE DI LAVORO rifiuta di assumere un dipendente con le qualifiche richieste perché immigrato",
"Giustificabile che: Un PROPRIETARIO  rifiuta di affittare un appartamento ad una persona perché immigrata",
"Giustificabile che: A scuola, uno STUDENTE viene preso in giro dai compagni perché immigrato",
"Giustificabile che: Un LAVORATORE  viene trattato meno bene rispetto ai  colleghi perché immigrato",
"In generale, ritiene che l’atteggiamento degli italiani nei confronti degli immigrati sia . . . . . . .",
"E come giudica invece l'atteggiamento degli immigrati in generale nei confronti degli italiani?",
"La presenza degli immigrati è positiva perché permette il confronto con altre culture",
"L'aumento degli immigrati favorisce il diffondersi del terrorismo e della criminalità",
"Gli immigrati sono necessari per fare il lavoro che gli italiani non vogliono fare",
"L’Italia è degli italiani e non c’è posto per gli immigrati",
"Gli immigrati tolgono lavoro agli italiani",
"Gli immigrati residenti da alcuni anni in Italia dovrebbero avere diritto a votare nelle elezioni comunali",
"In condizioni di scarsità di lavoro, i datori di lavoro dovrebbero dare la precedenza agli italiani rispetto agli immigrati",
"Nell’attribuzione degli alloggi popolari, a parità di requisiti, gli immigrati dovrebbero essere inseriti nella graduatoria dopo gli italiani",
"A parità di capacità e di titoli un immigrato ha uguali, minori o maggiori possibilità di un italiano: DI TROVARE UN LAVORO?",
"A parità di capacità e di titoli un immigrato ha uguali, minori o maggiori possibilità di un italiano: DI OTTENERE UNA PROMOZIONE?",
"A parità di disponibilità economica un immigrato ha uguali, minori o maggiori possibilità di un italiano: DI TROVARE UNA CASA IN AFFITTO?",
"In generale in Italia gli immigrati sono discriminati, cioè trattati meno bene rispetto agli italiani?",
"Se confronta la situazione di oggi con quella di 5 anni fa in Italia, direbbe che oggi gli immigrati sono più o meno discriminati?",
"Ogni persona dovrebbe avere  il diritto di vivere in qualsiasi paese del mondo abbia scelto",
"E’ meglio che italiani e immigrati stiano ognuno per conto proprio",
"Un quartiere si degrada quando ci sono molti immigrati",
"Se dovessi adottare un bambino, sarei felice di adottarne uno di qualsiasi razza o provenienza",
"Molti politici italiani si prendono troppo cura degli immigrati e non abbastanza degli italiani",
"Le pratiche religiose di alcuni immigrati  minacciano il nostro modo di vivere",
"Secondo Lei, rispetto agli immigrati che vengono oggi in Italia, come si comportavano gli italiani all’estero?",
"E secondo Lei come venivano trattati gli italiani che emigravano all’estero rispetto a come oggi sono trattati gli immigrati qui in Italia?",
"Secondo lei, in Italia, ci sono immigrati di alcune nazionalità che creano particolari problemi oppure no?",
"Come ritiene che sia per un immigrato l'inserimento nella nostra società: facile, difficile o impossibile?",
"Per le donne immigrate, l'integrazione nel nostro Paese è più o meno facile rispetto agli uomini immigrati?",
"Lei pensa che si dovrebbe favorire il ricongiungimento dei familiari degli immigrati regolari presenti in Italia, oppure scoraggiarlo?",
"Se vicino a casa Sua si dovesse aprire una moschea, Lei sarebbe favorevole o contrario?",
"Perché sarebbe contrario all’apertura di una moschea vicino casa sua? Indichi il motivo principale",
"Se vicino a casa Sua si dovesse aprire un altro luogo di culto (una sinagoga, una chiesa ortodossa, un tempio buddista), Lei sarebbe favorevole o contrario?",
"Perché sarebbe contrario all’apertura di una sinagoga, una chiesa ortodossa, etc. vicino casa sua? Indichi il motivo principale",
"Secondo Lei, qui in Italia dovrebbe essere permesso alle donne che lo vogliono, di coprirsi il viso per motivi religiosi?",
"In questi ultimi anni sono sempre più frequenti in Italia i matrimoni e le unioni miste tra italiani e immigrati: come considera il fatto?",
"Se sua figlia volesse sposare un MAROCCHINO quanto le creerebbe problema?",
"Se sua figlia volesse sposare un PERUVIANO quanto le creerebbe problema?",
"Se sua figlia volesse sposare un ALBANESE quanto le creerebbe problema?",
"Se sua figlia volesse sposare un STATUNITENSE quanto le creerebbe problema?",
"Se sua figlia volesse sposare un NIGERIANO quanto le creerebbe problema?",
"Se sua figlia volesse sposare un ROM (zingaro) quanto le creerebbe problema?",
"Se sua figlia volesse sposare un CINESE quanto le creerebbe problema?",
"Se sua figlia volesse sposare un ROMENO quanto le creerebbe problema?",
"Lei personalmente conosce o ha avuto occasione di conoscere qualche immigrato che vive in Italia?",
"Si tratta di? Membro della sua famiglia",
"Si tratta di? Qualcuno a scuola/università",
"Si tratta di? Qualcuno sul suo posto di lavoro",
"Si tratta di? Amico",
"Si tratta di? Vicino di casa",
"Si tratta di? Persone che aiutano nelle faccende domestiche, nella cura di bambini e/anziani",
"Si tratta di? Altro conoscente",
"In generale, Lei pensa che la presenza di lavoratori immigrati in Italia comporti dei vantaggi o degli inconvenienti per l’economia del paese?",
"Secondo Lei, dopo quanti anni di residenza regolare in Italia sarebbe giusto poter ottenere, se richiesta, la cittadinanza italiana?",
"Lei sarebbe favorevole o contrario a dare alla nascita la cittadinanza italiana ai figli di immigrati nati nel nostro Paese?",
"Secondo Lei, un immigrato clandestino che non ha commesso reati dovrebbe essere espulso?",
"Oggi nella scuola italiana sono presenti molti studenti figli di immigrati extracomunitari. Lei pensa che sia preferibile: raggruppare gli immigrati in alcune classi, oppure distribuire gli immigrati ",
"Per quale motivo sarebbe preferibile raggruppare gli immigrati in alcune classi?",
"Lei pensa che sia un comportamento accettabile o non che un UOMO e una DONNA si bacino per strada?",
"Lei pensa che sia un comportamento accettabile o non che due DONNE si bacino per strada?",
"Lei pensa che sia un comportamento accettabile o non che due UOMINI si bacino per strada?",
"Quanto considera accettabile che un UOMO abbia una relazione affettiva e sessuale con un altro uomo",
"Quanto considera accettabile che un DONNA abbia una relazione affettiva e sessuale con un altro uomo",
"Lei ritiene che avere rapporti sessuali  con persone dello stesso sesso sia sempre giustificato o mai giustificato?",
"Lei pensa che, a parità di capacità e di titoli, in Italia una persona omosessuale abbia UGUALI, MINORI o MAGGIORI possibilità di una persona non omosessuale DI TROVARE UN LAVORO?",
"Lei pensa che, a parità di capacità e di titoli, in Italia una persona omosessuale abbia UGUALI, MINORI o MAGGIORI possibilità di una persona non omosessuale DI OTTENERE UNA PROMOZIONE?",
"Lei pensa che, a parità di disponibilità economica, in Italia una persona omosessuale abbia UGUALI, MINORI o MAGGIORI possibilità di una persona non omosessuale DI TROVARE UNA CASA IN AFFITTO?",
"In generale, secondo Lei, in Italia, gli omosessuali sono discriminati, cioè trattati meno bene rispetto agli altri?",
"Se confronta la situazione di oggi con quella di 5 anni fa in Italia, direbbe che oggi gli omosessuali sono più o meno discriminati?",
"Quanto per Lei è accettabile avere un COLLEGA omosessuale?",
"Quanto per Lei è accettabile avere un SUPERIORE omosessuale?",
"Quanto per Lei è accettabile avere un MEDICO omosessuale?",
"Quanto per Lei è accettabile avere un AMICO omosessuale?",
"Quanto per Lei è accettabile avere un POLITICO omosessuale?",
"Quanto per Lei è accettabile avere un INSEGNANTE DI SCUOLA ELEMENTARE omosessuale?",
"Quanto giustificabile che un DATORE DI LAVORO rifiuta di assumere un dipendente con le qualifiche richieste perché omosessuale",
"Quanto giustificabile che un PROPRIETARIO rifiuta di affittare un appartamento ad una persona perché omosessuale",
"Quanto giustificabile che un LAVORATORE viene trattato meno bene rispetto ai  colleghi perché omosessuale",
"Le è mai capitato di sentire suoi conoscenti o amici che, quando parlano di omosessuali, li chiamano froci, recchioni, finocchi o culattoni?",
"E' mai capitato a Lei di chiamarli froci, recchioni, finocchi o culattoni?",
"Lei personalmente conosce o ha avuto occasione di conoscere qualche persona omosessuale?",
"Si tratta di? Membro della sua famiglia",
"Si tratta di? Qualcuno a scuola/università",
"Si tratta di? Qualcuno sul suo posto di lavoro",
"Si tratta di? Amico",
"Si tratta di? Vicino di casa",
"Si tratta di? Altro conoscente",
"Si può amare una persona dell’altro sesso oppure una dello stesso sesso: l’importante è amare",
"L’omosessualità è una malattia",
"E’ giusto che una coppia omosessuale si sposi, se lo desidera",
"E’ giusto che una coppia di omosessuali che convive, pur non sposandosi, possa avere per legge gli stessi diritti di una coppia sposata, come diritti di eredità, reversibilità della pensione, assisten",
"L’omosessualità è immorale",
"E’ giusto che una coppia di lesbiche possa adottare un bambino",
"L’omosessualità è una minaccia per la famiglia",
"E’ giusto che una coppia di gay possa adottare un bambino",
"La cosa migliore per un omosessuale è non dire agli altri di esserlo",
"Se gli omosessuali fossero più discreti sarebbero meglio accettati",
"In generale, i gay sono uomini effeminati",
"In generale, le lesbiche sono donne mascoline",
"Secondo Lei, in Italia, in generale le persone transessuali sono discriminate, cioè trattate meno bene rispetto agli altri?",
"Quanto è giustificabile che un DATORE DI LAVORO rifiuti di assumere un dipendente con le qualifiche richieste perché transessuale?",
"Quanto è giustificabile che un PROPRIETARIO rifiuti di affittare un appartamento ad una persona perché transessuale",
"Quanto è giustificabile che un LAVORATORE venga trattato meno bene rispetto ai  colleghi perché transessuale",
"Chi non vorrebbe avere come vicini? TOSSICODIPENDENTI",
"Chi non vorrebbe avere come vicini? PERSONE CON AIDS",
"Chi non vorrebbe avere come vicini? IMMIGRATI",
"Chi non vorrebbe avere come vicini? OMOSESSUALI",
"Chi non vorrebbe avere come vicini? PERSONE CON RELIGIONI DIVERSE",
"Chi non vorrebbe avere come vicini? ALCOOLISTI",
"Chi non vorrebbe avere come vicini? ZINGARI (ROM)",
"Chi non vorrebbe avere come vicini? TRANSESSUALI",
"Chi non vorrebbe avere come vicini? Famiglia di MAROCCHINI",
"Chi non vorrebbe avere come vicini?  Famiglia di PERUVIANI",
"Chi non vorrebbe avere come vicini?  Famiglia di ALBANESI",
"Chi non vorrebbe avere come vicini?  Famiglia di NIGERIANI",
"Chi non vorrebbe avere come vicini?  Famiglia di CINESI",
"Chi non vorrebbe avere come vicini?  Famiglia di ROMENI",
"Abitualmente con che frequenza si reca in chiesa o in altro luogo di culto?",
"Quanto è importante la religione nella sua vita?",
"Nel corso della Sua vita Le è capitato di sentirsi talmente male da pensare di togliersi la vita?",
"Nel corso della  Sua vita, si è mai innamorato di un uomo?",
"Nel corso della Sua vita, si è mai sentito attratto sessualmente da un uomo?",
"Nel corso della Sua vita, ha mai avuto rapporti o esperienze sessuali con un uomo?",
"In generale oggi, Lei da chi si sente attratto/a sessualmente?",
"Lei oggi come si definirebbe?",
"Sua madre è o era a conoscenza della Sua omosessualità/bisessualità?",
"Suo padre è o era a conoscenza della Sua omosessualità o della sua bisessualità?",
"Nel corso della compilazione del  presente questionario, il rilevatore è stato rispettoso della sua privacy?",
"Coefficiente di riporto all'universo",
"Attualmente ha una relazione di coppia anche se non vivete insieme?",
"Le capita: Tenere per mano in pubblico il tuo partner",
"Le capita: Abbracciare in pubblico il tuo partner",
"Le capita: Scambiarvi carezze in pubblico",
"Le capita: Baciarvi in pubblico",
"Chi si occupa di cucinare?",
"Chi si occupa di fare la spesa?",
"Chi si occupa  di fare il bucato/stirare?",
"Chi si occupa  di pulire la casa?",
"Chi si occupa  di prendersi cura dei figli: lavarli, vestirli, farli mangiare?",
"Diviso del lavoro domestico tra Lei e il Suo/la Sua partner",
"Tra Lei e il Suo/la Sua partner chi guadagna di più? ",
"Che cosa è successo: Ha subito delle percosse, violenze fisiche",
"Indicare il sesso di “NOME”",
"Relazione di parentela che lega “NOME” a “NOME DI P.R.”",
"Età in classi",
"Presenza assenza del partner in famiglia",
"Figli conviventi",
"Lei è nato/a in Italia o all estero?",
"Ha la cittadinanza italiana?",
"Qual è il Suo stato civile?",
"Qual è il titolo di studio più elevato che ha conseguito?",
"Facendo riferimento all unica o principale attività lavorativa, Lei svolge",
"Cerca attualmente o ha cercato lavoro nel passato",
"Condizione professionale")

RIP_Fact <- factor(DF_DISCRIM_A2011$RIP, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Italia Nord_Ovest", 
"Italia Nord_Est", 
"Italia Centrale", 
"Sud e Isole")) 


PADRENATO_Fact <- factor(DF_DISCRIM_A2011$PADRENATO, 
levels=c(1, 
2), 
labels=c("Italia", 
"Estero")) 


MADRENATO_Fact <- factor(DF_DISCRIM_A2011$MADRENATO, 
levels=c(1, 
2), 
labels=c("Italia", 
"Estero")) 


FIGLIOUT_Fact <- factor(DF_DISCRIM_A2011$FIGLIOUT, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


LAVO1_Fact <- factor(DF_DISCRIM_A2011$LAVO1, 
levels=c(1, 
2, 
3), 
labels=c("Sì", 
"No", 
"Permanentemente inabile al lavoro")) 


LAVO2_Fact <- factor(DF_DISCRIM_A2011$LAVO2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


LAVPAS_Fact <- factor(DF_DISCRIM_A2011$LAVPAS, 
levels=c(1, 
2, 
3), 
labels=c("Sì", 
"No", 
"Permanentemente inabile al lavoro")) 


DIPEND_Fact <- factor(DF_DISCRIM_A2011$DIPEND, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


POSDIP_Fact <- factor(DF_DISCRIM_A2011$POSDIP, 
levels=c(1, 
2, 
3, 
4, 
5, 
6), 
labels=c("Dirigente", 
"Quadro", 
"Impiegato", 
"Operaio", 
"Apprendista", 
"Lavoratore presso il proprio domicilio per conto di un'impresa")) 


ATECO_Fact <- factor(DF_DISCRIM_A2011$ATECO, 
levels=c(1, 
2, 
3, 
4, 
5, 
6, 
7, 
8, 
9, 
10, 
11, 
12, 
13, 
14, 
15, 
16, 
17, 
18, 
19, 
20, 
21), 
labels=c("Agricoltura, silvicoltura e pesca", 
"Estrazione di minerali da cave e miniere", 
"Attività manifatturiere", 
"Fornitura di energia elettrica, gas, vapore e aria condizionata", 
"Fornitura di acqua; reti fognarie, attività di gestione dei rifiuti e risanamento", 
"Costruzioni", 
"Commercio all'ingrosso e al dettaglio; riparazione di autoveicoli e motocicli", 
"Trasporto e magazzinaggio", 
"Attività dei servizi di alloggio e di ristorazione", 
"Servizi di informazione e comunicazione", 
"Attività finanziarie e assicurative", 
"Attività immobiliari", 
"Attività professionali, scientifiche e tecniche", 
"Noleggio, agenzie di viaggio, servizi di supporto alle imprese", 
"Amministrazione pubblica e difesa; assicurazione sociale obbligatoria", 
"Istruzione", 
"Sanità e assistenza sociale", 
"Attività artistiche, sportive, di intrattenimento e divertimento", 
"Altre attività di servizi", 
"Attività di famiglie e convivenze come datori di lavoro per personale domestico; produzione di beni e servizi indifferenziati per uso proprio da parte di famiglie e convivenze", 
"Organizzazioni ed organismi extraterritoriali")) 


PUBPRIV_Fact <- factor(DF_DISCRIM_A2011$PUBPRIV, 
levels=c(1, 
2), 
labels=c("Pubblica amministrazione", 
"Privato")) 


CONTRLAV_Fact <- factor(DF_DISCRIM_A2011$CONTRLAV, 
levels=c(1, 
2), 
labels=c("Contratto", 
"Accordo verbale")) 


LAVTER_Fact <- factor(DF_DISCRIM_A2011$LAVTER, 
levels=c(1, 
2), 
labels=c("A termine (tempo determinato)", 
"A tempo indeterminato (senza scadenza)")) 


REGIME_Fact <- factor(DF_DISCRIM_A2011$REGIME, 
levels=c(1, 
2), 
labels=c("A tempo pieno", 
"Part-time (a tempo parziale)")) 


MOTPARTIME_Fact <- factor(DF_DISCRIM_A2011$MOTPARTIME, 
levels=c(1, 
2), 
labels=c("Non vuole/voleva un lavoro a tempo pieno", 
"Non ha trovato un lavoro a tempo pieno")) 


CARICOLAV_Fact <- factor(DF_DISCRIM_A2011$CARICOLAV, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Sì, spesso", 
"Sì, di tanto in tanto", 
"Sì, ma raramente", 
"No, mai")) 


CONDIZUD_Fact <- factor(DF_DISCRIM_A2011$CONDIZUD, 
levels=c(1, 
2, 
3, 
4, 
5), 
labels=c("La condizione degli uomini nella nostra società è nettamente migliore di quella delle donne", 
"La condizione degli uomini è un po’ migliore di quella delle donne", 
"La condizione delle donne è nettamente migliore di quella degli uomini", 
"La condizione delle donne è un po’ migliore di quella degli uomini", 
"La condizione delle donne e degli uomini è la stessa")) 


DIFFLAV_Fact <- factor(DF_DISCRIM_A2011$DIFFLAV, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Meglio", 
"Peggio", 
"Non c'è differenza", 
"Non sa")) 


DIFFGUAD_Fact <- factor(DF_DISCRIM_A2011$DIFFGUAD, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Meglio", 
"Peggio", 
"Non c'è differenza", 
"Non sa")) 


DIFFCARR_Fact <- factor(DF_DISCRIM_A2011$DIFFCARR, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Meglio", 
"Peggio", 
"Non c'è differenza", 
"Non sa")) 


DIFFSTAB_Fact <- factor(DF_DISCRIM_A2011$DIFFSTAB, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Meglio", 
"Peggio", 
"Non c'è differenza", 
"Non sa")) 


DIFFCONS_Fact <- factor(DF_DISCRIM_A2011$DIFFCONS, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Meglio", 
"Peggio", 
"Non c'è differenza", 
"Non sa")) 


UOMOPRIMA_Fact <- factor(DF_DISCRIM_A2011$UOMOPRIMA, 
levels=c(1, 
2, 
3), 
labels=c("D'accordo", 
"Né d'accordo né contrario", 
"Contrario")) 


UOMOSOLDI_Fact <- factor(DF_DISCRIM_A2011$UOMOSOLDI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


UOMODECIDE_Fact <- factor(DF_DISCRIM_A2011$UOMODECIDE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


NODONNASUP_Fact <- factor(DF_DISCRIM_A2011$NODONNASUP, 
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


PIUDIRIG_Fact <- factor(DF_DISCRIM_A2011$PIUDIRIG, 
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


FAMOSTACOLO_Fact <- factor(DF_DISCRIM_A2011$FAMOSTACOLO, 
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


PIUDONNE_Fact <- factor(DF_DISCRIM_A2011$PIUDONNE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


DIVISIONEFAM_Fact <- factor(DF_DISCRIM_A2011$DIVISIONEFAM, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


INADATTI_Fact <- factor(DF_DISCRIM_A2011$INADATTI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


PIUCURA_Fact <- factor(DF_DISCRIM_A2011$PIUCURA, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


D_DISCRIM_Fact <- factor(DF_DISCRIM_A2011$D_DISCRIM, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Sì, molto", 
"Sì, abbastanza", 
"Sì, poco", 
"No, per niente")) 


D_DISCRIM5AA_Fact <- factor(DF_DISCRIM_A2011$D_DISCRIM5AA, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Più discriminate", 
"Meno discriminate", 
"Non c'è differenza", 
"Non sa")) 


UOMOLEADER_Fact <- factor(DF_DISCRIM_A2011$UOMOLEADER, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente d'accordo")) 


UOMODIRIG_Fact <- factor(DF_DISCRIM_A2011$UOMODIRIG, 
levels=c(1, 
2, 
3, 
4, 
9), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente d'accordo", 
"Non sa")) 


ISTRUOMO_Fact <- factor(DF_DISCRIM_A2011$ISTRUOMO, 
levels=c(1, 
2, 
3, 
4, 
9), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente d'accordo", 
"Non sa")) 


MADREOCC_Fact <- factor(DF_DISCRIM_A2011$MADREOCC, 
levels=c(1, 
2, 
3, 
4, 
9), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente d'accordo", 
"Non sa")) 


UCONCLAV_Fact <- factor(DF_DISCRIM_A2011$UCONCLAV, 
levels=c(1, 
2, 
3, 
4, 
9), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente d'accordo", 
"Non sa")) 


RINUNCLAV_Fact <- factor(DF_DISCRIM_A2011$RINUNCLAV, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


MOTNOLAV_Fact <- factor(DF_DISCRIM_A2011$MOTNOLAV, 
levels=c(1, 
2, 
3, 
4, 
5, 
6, 
7, 
8, 
9), 
labels=c("Il Suo/la Sua partner non voleva che lavorasse", 
"I Suoi genitori non volevano che lavorasse", 
"Aspettava un bambino", 
"Aveva un bambino/bambini troppo piccolo/i", 
"Doveva accudire o stare vicino ad una persona anziana/disabile che viveva in casa Sua", 
"Doveva accudire o stare vicino ad una persona anziana/disabile che non viveva in casa Sua", 
"Doveva occuparsi della famiglia e della casa", 
"Non voleva trasferirsi altrove/cambiare città", 
"Altro (specificare)")) 


RINUNCCAMBIO_Fact <- factor(DF_DISCRIM_A2011$RINUNCCAMBIO, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


RINUNINC_Fact <- factor(DF_DISCRIM_A2011$RINUNINC, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Sì, ha rinunciato per impegni/responsabilità familiari", 
"Sì, ha rinunciato per altri motivi", 
"No, ha accettato", 
"No, non gli è stato mai proposto")) 


RIDUZLAV_Fact <- factor(DF_DISCRIM_A2011$RIDUZLAV, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


SVANTRETR_Fact <- factor(DF_DISCRIM_A2011$SVANTRETR, 
levels=c(1, 
2, 
3), 
labels=c("Molto", 
"Un po’", 
"Per niente")) 


SVANTCORS1_Fact <- factor(DF_DISCRIM_A2011$SVANTCORS1, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Un po’", 
"Per niente", 
"Il suo lavoro non li prevede")) 


SVANTCARIC_Fact <- factor(DF_DISCRIM_A2011$SVANTCARIC, 
levels=c(1, 
2, 
3), 
labels=c("Molto", 
"Un po’", 
"Per niente")) 


SVANTCARR_Fact <- factor(DF_DISCRIM_A2011$SVANTCARR, 
levels=c(1, 
2, 
3), 
labels=c("Molto", 
"Un po’", 
"Per niente")) 


SVANTSTAB_Fact <- factor(DF_DISCRIM_A2011$SVANTSTAB, 
levels=c(1, 
2, 
3), 
labels=c("Molto", 
"Un po’", 
"Per niente")) 


SVANTVAL_Fact <- factor(DF_DISCRIM_A2011$SVANTVAL, 
levels=c(1, 
2, 
3), 
labels=c("Molto", 
"Un po’", 
"Per niente")) 


SVANTAPPR1_Fact <- factor(DF_DISCRIM_A2011$SVANTAPPR1, 
levels=c(1, 
2, 
3), 
labels=c("Molto", 
"Un po’", 
"Per niente")) 


SVANTAUTO_Fact <- factor(DF_DISCRIM_A2011$SVANTAUTO, 
levels=c(1, 
2, 
3), 
labels=c("Molto", 
"Un po’", 
"Per niente")) 


SVANTAPPR2_Fact <- factor(DF_DISCRIM_A2011$SVANTAPPR2, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Un po’", 
"Per niente", 
"Non pertinente")) 


SVANTREDDI_Fact <- factor(DF_DISCRIM_A2011$SVANTREDDI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Un po’", 
"Per niente", 
"Non pertinente")) 


SVANTCLI_Fact <- factor(DF_DISCRIM_A2011$SVANTCLI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Un po’", 
"Per niente", 
"Non pertinente")) 


SVANTCOLL_Fact <- factor(DF_DISCRIM_A2011$SVANTCOLL, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Un po’", 
"Per niente", 
"Non pertinente")) 


SVANTDIP_Fact <- factor(DF_DISCRIM_A2011$SVANTDIP, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Un po’", 
"Per niente", 
"Non pertinente")) 


SVANTCRESC_Fact <- factor(DF_DISCRIM_A2011$SVANTCRESC, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Un po’", 
"Per niente", 
"Non pertinente")) 


SVANTFIN_Fact <- factor(DF_DISCRIM_A2011$SVANTFIN, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Un po’", 
"Per niente", 
"Non pertinente")) 


S_DISCRIM_Fact <- factor(DF_DISCRIM_A2011$S_DISCRIM, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_DOVE_Fact <- factor(DF_DISCRIM_A2011$S_DOVE, 
levels=c(1, 
2, 
3), 
labels=c("Nella scuola dell'obbligo", 
"Nella scuola secondaria superiore", 
"All'università")) 


S_CHICOMP_Fact <- factor(DF_DISCRIM_A2011$S_CHICOMP, 
levels=c(0, 
1), 
labels=c("Assenza", 
"Presenza")) 


S_CHIINSEGN_Fact <- factor(DF_DISCRIM_A2011$S_CHIINSEGN, 
levels=c(0, 
2), 
labels=c("Assenza", 
"Presenza")) 


S_CHIGENIT_Fact <- factor(DF_DISCRIM_A2011$S_CHIGENIT, 
levels=c(0, 
3), 
labels=c("Assenza", 
"Presenza")) 


S_CHIPRES_Fact <- factor(DF_DISCRIM_A2011$S_CHIPRES, 
levels=c(0, 
4), 
labels=c("Assenza", 
"Presenza")) 


S_CHIBIDEL_Fact <- factor(DF_DISCRIM_A2011$S_CHIBIDEL, 
levels=c(0, 
5), 
labels=c("Assenza", 
"Presenza")) 


S_SFAVOR_Fact <- factor(DF_DISCRIM_A2011$S_SFAVOR, 
levels=c(0, 
1), 
labels=c("Assenza", 
"Presenza")) 


S_ISOLAT_Fact <- factor(DF_DISCRIM_A2011$S_ISOLAT, 
levels=c(0, 
2), 
labels=c("Assenza", 
"Presenza")) 


S_OFFES_Fact <- factor(DF_DISCRIM_A2011$S_OFFES, 
levels=c(0, 
3), 
labels=c("Assenza", 
"Presenza")) 


S_ALTRO_Fact <- factor(DF_DISCRIM_A2011$S_ALTRO, 
levels=c(0, 
4), 
labels=c("Assenza", 
"Presenza")) 


S_SALUTE_Fact <- factor(DF_DISCRIM_A2011$S_SALUTE, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_FAMIGL_Fact <- factor(DF_DISCRIM_A2011$S_FAMIGL, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_GRAVID_Fact <- factor(DF_DISCRIM_A2011$S_GRAVID, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_SESSO_Fact <- factor(DF_DISCRIM_A2011$S_SESSO, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_GIOVA_Fact <- factor(DF_DISCRIM_A2011$S_GIOVA, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_ANZIA_Fact <- factor(DF_DISCRIM_A2011$S_ANZIA, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_STRAN_Fact <- factor(DF_DISCRIM_A2011$S_STRAN, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_RELIG_Fact <- factor(DF_DISCRIM_A2011$S_RELIG, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_POLIT_Fact <- factor(DF_DISCRIM_A2011$S_POLIT, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_ASPET_Fact <- factor(DF_DISCRIM_A2011$S_ASPET, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_PROVEN_Fact <- factor(DF_DISCRIM_A2011$S_PROVEN, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_OMOSEX_Fact <- factor(DF_DISCRIM_A2011$S_OMOSEX, 
levels=c(1, 
2, 
3), 
labels=c("Sì", 
"No", 
"Non risponde")) 


S_CONOSC_Fact <- factor(DF_DISCRIM_A2011$S_CONOSC, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


S_ALTRIM_Fact <- factor(DF_DISCRIM_A2011$S_ALTRIM, 
levels=c(1, 
2), 
labels=c("No", 
"Sì")) 


C_DISCRIM_Fact <- factor(DF_DISCRIM_A2011$C_DISCRIM, 
levels=c(1, 
2, 
3), 
labels=c("Sì", 
"No", 
"Non ho mai cercato lavoro")) 


C_NOLAV_Fact <- factor(DF_DISCRIM_A2011$C_NOLAV, 
levels=c(0, 
1), 
labels=c("Assenza", 
"Presenza")) 


C_MANSINF_Fact <- factor(DF_DISCRIM_A2011$C_MANSINF, 
levels=c(0, 
2), 
labels=c("Assenza", 
"Presenza")) 


C_RETRINF_Fact <- factor(DF_DISCRIM_A2011$C_RETRINF, 
levels=c(0, 
3), 
labels=c("Assenza", 
"Presenza")) 


C_LAVNERO_Fact <- factor(DF_DISCRIM_A2011$C_LAVNERO, 
levels=c(0, 
4), 
labels=c("Assenza", 
"Presenza")) 


C_NODOM_Fact <- factor(DF_DISCRIM_A2011$C_NODOM, 
levels=c(0, 
5), 
labels=c("Assenza", 
"Presenza")) 


C_ALTRO_Fact <- factor(DF_DISCRIM_A2011$C_ALTRO, 
levels=c(0, 
6), 
labels=c("Assenza", 
"Presenza")) 


C_PIURECENT_Fact <- factor(DF_DISCRIM_A2011$C_PIURECENT, 
levels=c(1, 
2, 
3, 
4, 
5, 
6), 
labels=c("Che cosa è successo: non mi hanno dato il lavoro anche se avevo i requisiti", 
"Che cosa è successo: mi hanno proposto mansioni inferiori a quelle per cui avevo fatto domanda e per le quali ero qualificato", 
"Che cosa è successo: mi hanno proposto una retribuzione inferiore a quella prevista (o concessa ad altri) per le stesse mansioni", 
"Che cosa è successo: non hanno voluto mettermi in regola", 
"Che cosa è successo: non mi è stato concesso di partecipare alla selezione/fare domanda", 
"Che cosa è successo: Altro (specificare)")) 


C_3ANNI_Fact <- factor(DF_DISCRIM_A2011$C_3ANNI, 
levels=c(1, 
2, 
9), 
labels=c("Sì", 
"No", 
"Non sa/non ricorda")) 


C_12MESI_Fact <- factor(DF_DISCRIM_A2011$C_12MESI, 
levels=c(1, 
2, 
9), 
labels=c("Sì", 
"No", 
"Non sa/non ricorda")) 


C_SALUTE_Fact <- factor(DF_DISCRIM_A2011$C_SALUTE, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_FAMIGL_Fact <- factor(DF_DISCRIM_A2011$C_FAMIGL, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_GRAVID_Fact <- factor(DF_DISCRIM_A2011$C_GRAVID, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_SESSO_Fact <- factor(DF_DISCRIM_A2011$C_SESSO, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_GIOVA_Fact <- factor(DF_DISCRIM_A2011$C_GIOVA, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_ANZIA_Fact <- factor(DF_DISCRIM_A2011$C_ANZIA, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_STRAN_Fact <- factor(DF_DISCRIM_A2011$C_STRAN, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_RELIG_Fact <- factor(DF_DISCRIM_A2011$C_RELIG, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_POLIT_Fact <- factor(DF_DISCRIM_A2011$C_POLIT, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_ASPET_Fact <- factor(DF_DISCRIM_A2011$C_ASPET, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_PROVEN_Fact <- factor(DF_DISCRIM_A2011$C_PROVEN, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_OMOSEX_Fact <- factor(DF_DISCRIM_A2011$C_OMOSEX, 
levels=c(1, 
2, 
8), 
labels=c("Sì", 
"No", 
"Non risponde")) 


C_CONOSC_Fact <- factor(DF_DISCRIM_A2011$C_CONOSC, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


C_ALTRIM_Fact <- factor(DF_DISCRIM_A2011$C_ALTRIM, 
levels=c(1, 
2), 
labels=c("No", 
"Sì")) 


L_DISCRIM_Fact <- factor(DF_DISCRIM_A2011$L_DISCRIM, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_MANSINF_Fact <- factor(DF_DISCRIM_A2011$L_MANSINF, 
levels=c(0, 
1), 
labels=c("Assenza", 
"Presenza")) 


L_PROMOZ_Fact <- factor(DF_DISCRIM_A2011$L_PROMOZ, 
levels=c(0, 
2), 
labels=c("Assenza", 
"Presenza")) 


L_DETERM_Fact <- factor(DF_DISCRIM_A2011$L_DETERM, 
levels=c(0, 
3), 
labels=c("Assenza", 
"Presenza")) 


L_LICENZ_Fact <- factor(DF_DISCRIM_A2011$L_LICENZ, 
levels=c(0, 
4), 
labels=c("Assenza", 
"Presenza")) 


L_LICGRAV_Fact <- factor(DF_DISCRIM_A2011$L_LICGRAV, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_QDLICGRAV_Fact <- factor(DF_DISCRIM_A2011$L_QDLICGRAV, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Durante la gravidanza", 
"Nei primi 3 mesi dalla nascita del bambino", 
"Dopo i 3 mesi e nell'arco del primo anno di vita del bambino", 
"Dopo il primo anno di vita del bambino")) 


L_RIFCONG_Fact <- factor(DF_DISCRIM_A2011$L_RIFCONG, 
levels=c(0, 
5), 
labels=c("Assenza", 
"Presenza")) 


L_CONGED_Fact <- factor(DF_DISCRIM_A2011$L_CONGED, 
levels=c(0, 
6), 
labels=c("Assenza", 
"Presenza")) 


L_CAPAC_Fact <- factor(DF_DISCRIM_A2011$L_CAPAC, 
levels=c(0, 
7), 
labels=c("Assenza", 
"Presenza")) 


L_CARICO_Fact <- factor(DF_DISCRIM_A2011$L_CARICO, 
levels=c(0, 
8), 
labels=c("Assenza", 
"Presenza")) 


L_RETRINF_Fact <- factor(DF_DISCRIM_A2011$L_RETRINF, 
levels=c(0, 
9), 
labels=c("Assenza", 
"Presenza")) 


L_CLIMAOST_Fact <- factor(DF_DISCRIM_A2011$L_CLIMAOST, 
levels=c(0, 
10), 
labels=c("Assenza", 
"Presenza")) 


L_ALTRO_Fact <- factor(DF_DISCRIM_A2011$L_ALTRO, 
levels=c(0, 
11), 
labels=c("Assenza", 
"Presenza")) 


L_MANSINF2_Fact <- factor(DF_DISCRIM_A2011$L_MANSINF2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_PROMOZ2_Fact <- factor(DF_DISCRIM_A2011$L_PROMOZ2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_DETERM2_Fact <- factor(DF_DISCRIM_A2011$L_DETERM2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_LICENZ2_Fact <- factor(DF_DISCRIM_A2011$L_LICENZ2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_LICGRAV2_Fact <- factor(DF_DISCRIM_A2011$L_LICGRAV2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_QDLICGRAV2_Fact <- factor(DF_DISCRIM_A2011$L_QDLICGRAV2, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Durante la gravidanza", 
"Nei primi 3 mesi dalla nascita del bambino", 
"Dopo i 3 mesi e nell'arco del primo anno di vita del bambino", 
"Dopo il primo anno di vita del bambino")) 


L_RIFCONG2_Fact <- factor(DF_DISCRIM_A2011$L_RIFCONG2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_CONGED2_Fact <- factor(DF_DISCRIM_A2011$L_CONGED2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_CAPAC2_Fact <- factor(DF_DISCRIM_A2011$L_CAPAC2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_CARICO2_Fact <- factor(DF_DISCRIM_A2011$L_CARICO2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_RETRINF2_Fact <- factor(DF_DISCRIM_A2011$L_RETRINF2, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_PIURECENT_Fact <- factor(DF_DISCRIM_A2011$L_PIURECENT, 
levels=c(1, 
2, 
3, 
4, 
5, 
6, 
7, 
8, 
9, 
10, 
11), 
labels=c("3.14.A or 3.15.A", 
"3.14.B or 3.15.B", 
"3.14.C or 3.15.C", 
"3.14.D or 3.15.D", 
"3.14.E or 3.15.E", 
"3.14.F or 3.15.F", 
"3.14.G or 3.15.G", 
"3.14.H or 3.15.H", 
"3.14.I or 3.15I", 
"3.14.L", 
"3.14.M")) 


L_3ANNI_Fact <- factor(DF_DISCRIM_A2011$L_3ANNI, 
levels=c(1, 
2, 
9), 
labels=c("Sì", 
"No", 
"Non sa/non ricorda")) 


L_12MESI_Fact <- factor(DF_DISCRIM_A2011$L_12MESI, 
levels=c(1, 
2, 
9), 
labels=c("Sì", 
"No", 
"Non sa/non ricorda")) 


L_FATTODOVE_Fact <- factor(DF_DISCRIM_A2011$L_FATTODOVE, 
levels=c(1, 
2), 
labels=c("Durante la sua attuale/ultima attività lavorativa", 
"Durante una sua precedente attività lavorativa")) 


L_SALUTE_Fact <- factor(DF_DISCRIM_A2011$L_SALUTE, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_FAMIGL_Fact <- factor(DF_DISCRIM_A2011$L_FAMIGL, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_GRAVID_Fact <- factor(DF_DISCRIM_A2011$L_GRAVID, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_SESSO_Fact <- factor(DF_DISCRIM_A2011$L_SESSO, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_GIOVA_Fact <- factor(DF_DISCRIM_A2011$L_GIOVA, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_GIOVAMOT_Fact <- factor(DF_DISCRIM_A2011$L_GIOVAMOT, 
levels=c(1, 
2, 
3), 
labels=c("Sono/ero considerato una persona debole, da potersene approfittare", 
"Vengo/venivo sottovalutata/o, considerato privo di esperienza", 
"Altro (specificare)")) 


L_ANZIA_Fact <- factor(DF_DISCRIM_A2011$L_ANZIA, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_STRAN_Fact <- factor(DF_DISCRIM_A2011$L_STRAN, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_RELIG_Fact <- factor(DF_DISCRIM_A2011$L_RELIG, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_POLIT_Fact <- factor(DF_DISCRIM_A2011$L_POLIT, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_ASPET_Fact <- factor(DF_DISCRIM_A2011$L_ASPET, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_PROVEN_Fact <- factor(DF_DISCRIM_A2011$L_PROVEN, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


L_OMOSEX_Fact <- factor(DF_DISCRIM_A2011$L_OMOSEX, 
levels=c(1, 
2, 
3), 
labels=c("Sì", 
"No", 
"Non risponde")) 


L_CONOSC_Fact <- factor(DF_DISCRIM_A2011$L_CONOSC, 
levels=c(1, 
2), 
labels=c("No", 
"Sì")) 


L_ALTRIM_Fact <- factor(DF_DISCRIM_A2011$L_ALTRIM, 
levels=c(1, 
2, 
3), 
labels=c("Sì", 
"No", 
"Nessuna caratteristica personale")) 


UMILIATA_Fact <- factor(DF_DISCRIM_A2011$UMILIATA, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


UMIL3ANNI_Fact <- factor(DF_DISCRIM_A2011$UMIL3ANNI, 
levels=c(1, 
2, 
9), 
labels=c("Sì", 
"No", 
"Non sa/non ricorda")) 


UMIL12MESI_Fact <- factor(DF_DISCRIM_A2011$UMIL12MESI, 
levels=c(1, 
2, 
9), 
labels=c("Sì", 
"No", 
"Non sa/non ricorda")) 


MIN_Fact <- factor(DF_DISCRIM_A2011$MIN, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Sì, è stato minacciato", 
"Sì, è stato aggredito fisicamente", 
"Sì, è stato minacciato e aggredito fisicamente (in episodi diversi)", 
"No, non è mai capitato")) 


MIN3ANNI_Fact <- factor(DF_DISCRIM_A2011$MIN3ANNI, 
levels=c(1, 
2, 
9), 
labels=c("Sì", 
"No", 
"Non sa/non ricorda")) 


MIN12MESI_Fact <- factor(DF_DISCRIM_A2011$MIN12MESI, 
levels=c(1, 
2, 
9), 
labels=c("Sì", 
"No", 
"Non sa/non ricorda")) 


QUANT_Fact <- factor(DF_DISCRIM_A2011$QUANT, 
levels=c(1, 
2, 
3, 
4, 
9), 
labels=c("Troppi", 
"Né troppi, né pochi", 
"Pochi", 
"Dipende", 
"Non sa")) 


BAMBINI_Fact <- factor(DF_DISCRIM_A2011$BAMBINI, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Positivamente", 
"Negativamente", 
"Né positivamente, né negativamente", 
"Non sa")) 


I_NOLAV_Fact <- factor(DF_DISCRIM_A2011$I_NOLAV, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente giustificabile")) 


I_NOCASA_Fact <- factor(DF_DISCRIM_A2011$I_NOCASA, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


I_INGIRO_Fact <- factor(DF_DISCRIM_A2011$I_INGIRO, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


I_MALTRAT_Fact <- factor(DF_DISCRIM_A2011$I_MALTRAT, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


COMPITAL_Fact <- factor(DF_DISCRIM_A2011$COMPITAL, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Amichevole e comprensivo", 
"Indifferente", 
"Diffidente", 
"Apertamente ostile")) 


COMPIMMI_Fact <- factor(DF_DISCRIM_A2011$COMPIMMI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Amichevole e comprensivo", 
"Indifferente", 
"Diffidente", 
"Apertamente ostile")) 


CULTURE_Fact <- factor(DF_DISCRIM_A2011$CULTURE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente d'accordo")) 


TERROR_Fact <- factor(DF_DISCRIM_A2011$TERROR, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


LAVORI_Fact <- factor(DF_DISCRIM_A2011$LAVORI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


NOPOSTO_Fact <- factor(DF_DISCRIM_A2011$NOPOSTO, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


TOLGLAV_Fact <- factor(DF_DISCRIM_A2011$TOLGLAV, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


VOTO_Fact <- factor(DF_DISCRIM_A2011$VOTO, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


PRIMAITA_Fact <- factor(DF_DISCRIM_A2011$PRIMAITA, 
levels=c(1, 
2, 
3), 
labels=c("D'accordo", 
"Né d'accordo né contrario", 
"Contrario")) 


ALLOGGI_Fact <- factor(DF_DISCRIM_A2011$ALLOGGI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


I_POSSLAV_Fact <- factor(DF_DISCRIM_A2011$I_POSSLAV, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Stesse possibilità", 
"Meno possibilità", 
"Più possibilità", 
"Non sa")) 


I_POSSPROM_Fact <- factor(DF_DISCRIM_A2011$I_POSSPROM, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Stesse possibilità", 
"Meno possibilità", 
"Più possibilità", 
"Non sa")) 


I_POSSCASA_Fact <- factor(DF_DISCRIM_A2011$I_POSSCASA, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Stesse possibilità", 
"Meno possibilità", 
"Più possibilità", 
"Non sa")) 


I_DISCRIM_Fact <- factor(DF_DISCRIM_A2011$I_DISCRIM, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Sì, molto", 
"Sì, abbastanza", 
"Sì, poco", 
"No, per niente")) 


I_DISCRIM5AA_Fact <- factor(DF_DISCRIM_A2011$I_DISCRIM5AA, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Più discriminati", 
"Meno discriminati", 
"Non c'è differenza", 
"Non sa")) 


VIVEREOVU_Fact <- factor(DF_DISCRIM_A2011$VIVEREOVU, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


SEPARATI_Fact <- factor(DF_DISCRIM_A2011$SEPARATI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


QUARTIERE_Fact <- factor(DF_DISCRIM_A2011$QUARTIERE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


ADOZIONE_Fact <- factor(DF_DISCRIM_A2011$ADOZIONE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


ATTENZPOL_Fact <- factor(DF_DISCRIM_A2011$ATTENZPOL, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


RELIGIONE_Fact <- factor(DF_DISCRIM_A2011$RELIGIONE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


IMMITALI_Fact <- factor(DF_DISCRIM_A2011$IMMITALI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Meglio", 
"Più o meno nello stesso modo", 
"Peggio", 
"Non sa")) 


ITAESTERO_Fact <- factor(DF_DISCRIM_A2011$ITAESTERO, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Meglio", 
"Più o meno nello stesso modo", 
"Peggio", 
"Non sa")) 


NAZ_PROBL_Fact <- factor(DF_DISCRIM_A2011$NAZ_PROBL, 
levels=c(1, 
2, 
9), 
labels=c("Sì", 
"No", 
"Non sa")) 


INSERIM_Fact <- factor(DF_DISCRIM_A2011$INSERIM, 
levels=c(1, 
2, 
3), 
labels=c("Facile", 
"Difficile", 
"Impossibile")) 


INTEGRDONNE_Fact <- factor(DF_DISCRIM_A2011$INTEGRDONNE, 
levels=c(1, 
2, 
3), 
labels=c("Più facile per le donne", 
"E' la stessa cosa", 
"E' più difficile per le donne")) 


RICONGIUNG_Fact <- factor(DF_DISCRIM_A2011$RICONGIUNG, 
levels=c(1, 
2, 
9), 
labels=c("Favorire il ricongiungimento", 
"Scoraggiare il ricongiungimento", 
"Non sa")) 


MOSCHEA_Fact <- factor(DF_DISCRIM_A2011$MOSCHEA, 
levels=c(1, 
2, 
3), 
labels=c("Favorevole", 
"Contrario", 
"Indifferente")) 


MOSCHEA_MOT_Fact <- factor(DF_DISCRIM_A2011$MOSCHEA_MOT, 
levels=c(1, 
2, 
3, 
4, 
5, 
6), 
labels=c("Perché creerebbe problemi di sicurezza, di ordine pubblico", 
"Perché l'Italia è un paese cattolico e gli immigrati si devono uniformare alla nostra religione", 
"Perché i mussulmani sono intolleranti e non consentirebbero la costruzione di una chiesa cattolica nel loro paese", 
"Perché attirerebbe un numero maggiore di immigrati in zona", 
"Perché la loro religione e la loro cultura sono diverse dalla nostra", 
"Altro (specificare)")) 


LUOCULTO_Fact <- factor(DF_DISCRIM_A2011$LUOCULTO, 
levels=c(1, 
2, 
3), 
labels=c("Favorevole", 
"Contrario", 
"Indifferente")) 


LUOCULTO_MOT_Fact <- factor(DF_DISCRIM_A2011$LUOCULTO_MOT, 
levels=c(1, 
2, 
3, 
4, 
5, 
6), 
labels=c("Perché creerebbe problemi di sicurezza, di ordine pubblico", 
"Perché l'Italia è un paese cattolico e gli immigrati si devono uniformare alla nostra religione", 
"Perché le persone di queste religioni sono intolleranti e non consentirebbero la costruzione di una chiesa cattolica nel loro paese", 
"Perché attirerebbe un numero maggiore di immigrati in zona", 
"Perché la loro religione e la loro cultura sono diverse dalla nostra", 
"Altro (specificare)")) 


BURKA_Fact <- factor(DF_DISCRIM_A2011$BURKA, 
levels=c(1, 
2, 
9), 
labels=c("Sì", 
"No", 
"Non sa")) 


UNIONIMISTE_Fact <- factor(DF_DISCRIM_A2011$UNIONIMISTE, 
levels=c(1, 
2, 
3, 
4, 
5), 
labels=c("Molto positivo", 
"Abbastanza positivo", 
"Né positivo né negativo", 
"Abbastanza negativo", 
"Molto negativo")) 


I_MAROCCO_Fact <- factor(DF_DISCRIM_A2011$I_MAROCCO, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Molti problemi", 
"Qualche problema", 
"Nessun problema", 
"Non sa")) 


I_PERU_Fact <- factor(DF_DISCRIM_A2011$I_PERU, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Molti problemi", 
"Qualche problema", 
"Nessun problema", 
"Non sa")) 


I_ALBANIA_Fact <- factor(DF_DISCRIM_A2011$I_ALBANIA, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Molti problemi", 
"Qualche problema", 
"Nessun problema", 
"Non sa")) 


I_USA_Fact <- factor(DF_DISCRIM_A2011$I_USA, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Molti problemi", 
"Qualche problema", 
"Nessun problema", 
"Non sa")) 


I_NIGER_Fact <- factor(DF_DISCRIM_A2011$I_NIGER, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Molti problemi", 
"Qualche problema", 
"Nessun problema", 
"Non sa")) 


I_ROM_Fact <- factor(DF_DISCRIM_A2011$I_ROM, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Molti problemi", 
"Qualche problema", 
"Nessun problema", 
"Non sa")) 


I_CINA_Fact <- factor(DF_DISCRIM_A2011$I_CINA, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Molti problemi", 
"Qualche problema", 
"Nessun problema", 
"Non sa")) 


I_ROMANIA_Fact <- factor(DF_DISCRIM_A2011$I_ROMANIA, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Molti problemi", 
"Qualche problema", 
"Nessun problema", 
"Non sa")) 


I_CONOSCE_Fact <- factor(DF_DISCRIM_A2011$I_CONOSCE, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


I_CHICONOSC1_Fact <- factor(DF_DISCRIM_A2011$I_CHICONOSC1, 
levels=c(0, 
1), 
labels=c("Assenza", 
"Presenza")) 


I_CHICONOSC2_Fact <- factor(DF_DISCRIM_A2011$I_CHICONOSC2, 
levels=c(0, 
2), 
labels=c("Assenza", 
"Presenza")) 


I_CHICONOSC3_Fact <- factor(DF_DISCRIM_A2011$I_CHICONOSC3, 
levels=c(0, 
3), 
labels=c("Assenza", 
"Presenza")) 


I_CHICONOSC4_Fact <- factor(DF_DISCRIM_A2011$I_CHICONOSC4, 
levels=c(0, 
4), 
labels=c("Assenza", 
"Presenza")) 


I_CHICONOSC5_Fact <- factor(DF_DISCRIM_A2011$I_CHICONOSC5, 
levels=c(0, 
5), 
labels=c("Assenza", 
"Presenza")) 


I_CHICONOSC6_Fact <- factor(DF_DISCRIM_A2011$I_CHICONOSC6, 
levels=c(0, 
6), 
labels=c("Assenza", 
"Presenza")) 


I_CHICONOSC7_Fact <- factor(DF_DISCRIM_A2011$I_CHICONOSC7, 
levels=c(0, 
7), 
labels=c("Assenza", 
"Presenza")) 


ECONOMIA_Fact <- factor(DF_DISCRIM_A2011$ECONOMIA, 
levels=c(1, 
2, 
3), 
labels=c("Vantaggi", 
"Vantaggi e inconvenienti", 
"Solo inconvenienti")) 


RESIDENZA_Fact <- factor(DF_DISCRIM_A2011$RESIDENZA, 
levels=c(1, 
2, 
3, 
4, 
9), 
labels=c("Dopo 5 anni", 
"Dopo 10 anni", 
"Dopo 15 anni", 
"Mai", 
"Non sa")) 


CITTADIMM_Fact <- factor(DF_DISCRIM_A2011$CITTADIMM, 
levels=c(1, 
2, 
9), 
labels=c("Favorevole", 
"Contrario", 
"Non sa")) 


ESPUCLAND_Fact <- factor(DF_DISCRIM_A2011$ESPUCLAND, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


IMMSCUO_Fact <- factor(DF_DISCRIM_A2011$IMMSCUO, 
levels=c(1, 
2, 
9), 
labels=c("Raggruppare gli immigrati in alcune classi", 
"Distribuire gli immigrati nelle varie classi", 
"Non sa")) 


IMMSCUOMOT_Fact <- factor(DF_DISCRIM_A2011$IMMSCUOMOT, 
levels=c(1, 
2, 
3), 
labels=c("Perché non conoscono la lingua e quindi rallenterebbero la didattica", 
"Perché hanno abitudini ed esigenze diverse", 
"Perché è bene che ogni cultura mantenga le proprie diversità")) 


KISSETERO_Fact <- factor(DF_DISCRIM_A2011$KISSETERO, 
levels=c(1, 
2), 
labels=c("Accettabile", 
"Non accettabile")) 


KISSDONNE_Fact <- factor(DF_DISCRIM_A2011$KISSDONNE, 
levels=c(1, 
2), 
labels=c("Accettabile", 
"Non accettabile")) 


KISSUOMINI_Fact <- factor(DF_DISCRIM_A2011$KISSUOMINI, 
levels=c(1, 
2), 
labels=c("Accettabile", 
"Non accettabile")) 


ACCETTUOMINI_Fact <- factor(DF_DISCRIM_A2011$ACCETTUOMINI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


ACCETTDONNE_Fact <- factor(DF_DISCRIM_A2011$ACCETTDONNE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


GIUSTOMO_Fact <- factor(DF_DISCRIM_A2011$GIUSTOMO, 
levels=c(1, 
2, 
3, 
4, 
5, 
6, 
7, 
8, 
9, 
10, 
99), 
labels=c("Mai giustificato", 
"A", 
"A", 
"A", 
"A", 
"A", 
"A", 
"A", 
"A", 
"Sempre giustificato", 
"Non sa")) 


O_POSSLAV_Fact <- factor(DF_DISCRIM_A2011$O_POSSLAV, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Stesse possibilità", 
"Meno possibilità", 
"Più possibilità", 
"Non sa")) 


O_POSSPROM_Fact <- factor(DF_DISCRIM_A2011$O_POSSPROM, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Stesse possibilità", 
"Meno possibilità", 
"Più possibilità", 
"Non sa")) 


O_POSSCASA_Fact <- factor(DF_DISCRIM_A2011$O_POSSCASA, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Stesse possibilità", 
"Meno possibilità", 
"Più possibilità", 
"Non sa")) 


O_DISCRIM_Fact <- factor(DF_DISCRIM_A2011$O_DISCRIM, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Si, molto", 
"Si, abbastanza", 
"Si, poco", 
"No, per niente")) 


O_DISCRIM5AA_Fact <- factor(DF_DISCRIM_A2011$O_DISCRIM5AA, 
levels=c(1, 
2, 
3, 
9), 
labels=c("Più discriminati", 
"Meno discriminati", 
"Non c'è differenza", 
"Non sa")) 


O_COLLEGA_Fact <- factor(DF_DISCRIM_A2011$O_COLLEGA, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente accettabile")) 


O_SUPERIORE_Fact <- factor(DF_DISCRIM_A2011$O_SUPERIORE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente accettabile")) 


O_MEDICO_Fact <- factor(DF_DISCRIM_A2011$O_MEDICO, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente accettabile")) 


O_AMICO_Fact <- factor(DF_DISCRIM_A2011$O_AMICO, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente accettabile")) 


O_POLITICO_Fact <- factor(DF_DISCRIM_A2011$O_POLITICO, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente accettabile")) 


O_TEACHER_Fact <- factor(DF_DISCRIM_A2011$O_TEACHER, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente accettabile")) 


O_NOLAV_Fact <- factor(DF_DISCRIM_A2011$O_NOLAV, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente giustificabile")) 


O_NOCASA_Fact <- factor(DF_DISCRIM_A2011$O_NOCASA, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


O_MALTRAT_Fact <- factor(DF_DISCRIM_A2011$O_MALTRAT, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


INSULTI_Fact <- factor(DF_DISCRIM_A2011$INSULTI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Spesso", 
"Qualche volta", 
"Raramente", 
"Mai")) 


IOINSULTI_Fact <- factor(DF_DISCRIM_A2011$IOINSULTI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Spesso", 
"Qualche volta", 
"Raramente", 
"Mai")) 


O_CONOSCE_Fact <- factor(DF_DISCRIM_A2011$O_CONOSCE, 
levels=c(1, 
2, 
3), 
labels=c("Si", 
"No", 
"Non ne è sicuro")) 


O_CHICONO1_Fact <- factor(DF_DISCRIM_A2011$O_CHICONO1, 
levels=c(0, 
1), 
labels=c("Assenza", 
"Presenza")) 


O_CHICONO2_Fact <- factor(DF_DISCRIM_A2011$O_CHICONO2, 
levels=c(0, 
2), 
labels=c("Assenza", 
"Presenza")) 


O_CHICONO3_Fact <- factor(DF_DISCRIM_A2011$O_CHICONO3, 
levels=c(0, 
3), 
labels=c("Assenza", 
"Presenza")) 


O_CHICONO4_Fact <- factor(DF_DISCRIM_A2011$O_CHICONO4, 
levels=c(0, 
4), 
labels=c("Assenza", 
"Presenza")) 


O_CHICONO5_Fact <- factor(DF_DISCRIM_A2011$O_CHICONO5, 
levels=c(0, 
5), 
labels=c("Assenza", 
"Presenza")) 


O_CHICONO6_Fact <- factor(DF_DISCRIM_A2011$O_CHICONO6, 
levels=c(0, 
6), 
labels=c("Assenza", 
"Presenza")) 


AMARE_Fact <- factor(DF_DISCRIM_A2011$AMARE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


MALATTIA_Fact <- factor(DF_DISCRIM_A2011$MALATTIA, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


MATRIMONIO_Fact <- factor(DF_DISCRIM_A2011$MATRIMONIO, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


PAX_Fact <- factor(DF_DISCRIM_A2011$PAX, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


IMMORALE_Fact <- factor(DF_DISCRIM_A2011$IMMORALE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


LESBADOZ_Fact <- factor(DF_DISCRIM_A2011$LESBADOZ, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


MINACCIA_Fact <- factor(DF_DISCRIM_A2011$MINACCIA, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


GAYADOZ_Fact <- factor(DF_DISCRIM_A2011$GAYADOZ, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


OMERTA_Fact <- factor(DF_DISCRIM_A2011$OMERTA, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


DISCREZIONE_Fact <- factor(DF_DISCRIM_A2011$DISCREZIONE, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


EFFEMINATI_Fact <- factor(DF_DISCRIM_A2011$EFFEMINATI, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


MASCOLINITA_Fact <- factor(DF_DISCRIM_A2011$MASCOLINITA, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


T_DISCRIM_Fact <- factor(DF_DISCRIM_A2011$T_DISCRIM, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Sì, molto", 
"Sì, abbastanza", 
"Sì, poco", 
"No, per niente")) 


T_NOLAV_Fact <- factor(DF_DISCRIM_A2011$T_NOLAV, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


T_NOCASA_Fact <- factor(DF_DISCRIM_A2011$T_NOCASA, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


T_MALTRAT_Fact <- factor(DF_DISCRIM_A2011$T_MALTRAT, 
levels=c(1, 
2, 
3, 
4), 
labels=c("Molto", 
"Abbastanza", 
"Poco", 
"Per niente")) 


V_DROGATI_Fact <- factor(DF_DISCRIM_A2011$V_DROGATI, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_AIDS_Fact <- factor(DF_DISCRIM_A2011$V_AIDS, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_IMMIGRATI_Fact <- factor(DF_DISCRIM_A2011$V_IMMIGRATI, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_OMOSEX_Fact <- factor(DF_DISCRIM_A2011$V_OMOSEX, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_RELIGION_Fact <- factor(DF_DISCRIM_A2011$V_RELIGION, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_ALCOOLISTI_Fact <- factor(DF_DISCRIM_A2011$V_ALCOOLISTI, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_ROM_Fact <- factor(DF_DISCRIM_A2011$V_ROM, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_TRANS_Fact <- factor(DF_DISCRIM_A2011$V_TRANS, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_MAROCCO_Fact <- factor(DF_DISCRIM_A2011$V_MAROCCO, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_PERU_Fact <- factor(DF_DISCRIM_A2011$V_PERU, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_ALBANIA_Fact <- factor(DF_DISCRIM_A2011$V_ALBANIA, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_NIGER_Fact <- factor(DF_DISCRIM_A2011$V_NIGER, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_CINA_Fact <- factor(DF_DISCRIM_A2011$V_CINA, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


V_ROMANIA_Fact <- factor(DF_DISCRIM_A2011$V_ROMANIA, 
levels=c(1, 
2, 
3), 
labels=c("Non li vorrebbe", 
"Non avrebbe problemi", 
"Dipende da come si comportano")) 


PRATICAREL_Fact <- factor(DF_DISCRIM_A2011$PRATICAREL, 
levels=c(NA, 
1, 
2, 
3, 
4, 
5, 
6), 
labels=c("Non risponde", 
"Tutti i giorni", 
"Qualche volta alla settimana", 
"Una volta alla settimana", 
"Qualche volta al mese (meno di quattro volte)", 
"Qualche volta all'anno", 
"Mai"), exclude=NULL) 


IMPRELIG_Fact <- factor(DF_DISCRIM_A2011$IMPRELIG, 
levels=c(NA, 
1, 
2, 
3, 
4), 
labels=c("Non risponde", 
"Molto", 
"Abbastanza", 
"Poco", 
"Per niente"), exclude=NULL) 


PENSUICIDIO_Fact <- factor(DF_DISCRIM_A2011$PENSUICIDIO, 
levels=c(NA, 
1, 
2, 
3), 
labels=c("Non risponde", 
"Sì e ho tentato di farlo", 
"Sì, ci ho pensato, ma non ho mai tentato di farlo", 
"No"), exclude=NULL) 


AMASTESSO_Fact <- factor(DF_DISCRIM_A2011$AMASTESSO, 
levels=c(NA, 
1, 
2), 
labels=c("Non risponde", 
"Sì", 
"No"), exclude=NULL) 


ATTRSTESSO_Fact <- factor(DF_DISCRIM_A2011$ATTRSTESSO, 
levels=c(NA, 
1, 
2), 
labels=c("Non risponde", 
"Sì", 
"No"), exclude=NULL) 


SEXSTESSO_Fact <- factor(DF_DISCRIM_A2011$SEXSTESSO, 
levels=c(NA, 
1, 
2, 
3), 
labels=c("Non risponde", 
"Sì, è accaduto negli ultimi 12 mesi", 
"Sì, è accaduto più di un anno fa", 
"No"), exclude=NULL) 


CHIATTRATTO_Fact <- factor(DF_DISCRIM_A2011$CHIATTRATTO, 
levels=c(NA, 
1, 
2, 
3, 
4, 
5, 
6), 
labels=c("Non risponde", 
"Solo da persone dell'altro sesso", 
"Prevalentemente da persone dell'altro sesso", 
"In eguale misura da uomini e donne", 
"Prevalentemente da persone del mio stesso sesso", 
"Solo da persone del mio stesso sesso", 
"Né da uomini né da donne"), exclude=NULL) 


AUTODEF_Fact <- factor(DF_DISCRIM_A2011$AUTODEF, 
levels=c(NA, 
1, 
2, 
3, 
4, 
5), 
labels=c("Non risponde", 
"Omosessuale/gay", 
"Bisessuale", 
"Transessuale", 
"Eterosessuale", 
"In altro modo"), exclude=NULL) 


MADRESA_Fact <- factor(DF_DISCRIM_A2011$MADRESA, 
levels=c(NA, 
1, 
2, 
3, 
4), 
labels=c("Non risponde", 
"Sì, ne è (o ne era) a conoscenza", 
"Non so se ne è (o ne era) a conoscenza,non ne abbiamo mai parlato", 
"Mia madre non lo sa (o non lo sapeva)", 
"Altro"), exclude=NULL) 


PADRESA_Fact <- factor(DF_DISCRIM_A2011$PADRESA, 
levels=c(NA, 
1, 
2, 
3, 
4), 
labels=c("Non risponde", 
"Sì, ne è (o ne era) a conoscenza", 
"Non so se ne è (o ne era) a conoscenza,non ne abbiamo mai parlato", 
"Non lo sa (o non lo sapeva)", 
"Altro"), exclude=NULL) 


GIUDRILEV_Fact <- factor(DF_DISCRIM_A2011$GIUDRILEV, 
levels=c(NA, 
1, 
2, 
3, 
4), 
labels=c("Non risponde", 
"Molto", 
"Abbastanza", 
"Poco", 
"Per niente"), exclude=NULL) 


RELAZOUT_Fact <- factor(DF_DISCRIM_A2011$RELAZOUT, 
levels=c(1, 
2), 
labels=c("Si", 
"No")) 


MANOPARTN_Fact <- factor(DF_DISCRIM_A2011$MANOPARTN, 
levels=c(1, 
2, 
3), 
labels=c("Spesso", 
"Qualche volta", 
"Mai")) 


ABBRPARTN_Fact <- factor(DF_DISCRIM_A2011$ABBRPARTN, 
levels=c(1, 
2, 
3), 
labels=c("Spesso", 
"Qualche volta", 
"Mai")) 


CAREZPARTN_Fact <- factor(DF_DISCRIM_A2011$CAREZPARTN, 
levels=c(1, 
2, 
3), 
labels=c("Spesso", 
"Qualche volta", 
"Mai")) 


BACIOPARTN_Fact <- factor(DF_DISCRIM_A2011$BACIOPARTN, 
levels=c(1, 
2, 
3), 
labels=c("Spesso", 
"Qualche volta", 
"Mai")) 


CUCINA_Fact <- factor(DF_DISCRIM_A2011$CUCINA, 
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


SPESA_Fact <- factor(DF_DISCRIM_A2011$SPESA, 
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


BUCATO_Fact <- factor(DF_DISCRIM_A2011$BUCATO, 
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


PULIZIA_Fact <- factor(DF_DISCRIM_A2011$PULIZIA, 
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


CURAFIGLI_Fact <- factor(DF_DISCRIM_A2011$CURAFIGLI, 
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


DIVISLAV_Fact <- factor(DF_DISCRIM_A2011$DIVISLAV, 
levels=c(1, 
2, 
3), 
labels=c("Giusta nei riguardi di entrambi", 
"Ingiusta nei suoi riguardi", 
"Ingiusta nei riguardi del partner")) 


PIUGUAD_Fact <- factor(DF_DISCRIM_A2011$PIUGUAD, 
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


S_PERCOSS_Fact <- factor(DF_DISCRIM_A2011$S_PERCOSS, 
levels=c(0, 
5), 
labels=c("Assente", 
"Presente")) 


SESSO_Fact <- factor(DF_DISCRIM_A2011$SESSO, 
levels=c(1, 
2), 
labels=c("Maschio", 
"Femmina")) 


RELPAR_Fact <- factor(DF_DISCRIM_A2011$RELPAR, 
levels=c(1, 
2, 
4, 
6, 
10, 
12, 
16, 
17, 
20), 
labels=c("Persona di riferimento (PR)", 
"Marito o moglie (coniuge) di PR;Convivente di PR", 
"Genitore o coniuge/convivente del genitore di PR;Suocero/a (Genitore o coniuge/convivente del genitore del coniuge o del convivente di PR)", 
"Figlio di PR nato dall’ultimo matrimonio (o convivenza);Figlio di PR o del coniuge o del convivente di PR nato da precedente matrimonio o convivenza;Genero/Nuora (Coniuge del figlio di PR o del figlio del coniuge di PR);Convivente del figlio di PR (o del c", 
"Nipote (figlio del figlio) di PR (o del coniuge o convivente di PR);Nipote (figlio del fratello/sorella) di PR (o del coniuge o convivente di PR)", 
"Fratello/sorella di PR;Cognato/a: fratello/sorella del coniuge o convivente di PR;Cognato/a:  Coniuge del fratello/sorella di PR (o del coniuge o convivente di PR);Convivente del fratello/sorella di PR (o del coniuge o convivente di PR)", 
"Nonno/a", 
"Cugino/a;Zio/a;Altro parente di PR (o del coniuge o convivente di PR)", 
"Amico/a (altra persona convivente non legata da vincoli di parentela)")) 


ETA_Fact <- factor(DF_DISCRIM_A2011$ETA, 
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


PARTNER_Fact <- factor(DF_DISCRIM_A2011$PARTNER, 
levels=c(1, 
2), 
labels=c("Presente", 
"Assente")) 


FIGLI_Fact <- factor(DF_DISCRIM_A2011$FIGLI, 
levels=c(1, 
2), 
labels=c("Presente", 
"Assente")) 


PNASC_Fact <- factor(DF_DISCRIM_A2011$PNASC, 
levels=c(1, 
2), 
labels=c("Italia", 
"Estero")) 


CITT_Fact <- factor(DF_DISCRIM_A2011$CITT, 
levels=c(1, 
2), 
labels=c("Sì", 
"No")) 


STCIV_Fact <- factor(DF_DISCRIM_A2011$STCIV, 
levels=c(1, 
2, 
3, 
6), 
labels=c("Celibe/nubile", 
"Coniugato/a coabitante con il coniuge", 
"Separato/a di fatto (Coniugato/a non coabitante con il coniuge);Separato/a  legalmente;Divorziato/a", 
"Vedovo/a")) 


ISTR_Fact <- factor(DF_DISCRIM_A2011$ISTR, 
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


POSIZ_Fact <- factor(DF_DISCRIM_A2011$POSIZ, 
levels=c(1, 
2, 
4, 
5, 
6, 
7), 
labels=c("Un lavoro alle dipendenze", 
"Un lavoro di collaborazione coordinata e continuativa (con o senza progetto); Un lavoro di prestazione d’opera occasionale", 
"Imprenditore", 
"Libero professionista", 
"Lavoratore in proprio", 
"Coadiuvante nell’azienda di un familiare;Socio di cooperativa")) 


CERCA_Fact <- factor(DF_DISCRIM_A2011$CERCA, 
levels=c(0, 
1), 
labels=c("No", 
"Sì")) 


CONDIZ_Fact <- factor(DF_DISCRIM_A2011$CONDIZ, 
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

save.image (file="DF_DISCRIM_A2011.RData")
