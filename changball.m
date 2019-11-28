%ÕâÊÇ´íµÄmid=[263 266  10];
row=size(rot,1);
plu=ones(row,1);
rotplus=[rot,plu];
affine=[-0.44726562 0 0 114.27636719;
 0 -0.44726562 0 313.27636719;
 0 0 4.5 16.25;
 0 0 0 1]
rotc=(affine*rotplus')'
rotc=rotc(1:3,:);
for i=1:row
    rotm=rotc-mid;
    [az,el,r] = cart2sph(rotm(i,1),rotm(i,2),rotm(i,3));
    roud(i,:)=[az,el,r];
%    surf(roud,'.')
end;
% xx=(roud(:,1));
% xx=xx';
 yy=(roud(:,2));
 zz=(roud(:,3));
%scatter3(xx,yy,zz)
%scatter3(roud(:,1),roud(:,2),roud(:,3));
%plot3(roud(1,:),roud(2,:),roud(3,:))