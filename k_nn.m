clear all
clc
global komsu;      
komsu=7; 
epoch=3;
global testVeriSeti;
global egitimVeriSeti;

Verileri_Oku();
disp('Okuma iþlemi baþarýlý!');
%deðerleri fdb_tlabc algoritmasýndan alýnýyor.
for a=1:epoch
    [bestSolution,bestFitness]=fdb_tlabc();
end

% Eþik deðer kontrolü
  for i=1:length(bestSolution)
     if bestSolution(i) < 0.04
         bestSolution(i) = 0;
     end
  end

basariSayisi = 0;
for i=1:length(testVeriSeti) 
    fitness = sinifBul(testVeriSeti(i,:),egitimVeriSeti, bestSolution);
    if fitness == 1
        basariSayisi = basariSayisi + 1; 
    else
        basariSayisi = basariSayisi - 1;        
    end
end
basariOrani=(basariSayisi*100)/length(testVeriSeti);
disp(['Baþarý %: ' num2str(basariOrani)]); 
