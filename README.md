# PERTANYAAN DAN PENJELASAN TIAP QUERY UNTUK king.pl 
---
# PERTANYAAN :
* Siapakah anak dari Salma?
* Siapakah kakek Farhan?
* Siapa sajakah cucu laki-laki dari Raja X?
* Siapa saja cicit Raja X?
* Siapa saja penerus yang bisa menggantikan Raja X? (syaratnya adalah harus dari keturunan laki-laki ataupun keturunan laki-laki dari 
keturunan laki-laki)
---
# PENJELASAN :

# 1. Untuk query anak 
dapat dituliskan dengan : <blockquote>**anak(X,Y):-orangtua(Y,X).**</blockquote>

cara pembacaanya yaitu "X adalah anak dari Y, dimana Y adalah orang tua dari X"

contoh pertanyan : siapakah anak dari salma?

maka formulasi bahasa prolognya berupa : <blockquote>**anak(X, salma).**</blockquote>



# 2. Untuk query kakek ataupun nenek
dapat dituliskan dengan : <blockquote>**kakek(X,Z):-orangtua(X,Y),orangtua(Y,Z),laki(X).**</blockquote>

cara pembacaanya yaitu "X adalah kakek  Z, dimana X adalah orangtua dari Y, dan Y merupakan orangtua
dari Z. dan X tersebut akan mengambil data apakah X adalah laki atau perempuan sesuai pada clause yang dibuat
di notepad)"

contoh pertanyaan : siapakah kakek farhan?

maka formulasi bahasa prolognya berupa : <blockquote>**kakek(X, farhan).**</blockquote>



# 3. Untuk query cucu
dapat dituliskan dengan : <blockquote>**cucu(X,Z):-orangtua(Z,Y),anak(X,Y).**</blockquote>

untuk lebih spesifik mengenai gender, maka dapat ditambahkan "laki(X)" ataupun dengan "perempuan(X)" pada 
akhir query sebelum titik(.)

cara pembacaanya yaitu "X adalah cucu Z, dimana Z adalah orangtua dari Y, dan X adalah anak dari Y"

contoh pertanyaan : siapa sajakah cucu laki dari raja X?

maka formulasi bahasa prolognya berupa : <blockquote>**cuculaki(X, raja_X).**</blockquote>



# 4. Untuk query cicit
dapat dituliskan dengan : <blockquote>**cicit(X,Z):-anak(X,Y),cucu(Y,Z).**</blockquote>

cara pembacaannya yaitu "X adalah cicit Z, dimana X adalah anak dari Y, dan Y adalah cucu Z"

contoh pertanyaan : siapa saja cicit Raja X?

maka formulasi bahasa prolognya berupa : <blockquote>**cicit(X, raja_X).**</blockquote>



# 5. Untuk query *rekursif*
dapat ditulis dengan :
<blockquote>penerus(X,Y):-anak(X,Y),laki(X).</blockquote>
<blockquote>penerus(X,Y):-anak(X,Z),penerus(Z,Y),laki(X).</blockquote>

cara pembacaannya yaitu "X adalah penerus Y, maka X adalah anak Y. Dan karena X penerus Y, maka X adalah anak dari Z, dan Z adalah penerus dari Y"

contoh pertanyaan : siapa saja penerus yang bisa menggantikan raja? syaratnya adalah harus dari keturunan laki ataupun keturunan laki dari keturunan laki!

maka formulasi bahasa prolognya berupa : <blockquote>**penerus(X, raja_X).**</blockquote>

---


# PENJELASAN FORMULA PROLOG UNTUK family.pl :
 berikut adalah pertanyaannya :

# Siapakah orang tua Basir?
<blockquote>
Formula    : orangtua(X, basir).
</blockquote>

Penjelasan : variabel X akan diisi oleh data clause yang dinyatakan untuk basir. clause saya adalah : orangtua(siti, basir).



# Siapakah nenek Siti?
<blockquote>
   Formula    : nenek(X, siti).
</blockquote>
   
   Penjelasan : karena query yang saya buat untuk mencari nenek yaitu "nenek(X,Z):-orangtua(X,Y),orangtua(Y,Z),perempuan(X).".
                maka X akan mencari data orang tua dari orang tuanya Siti. maka nama yang didapat adalah RITA
               



# Apakah Tuti mempunya anak?
<blockquote>
   Formula    : anak(X, tuti).
</blockquote>
   
   Penjelasan : karena query yang saya buat adalah "anak(X,Y):-orangtua(Y,X).".
                maka X akan mencari data anak dari induk Tuti, namun karena tidak ada data clause untuk menyatakan anak Tuti.
                maka hasil yang didapat adalah FALSE atau TIDAK ADA

