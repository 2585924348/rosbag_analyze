function [ data ] = extended_fix_msg_extract( filename )
fid = fopen(filename);
nCols = 70;
format = [repmat('%f', [1 nCols])];
data_cell = textscan(fid,format,'delimiter',',','headerLines', 1);
data.lat  = data_cell{7};
data.long = data_cell{8};

data.lat(isnan(data.lat))      =[];
data.long(isnan(data.long))    =[]; 

data.samples = (1:size(data.lat,1))';
end

