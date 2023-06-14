function [yuzde_hata] = problem(cozumAdayi) %ağırlık fObj
    %gelen çözüm adaylarının her birinin fitness değerini hesapla.
    
    global egitimVeriSeti;
    global testVeriSeti;
    dogruSinif=0;
    
    for i=1:size(testVeriSeti,1) %test verisi matrisinin satır sayısı
        sonuc=sinifBul(testVeriSeti(i,:),egitimVeriSeti,cozumAdayi);
        if sonuc==1
            dogruSinif=dogruSinif+1;
        else
            dogruSinif=dogruSinif-1;   
        end
    end
    yuzde_hata=1-((1*dogruSinif)/size(testVeriSeti,1));
    
end
