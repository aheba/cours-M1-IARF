
%X=linspace(1,1000,1000)
X=(1:4000)/8000;

son=[];

for i=4000000:100:20000000000

note=cos(2*X*pi*i)*0.8;
%son=[son note];
sound(note);

i

end


