laki(husin).
laki(abdul).
laki(rudi).
laki(amir).
laki(basir).

perempuan(rita).
perempuan(tuti).
perempuan(siti).

orangtua(rita, abdul).
orangtua(rita, rudi).

orangtua(husin, rudi).

orangtua(rudi, tuti).
orangtua(rudi, siti).

orangtua(siti, amir).
orangtua(siti, basir).


anak(X,Y):-orangtua(Y,X).

nenek(X,Z):-orangtua(X,Y),orangtua(Y,Z),perempuan(X).
kakek(X,Z):-orangtua(X,Y),orangtua(Y,Z),laki(X).