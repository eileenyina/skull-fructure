row=size(rot,1); 
xx=(roudnew(:,1));
 yy=(roudnew(:,2));
 zz=(roudnew(:,3));
%  xx=xx';
% yy=yy';
% zz=zz';
st=1
xxx=xx(st:row,1);
yyy=yy(st:row,1);
zzz=zz(st:row,1);
rrow=size(xxx,1);
%scatter3(xxx,yyy,zzz,'.')
xt=xxx.*10;
yt=yyy.*100;
ZZ=zeros(700,400);
 for i=1:rrow
     ZZ(floor(xt(i))+350,floor(yt(i))+200)=ZZ(floor(xt(i))+350,floor(yt(i))+200)+1;
end;
[X,Y]= meshgrid(1:400,1:700);
colormap default
%contourf(Z.*100)
%surf(X,Y,Z)
colormap default
%colormap(Z)
mesh(ZZ)
%heatmap(Z.*10)
%contourf(Z*1000)