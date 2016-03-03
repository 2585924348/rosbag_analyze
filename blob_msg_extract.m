function [ targetPos ] = blob_msg_extract( filename )
data = csvread(filename,1,0);

targetPos= data(:,6:7);


end


