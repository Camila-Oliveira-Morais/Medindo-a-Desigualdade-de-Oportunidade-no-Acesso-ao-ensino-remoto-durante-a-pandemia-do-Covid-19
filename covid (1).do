*CRIANDO AS VARIÁVEIS CIRCUNSTÂNCIAS

*Gênero

gen masculino = .
replace masculino = 1 if a003 == 1
replace masculino = 0 if a003 == 2

*Branco sem instrução
gen brancosem = .
replace brancosem = 1 if branco == 1 & a005 == 1
replace brancosem = 0 if branco == 0 & a005 == 1

*Branco fundamental incompleto
gen brancoFI = .
replace brancoFI = 1 if branco == 1 & a005 == 2
replace brancoFI = 0 if branco == 0 & a005 == 2

*Branco fundamental completo
gen brancoFC = .
replace brancoFC = 1 if branco == 1 & a005 == 3
replace brancoFC = 0 if branco == 0 & a005 == 3

*Branco médio incompleto
gen brancoMI = .
replace brancoMI = 1 if branco == 1 & a005 == 4
replace brancoMI = 0 if branco == 0 & a005 == 4

*Branco médio completo
gen brancoMC = .
replace brancoMC = 1 if branco == 1 & a005 == 5
replace brancoMC = 0 if branco == 0 & a005 == 5

*Branco superior incompleto
gen brancoSI = .
replace brancoSI = 1 if branco == 1 & a005 == 6
replace brancoSI = 0 if branco == 0 & a005 == 6

*Branco superior completo
gen brancoSC = .
replace brancoSC = 1 if branco == 1 & a005 == 7
replace brancoSC = 0 if branco == 0 & a005 == 7

*Branco pós graduado
gen brancoPG = .
replace brancoPG = 1 if branco == 1 & a005 == 8
replace brancoPG = 0 if branco == 0 & a005 == 8

*Etnia

gen branco = .
replace branco = 1 if a004 == 1
replace branco = 0 if a004 == 2
replace branco = 1 if a004 == 3
replace branco = 0 if a004 == 4
replace branco = 0 if a004 == 5
replace branco = 0 if a004 == 9

*Covid
gen covid =0
replace covid = 1 if b009b == 1 | b009d == 1 | b009f == 1

*Sintoma Grave
gen sintomagrave =0
replace sintomagrave = 1 if b0014 == 1 & b0016 == 1 & suspeita == 1

*GraveAutoMed
gen graveautomed =0
replace graveautomed = 1 if sintomagrave == 1 & b0033 == 1


*GraveUnidSaud
gen graveunidsaud =0
replace graveunidsaud = 1 if sintomagrave == 1 & b002 == 1

*Suspeita
gen suspeita =0
replace suspeita = 1 if (s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9 + s10 + s11 + s12 + s13) >= 5

gen suspforte =0
replace suspforte = 1 if (s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9 + s10 + s11 + s12 + s13) >= 6

gen suspfraca =0
replace suspfraca = 1 if (s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9 + s10 + s11 + s12 + s13) >= 4

gen s1 = .
replace s1 = 1 if b0011 == 1
replace s1 = 0 if b0011 == 2

gen s2 = .
replace s2 = 1 if b0012 == 1
replace s2 = 0 if b0012 == 2

gen s3 = .
replace s3 = 1 if b0013 == 1
replace s3 = 0 if b0013 == 2

gen s4 = .
replace s4 = 1 if b0014 == 1
replace s4 = 0 if b0014 == 2

gen s5 = .
replace s5 = 1 if b0015 == 1
replace s5 = 0 if b0015 == 2

gen s6 = .
replace s6 = 1 if b0016 == 1
replace s6 = 0 if b0016 == 2

gen s7 = .
replace s7 = 1 if b0017 == 1
replace s7 = 0 if b0017 == 2

gen s8 = .
replace s8 = 1 if b0018 == 1
replace s8 = 0 if b0018 == 2

gen s9 = .
replace s9 = 1 if b0019 == 1
replace s9 = 0 if b0019 == 2

gen s10 = .
replace s10 = 1 if b00110 == 1
replace s10 = 0 if b00110 == 2

gen s11 = .
replace s11 = 1 if b00111 == 1
replace s11 = 0 if b00111 == 2

gen s12 = .
replace s12 = 1 if b00112 == 1
replace s12 = 0 if b00112 == 2

gen s13 = .
replace s13 = 1 if b00113 == 1
replace s13 = 0 if b00113 == 2

gen fezteste = .
replace fezteste = 1 if b009a == 1 | b009c == 1 | b009e == 1


gen internado = .
replace internado = 1 if b005 == 1
replace internado = 0 if b005 == 2

gen intubado = .
replace intubado = 1 if b006 == 1
replace intubado = 0 if b006 == 2

gen naoatendido =0
replace naoatendido = 1 if b005 == 3

gen suspeitamteste =0
replace suspeitasemteste = 1 if suspeita == 1 & fezteste != 1

gen rendatotal = .
replace rendatotal = sum (c01012 d0013 d0023 d0023 d0033 d0043 d0053 d0063 d0073)

*Área de residência

gen urbano = .
replace urbano = 1 if v4105 == 1
replace urbano = 1 if v4105 == 2
replace urbano = 1 if v4105 == 3
replace urbano = 0 if v4105 == 4
replace urbano = 0 if v4105 == 5
replace urbano = 0 if v4105 == 6
replace urbano = 0 if v4105 == 7
replace urbano = 0 if v4105 == 8

*Gênero da pessoa de referência

gen genref2 =.
replace genref2 = 1 if genref == 2
replace genref2 = 0 if genref == 4

*Presença da mãe 

gen pmae = .
replace pmae = 1 if v0406 == 2
replace pmae = 0 if v0406 == 4

*Educação da pessoa de referência do domicílio

gen educref = .
replace educref = estudref

*Número de pessoas no domicílio 

gen componentes = .
replace componentes = v4724

*Renda mensal domiciliar per capita 

gen rend = .
replace rend = v4621
replace rend =. if rend > 999999999

gen renda = .
replace renda = ln(rend)


*CRIANDO AS VARIÁVEIS OPORTUNIDADE


*Acesso à agua canalizada 

gen agua = .
replace agua = 1 if v0211 == 1
replace agua = 0 if v0211 == 3

*Acesso à eletricidade 

gen luz = .
replace luz = 1 if v0219 == 1
replace luz = 0 if v0219 == 3
replace luz = 0 if v0219 == 5

*Acesso ao saneamento adequado 

gen saneamento = .
replace saneamento = 1 if v0217 == 1
replace saneamento = 1 if v0217 == 2
replace saneamento = 0 if v0217 == 3
replace saneamento = 0 if v0217 == 4
replace saneamento = 0 if v0217 == 5
replace saneamento = 0 if v0217 == 6
replace saneamento = 0 if v0217 == 7

*Educação

gen educ =.
replace educ = 1 if v4801 == 1 | v0602 == 2 | educref >= 4 & v8005 == 0 | v8005 == 1 | v8005 == 2 | v8005 == 3 | v8005 == 4 | v8005 == 5 | v8005 == 6
replace educ = 0 if v4801 != 1 & v0602 == 4 & educref < 4 & v8005 == 0 | v8005 == 1 | v8005 == 2 | v8005 == 3 | v8005 == 4 | v8005 == 5 | v8005 == 6
replace educ = 1 if v4801 == 4 | v4801 == 5 | v4801 == 12 | v4801 == 13 & v8005 == 7
replace educ = 0 if v4801 != 4 & v4801 != 5 & v4801 != 12 & v4801 != 13 & v8005 == 7
replace educ = 1 if v4801 == 4 | v4801 == 5 | v4801 == 6 | v4801 == 12 | v4801 == 13 | v4801 == 14 & v8005 == 8
replace educ = 0 if v4801 != 4 & v4801 != 5 & v4801 != 6 & v4801 != 12 & v4801 != 13 & v4801 != 14 & v8005 == 8
replace educ = 1 if v4801 == 5 | v4801 == 6 | v4801 == 7 | v4801 == 13 | v4801 == 14 | v4801 == 15 & v8005 == 9
replace educ = 0 if v4801 != 5 & v4801 != 6 & v4801 != 7 & v4801 != 13 & v4801 != 14 & v4801 != 15 & v8005 == 9
replace educ = 1 if v4801 == 6 | v4801 == 7 | v4801 == 8 | v4801 == 14 | v4801 == 15 | v4801 == 16 & v8005 == 10
replace educ = 0 if v4801 != 6 & v4801 != 7 & v4801 != 8 & v4801 != 14 & v4801 != 15 & v4801 != 16 & v8005 == 10
replace educ = 1 if v4801 == 7 | v4801 == 8 | v4801 == 9 | v4801 == 15 | v4801 == 16 | v4801 == 17 & v8005 == 11
replace educ = 0 if v4801 != 7 & v4801 != 8 & v4801 != 9 & v4801 != 15 & v4801 != 16 & v4801 != 17 & v8005 == 11
replace educ = 1 if v4801 == 8 | v4801 == 9 | v4801 == 10 | v4801 == 16 | v4801 == 17 | v4801 == 18 & v8005 == 12
replace educ = 0 if v4801 != 8 & v4801 != 9 & v4801 != 10 & v4801 != 16 & v4801 != 17 & v4801 != 18 & v8005 == 12
replace educ = 1 if v4801 == 9 | v4801 == 10 | v4801 == 11 | v4801 == 17 | v4801 == 18 | v4801 == 19 & v8005 == 13
replace educ = 0 if v4801 != 9 & v4801 != 10 & v4801 != 11 & v4801 != 17 & v4801 != 18 & v4801 != 19 & v8005 == 13
replace educ = 1 if v4801 == 10 | v4801 == 11 | v4801 == 22 | v4801 == 18 | v4801 == 19 | v4801 == 20 & v8005 == 14
replace educ = 0 if v4801 != 10 & v4801 != 11 & v4801 != 22 & v4801 != 18 & v4801 != 19 & v4801 != 20 & v8005 == 14
replace educ = 1 if v4801 == 11 | v4801 == 20 | v4801 == 22 | v4801 == 23 | v4801 == 24 | v4801 == 25 & v8005 == 15
replace educ = 0 if v4801 != 11 & v4801 != 20 & v4801 != 22 & v4801 != 23 & v4801 != 24 & v4801 != 25 & v8005 == 15
replace educ = 1 if v4801 == 22 | v4801 == 23 | v4801 == 24 | v4801 == 25 & v8005 == 16 | v8005 == 17
replace educ = 0 if v4801 != 22 & v4801 != 23 & v4801 != 24 & v4801 != 25 & v8005 == 16 | v8005 == 17

*Educação Jeito UFRGS

gen educ1 =0
replace educ1 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 0
replace educ1 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 1
replace educ1 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 2
replace educ1 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 3
replace educ1 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 4
replace educ1 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 5
replace educ1 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 6
replace educ1 = 1 if v4801 == 4 | v4801 == 5 | v4801 == 12 | v4801 == 13 & v8005 == 7
replace educ1 = 1 if v4801 == 4 | v4801 == 5 | v4801 == 6 | v4801 == 12 | v4801 == 13 | v4801 == 14 & v8005 == 8
replace educ1 = 1 if v4801 == 5 | v4801 == 6 | v4801 == 7 | v4801 == 13 | v4801 == 14 | v4801 == 15 & v8005 == 9
replace educ1 = 1 if v4801 == 6 | v4801 == 7 | v4801 == 8 | v4801 == 14 | v4801 == 15 | v4801 == 16 & v8005 == 10
replace educ1 = 1 if v4801 == 7 | v4801 == 8 | v4801 == 9 | v4801 == 15 | v4801 == 16 | v4801 == 17 & v8005 == 11
replace educ1 = 1 if v4801 == 8 | v4801 == 9 | v4801 == 10 | v4801 == 16 | v4801 == 17 | v4801 == 18 & v8005 == 12
replace educ1 = 1 if v4801 == 9 | v4801 == 10 | v4801 == 11 | v4801 == 17 | v4801 == 18 | v4801 == 19 & v8005 == 13
replace educ1 = 1 if v4801 == 10 | v4801 == 11 | v4801 == 22 | v4801 == 18 | v4801 == 19 | v4801 == 20 & v8005 == 14
replace educ1 = 1 if v4801 == 11 | v4801 == 20 | v4801 == 22 | v4801 == 23 | v4801 == 24 | v4801 == 25 & v8005 == 15
replace educ1 = 1 if v4801 == 22 | v4801 == 23 | v4801 == 24 | v4801 == 25 & v8005 == 16
replace educ1 = 1 if v4801 == 22 | v4801 == 23 | v4801 == 24 | v4801 == 25 & v8005 == 17

gen educ2 =0
replace educ2 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 0
replace educ2 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 1
replace educ2 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 2
replace educ2 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 3
replace educ2 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 4
replace educ2 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 5
replace educ2 = 1 if v4801 == 1 | v0602 == 2 | educref >= 8 & v8005 == 6
replace educ2 = 1 if v4801 == 4 | v4801 == 5 | v4801 == 12 | v4801 == 13 & v8005 == 7
replace educ2 = 1 if v4801 == 5 | v4801 == 6 | v4801 == 13 | v4801 == 14 & v8005 == 8
replace educ2 = 1 if v4801 == 6 | v4801 == 7 | v4801 == 14 | v4801 == 15 & v8005 == 9
replace educ2 = 1 if v4801 == 7 | v4801 == 8 | v4801 == 15 | v4801 == 16 & v8005 == 10
replace educ2 = 1 if v4801 == 8 | v4801 == 9 | v4801 == 16 | v4801 == 17 & v8005 == 11
replace educ2 = 1 if v4801 == 9 | v4801 == 10 | v4801 == 17 | v4801 == 18 & v8005 == 12
replace educ2 = 1 if v4801 == 10 | v4801 == 11 | v4801 == 18 | v4801 == 19 & v8005 == 13
replace educ2 = 1 if v4801 == 11 | v4801 == 19 | v4801 == 20 | v4801 == 22 & v8005 == 14
replace educ2 = 1 if v4801 == 11 | v4801 == 20 | v4801 == 22 | v4801 == 23 | v4801 == 24 | v4801 == 25 & v8005 == 15
replace educ2 = 1 if v4801 == 22 | v4801 == 23 | v4801 == 24 | v4801 == 25 & v8005 == 16
replace educ2 = 1 if v4801 == 22 | v4801 == 23 | v4801 == 24 | v4801 == 25 & v8005 == 17



*Instalando IOH no Stata

ssc install hoi
ssc install indeplist

*Rodando o IOH EDUC

hoi educ masculino branco urbano genref2 pmae educref componentes renda [aw=v4729] if v8005<=16 & uf==11
