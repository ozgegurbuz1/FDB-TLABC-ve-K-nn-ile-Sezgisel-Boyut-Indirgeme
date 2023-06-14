function [dogruSinif] = sinifBul(testVerisi,egitimVeriSeti,cozumAdayi) %testVeriSetinden i.aday
    global komsu;
    uzaklik_dizisi = Baginti_Oklit( egitimVeriSeti,testVerisi,cozumAdayi );
    
    [degerler,indeksler]=sort(uzaklik_dizisi);
    komsuSiniflarEtiketleri = zeros(2,2);
    
    for i=1:komsu
        komsuSiniflarEtiketleri(egitimVeriSeti(indeksler(i),20),2) = komsuSiniflarEtiketleri(egitimVeriSeti(indeksler(i),20),2) +1; 
    end
    
    [enCokTekrar, sinif] = sort(komsuSiniflarEtiketleri(:,2),'descend');

    if sinif(1,1) == testVerisi(1,20) 
        dogruSinif = 1;
    else
        dogruSinif = 0;
    end
    
end