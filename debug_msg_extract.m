function [data] = debug_msg_extract(filename)
fid = fopen(filename);
format = ['%f%f%f'];

data_cell = textscan(fid,format,'delimiter',',','headerLines', 1);
data.time    = data_cell{1};
data.yaw     = data_cell{3}; %orientation angle
data.time(isnan(data.time))=[];
data.yaw(isnan(data.yaw))  =[]; 
data.samples = (1:size(data.yaw,1))';

fclose(fid);
end