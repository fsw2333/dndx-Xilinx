clear
clc
%����һ�����ǲ�
n = -127:128 ;
yn=256*tripuls(n,256)-1;
%�������ǲ�����,��֤����
plot(n,yn);
%�½�.coe�ļ�,����ΪTriangle_Wave_Rom.coe
fid = fopen('./Triangle_Wave_Rom.coe','wt');
%���ļ�������.coe�ļ���ʼ�ļ�ͷ:
%memory_initialization_radix = 10
%memory_initialization_vector =
fprintf(fid,'memory_initialization_radix = 10;\nmemory_initialization_vector = ');

 
%��256�����β����������.coe�ļ���
for i = 1 : 256

    %���д���,�ɲ���Ҫ
    if mod(i-1,8) == 0 

        fprintf(fid,'\n');

    end
    %���ǵ�8λADC,��ֵ���ܳ���255,,���ܵ�����,�������˸�����
    if yn(i)<0
        fprintf(fid,'%4d,',0);
    else
        fprintf(fid,'%4d,',yn(i));
    end
end
