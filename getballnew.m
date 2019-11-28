% tx=[1,2,3]
% ty=[2,3,4]
% tz=[3,4,5]
% scatter3(tx,ty,tz)
% xx=xx';
% yy=yy';
% zz=zz';
%scatter3(xx,yy,zz,'.')

row=size(rot,1);
plu=ones(row,1);
rotplus=[rot,plu];
affine=[-0.44726562 0 0 114.27636719;
 0 -0.44726562 0 313.27636719;
 0 0 4.5 16.25;
 0 0 0 1]
 rotc=(affine*rotplus')';
 rotc(:,4)=[];
midnew=[-15.2518482973792 198.099264401901 110.77697384];
rotmnew=rotc-midnew;
 for i=1:row
    [az,el,r] = cart2sph(rotmnew(i,1),rotmnew(i,2),rotmnew(i,3));
    roudnew(i,:)=[az,el,r];
   %surf(roud,'.')
end;
 