row=size(rotlabel,1); 
xx=(roudlabel(:,1));
 yy=(roudlabel(:,2));
 zz=(roudlabel(:,3));
%  xx=xx';
% yy=yy';
% zz=zz';
st=7000
xxx=xx(st:row,1);
yyy=yy(st:row,1);
zzz=zz(st:row,1);
rrow=size(xxx,1);
%scatter3(xxx,yyy,zzz)
xt=xxx.*100;
yt=yyy.*100;
Z=zeros(700,400);
 for i=1:rrow
     Z(floor(xt(i))+350,floor(yt(i))+200)=Z(floor(xt(i))+350,floor(yt(i))+200)+1;
end;
Z=Z*5
% contourf(Z)
mesh(Z)
% hold on
 %printdot;
% hold on 
% mesh(Z)