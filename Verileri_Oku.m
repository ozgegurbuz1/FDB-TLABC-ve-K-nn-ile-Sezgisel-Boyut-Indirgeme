function []=Verileri_Oku( )
    global egitimVeriSeti;
    global testVeriSeti;
    
    % Excel dosyası yüklendi
    veri = xlsread('diabetic.xlsx');
    
    % Verilerin boyutu ve oranı belirlendi
    veriOrani = 0.7; % Eğitim verisi oranı (%70), Test verisi oranı (%30)
    veriSayisi = size(veri, 1);
    egitimVerisiSayisi = round(veriOrani * veriSayisi);
    testVerisiSayisi = veriSayisi - egitimVerisiSayisi;
    
    % Veriler karıştırıldı
    karisikVeri = veri(randperm(veriSayisi), :);

    % Veriler test ve eğitim olarak ayrıldı
    egitimVeriSeti = karisikVeri(1:egitimVerisiSayisi, :);
    testVeriSeti = karisikVeri(end-testVerisiSayisi+1:end, :);
end

