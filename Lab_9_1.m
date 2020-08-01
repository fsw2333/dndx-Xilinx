clear
clc
%产生一个三角波
n = -127:128 ;
yn=256*tripuls(n,256)-1;
%绘制三角波波形,验证波形
plot(n,yn);
%新建.coe文件,命名为Triangle_Wave_Rom.coe
fid = fopen('./Triangle_Wave_Rom.coe','wt');
%向文件中输入.coe文件起始文件头:
%memory_initialization_radix = 10
%memory_initialization_vector =
fprintf(fid,'memory_initialization_radix = 10;\nmemory_initialization_vector = ');

 
%将256个波形采样点输出到.coe文件中
for i = 1 : 256

    %换行处理,可不需要
    if mod(i-1,8) == 0 

        fprintf(fid,'\n');

    end
    %考虑到8位ADC,数值不能超过255,,不能低于零,这里做了个处理
    if yn(i)<0
        fprintf(fid,'%4d,',0);
    else
        fprintf(fid,'%4d,',yn(i));
    end
end
