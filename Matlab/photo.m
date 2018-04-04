I = imread('left.png');

row = size(I,1);
col = size(I,2);

#No. of pressure points = n
n = 5;

x         = [50  , 153 , 185 , 300 , 405 ];
y         = [200 , 190 , 110 , 130 , 180 ];
k         = [90  , 70  , 70  ,  90 , 70 ];
#amplitude = [100 , 255 , 255 , 150 , 255 ];

#amp is being read from a file
amp = csvread('amp.dat') ;

a = zeros(row,col);
# Black implies value is 0
# White implies value is 255
final = zeros(row,col)

for i = 1:row
  for j = 1:col
    for m = 1:n
#      a(i,j) = a(i,j) + gaussian(i,j,x(m),y(m),k(m),amplitude(m)*100);
      a(i,j) = a(i,j) + gaussian(i,j,x(m),y(m),k(m),amp(m)*100);
      end
    if I(i,j,1)<30
        t(i,j) = 0;
        final(i,j) = a(i,j);
    else
        t(i,j) = 255;
        final(i,j) = 0;
    end
  end
end


contourf(final);

figure, mesh(final);