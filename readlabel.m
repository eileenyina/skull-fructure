files = dir(fullfile('C:\\Users\\Haotian\\Desktop\\datalabel','*.png'));
lengthFiles = length(files);
s=1;
for k = 1:lengthFiles;
    imglabel = imread(strcat('C:\Users\Haotian\Desktop\datalabel\',files(k).name));%文件所在路径
%    A=sparse(img)
   imshow(imglabel)
 %  pause(1)
    for i=1:512;
        for j=1:512
            if imglabel(i,j)>0;
                rotlabel(s,:)=[i,j,k];
                 s=s+1;
            end;
        end;
    end;
    k
end;

