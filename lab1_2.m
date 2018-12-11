%a = imread('lygon.jpg');
%a = imreside(a,[2448,3264]);
%b = imread('tartan.jpg');
%imshow(a)

X=imread('lygon.jpg');
A=imread('tartan.jpg');
imageR=A(:,:,1);
dims=size(X);
rows=dims(1);
clos=dims(2);
for i=1:rows
    for j=1:clos
          for k=1:3
              H=X(i,j,1);
              V=X(i,j,2);
              L=X(i,j,3);
            if H<200&&V<200&&L>200
         
              X(i,j,1)=A(i,j,1);
              X(i,j,2)=A(i,j,2);
              X(i,j,3)=A(i,j,3);
            end
          end
          
    end
end
figure(1)
imshow(X);
