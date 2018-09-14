fidin=fopen('codg3540.15i');  
allmat=cell(1,24);
for k=1:24
fline=fgets(fidin);
while max(size(strfind(fline,'LAT/LON1/LON2/DLON/H'))) ==0
    fline=fgets(fidin);
    continue;
end
MatT=zeros(71,73);
for i=1:71
fline=fgets(fidin);
d=textscan(fline,'%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d'); 
mat1=cell2mat(d);
fline=fgets(fidin);
d=textscan(fline,'%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d'); 
mat2=cell2mat(d);
fline=fgets(fidin);
d=textscan(fline,'%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d'); 
mat3=cell2mat(d);
fline=fgets(fidin);
d=textscan(fline,'%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d'); 
mat4=cell2mat(d);
fline=fgets(fidin);
d=textscan(fline,'%d %d %d %d %d %d %d %d %d'); 
mat5=cell2mat(d);
matL=[mat1 mat2 mat3 mat4 mat5];
MatT(i,:)=matL;
fline=fgets(fidin);
end
allmat{1,k}=MatT;

end

fclose(fidin);