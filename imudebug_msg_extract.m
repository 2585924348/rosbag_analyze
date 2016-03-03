function [ data ] = imudebug_msg_extract( filename )
fid = fopen(filename);
nCols = 3;
format = ['%f%f%f'];
data_cell = textscan(fid,format,'delimiter',',','headerLines', 1);
data.yaw  = data_cell{3};

data.yaw(isnan(data.yaw))      =[];


data.samples = (1:size(data.yaw,1))';
end