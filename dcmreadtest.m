path = 'C:\Users\Haotian\Desktop\deecamp\CT 5mm\'
 files = dir(fullfile(path,'*.dcm'))
 
 Z = [];
 for i = 1:size(files,1)
     file = strcat(path,files(i).name)
     metadata = dicominfo(file);
     Z = [Z;[i,metadata.ImagePositionPatient(3)]];
 end
 Z = sortrows(Z,2);
 ct3d = zeros(512,512,size(Z,1));
 for i = 1:size(files,1)
     Z(i)
     file = strcat(path,files(Z(i)).name);
     I=dicomread(file);
     ct3d(:,:,i) = I;
     imagesc(ct3d(:,:,i));
     pause(0.2)
 end
 
 l = 27
 li = 5
 layers = ct3d(:,:,l:l+1);
 [X,Y,Z] = meshgrid(1:512,1:512,1:2);
 F = scatteredInterpolant(X(:),Y(:),Z(:),layers(:));
 [xq,yq,zq] = meshgrid(1:512,1:512,1:1/li:2);
 vq = F(xq,yq,zq);
 for i = 1:size(ct3d,3)
     imagesc(ct3d(:,:,i));
     pause(1)
 end



mask = zeros(size(ct3d));
for i=1:32
    img = ct3d(:,:,i);
    mask(:,:,i) = img>2000;
end