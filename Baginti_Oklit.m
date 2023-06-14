function [uzaklik_dizisi] = Baginti_Oklit( egitimVeriSeti,testVeriSeti,cozumAdayi )
    
    [ornek_sayisi,ozellik_sayisi]=size(egitimVeriSeti);
    uzaklik_dizisi=zeros(ornek_sayisi,19); 
    
    %cozumAdayisayısı=ozellik_sayisi kadar boyutlu bir vektör.j'inci niteliğin
    for i=1:ornek_sayisi
        toplam=0;
        for j=1:ozellik_sayisi-1
            toplam=toplam + cozumAdayi(1,j)*((egitimVeriSeti(i,j)-testVeriSeti(1,j))^2);   
        end      
        uzaklik_dizisi(i,:)=sqrt(toplam);
    end
end