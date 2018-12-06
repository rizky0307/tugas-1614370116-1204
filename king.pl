laki(raja_X).
laki(bahrun).
laki(fahri).
laki(burhan).
laki(ferdi).
laki(arfan).
laki(farhan).
laki(fariz).

perempuan(farah).
perempuan(salma).
perempuan(salsa).
perempuan(syifa).

orangtua(raja_X, bahrun).
orangtua(raja_X, farah).

orangtua(bahrun, fahri).
orangtua(bahrun, salma).

orangtua(farah, burhan).
orangtua(farah, ferdi).

orangtua(fahri, salsa).
orangtua(fahri, arfan).

orangtua(salma, farhan).

orangtua(ferdi, fariz).
orangtua(ferdi, syifa).

anak(X,Y):-orangtua(Y,X).
anaklaki(X,Y):-orangtua(Y,X),laki(X).
anakperempuan(X,Y):-orangtua(Y,X),perempuan(X).

kakek(X,Z):-orangtua(X,Y),orangtua(Y,Z),laki(X).
nenek(X,Z):-orangtua(X,Y),orangtua(Y,Z),perempuan(X).

cucu(X,Z):-orangtua(Z,Y),anak(X,Y).
cuculaki(X,Z):-orangtua(Z,Y),anak(X,Y),laki(X).
cucuperempuan(X,Z):-orangtua(Z,Y),anak(X,Y),perempuan(X).

cicit(X,Z):-anak(X,Y),cucu(Y,Z).
cicitperempuan(X,Z):-anak(X,Y),cucu(Y,Z),perempuan(X).
cicitlaki(X,Z):-anak(X,Y),cucu(Y,Z),laki(X).

keturunan(X,Y):-anak(X,Y).
keturunan(X,Y):-anak(X,Z),keturunan(Z,Y).

penerus(X,Y):-anak(X,Y),laki(X).
penerus(X,Y):-anak(X,Z),penerus(Z,Y),laki(X).

