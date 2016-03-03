function [ data ] = extended_fix_msg_extract( filename )
fid = fopen(filename);
nCols = 70;
format = [repmat('%f', [1 nCols])];
data_cell = textscan(fid,format,'delimiter',',','headerLines', 1);
data.speed  = data_cell{61};


data.speed(isnan(data.speed))  =[];

data.samples = (1:size(data.speed,1))';
end

