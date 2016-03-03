function [ target ] = blob_msg_extract( filename )
data = csvread(filename,1,0);

target.X = data(:,6);
target.Y = data(:,7);
target.size = size(data(:,6),1);

end


