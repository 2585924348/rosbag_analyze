function [data] = odom_msg_extract(filename)
fid = fopen(filename);
nCols = 84;
format = ['%f%f%f%s%s' repmat('%f', [1 nCols])];

data_cell = textscan(fid,format,'delimiter',',','headerLines', 1);
data.time    = data_cell{3};
data.x       = data_cell{6};  %position x
data.y       = data_cell{7};  %position y
data.z       = data_cell{8};  %position z
data.q1      = data_cell{9}; %orientation quaternion
data.q2      = data_cell{10}; %
data.q3      = data_cell{11}; %
data.w       = data_cell{12}; %
data.vx      = data_cell{49}; %linear velocity x
data.vy      = data_cell{50}; %linear velocity y
data.vz      = data_cell{51}; %linear velocity z
data.wx      = data_cell{52}; %angular velocity x
data.wy      = data_cell{53}; %angular velocity y
data.wz      = data_cell{54}; %angular velocity z
data.time(isnan(data.time))=[];
data.x(isnan(data.x))      =[];
data.y(isnan(data.y))      =[]; 
data.z(isnan(data.z))      =[]; 
data.vx(isnan(data.vx))    =[]; 
data.vy(isnan(data.vy))    =[]; 
data.vz(isnan(data.vz))    =[]; 
data.wx(isnan(data.wx))    =[]; 
data.wy(isnan(data.wy))    =[]; 
data.wz(isnan(data.wz))    =[]; 
data.w(isnan(data.w))      =[]; 
data.q1(isnan(data.q1))    =[];
data.q2(isnan(data.q2))    =[];
data.q3(isnan(data.q3))    =[];

data.samples = (1:size(data.x,1))';

fclose(fid);
end