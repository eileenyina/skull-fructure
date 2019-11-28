mid=[-15.2518482973792 198.099264401901 110.77697384];
rowlabel=size(rotlabel,1);
plulabel=ones(rowlabel,1);
rotpluslabel=[rotlabel,plulabel];
affine=[-0.44726562 0 0 114.27636719;
 0 -0.44726562 0 313.27636719;
 0 0 4.5 16.25;
 0 0 0 1]
 rotclabel=(affine*rotpluslabel')';
 rotclabel(:,4)=[];
 rotmlabel=rotclabel-mid;
 for i=1:rowlabel
    %rotm=rotc-mid;
    [az,el,r] = cart2sph(rotmlabel(i,1),rotmlabel(i,2),rotmlabel(i,3));
    roudlabel(i,:)=[az,el,r];
   %surf(roud,'.')
end;
 