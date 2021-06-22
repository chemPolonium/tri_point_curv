function r = tripointcurv(x,y,dim)
if isvector(x)&&isvector(y)
    if length(x) == 3
        r = hypot(x(1)-x(2),y(1)-y(2)).*hypot(x(2)-x(3),y(2)-y(3)).*hypot(x(1)-x(3),y(1)-y(3))./2./...
            abs(x(1).*y(2)-x(2).*y(1)+x(2).*y(3)-x(3).*y(2)-x(1).*y(3)+x(3).*y(1));
    else
        l1 = hypot(diff(x),diff(y));
        l2 = hypot(x(3:end)-x(1:end-2),y(3:end)-y(1:end-2));
        r = l1(1:end-1).*l1(2:end).*l2./2./abs(...
            x(1:end-2).*y(2:end-1)+x(2:end-1).*y(3:end)+x(3:end).*y(1:end-2)...
            -x(1:end-2).*y(3:end)-x(2:end-1).*y(1:end-2)-x(3:end).*y(2:end-1));
    end
else
    if ~exist("dim","var")
        dim = 1;
    end
    perm = [dim:max(length(size(x)),dim) 1:dim-1];
    x = permute(x,perm);
    y = permute(y,perm);
    l1 = hypot(diff(x),diff(y));
    l2 = hypot(x(3:end,:)-x(1:end-2,:),y(3:end,:)-y(1:end-2,:));
    r = l1(1:end-1,:).*l1(2:end,:).*l2./2./abs(...
        x(1:end-2,:).*y(2:end-1,:)+x(2:end-1,:).*y(3:end,:)+x(3:end,:).*y(1:end-2,:)...
        -x(1:end-2,:).*y(3:end,:)-x(2:end-1,:).*y(1:end-2,:)-x(3:end,:).*y(2:end-1,:));
    r = ipermute(r,perm);
end
end