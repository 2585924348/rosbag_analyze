function [data] = imu_msg_extract(filename)
fid = fopen(filename);
nCols = 37;
format = ['%f%f%f%s' repmat('%f', [1 nCols])];

data_cell = textscan(fid,format,'delimiter',',','headerLines', 1);
data.time    = data_cell{3};
data.x       = data_cell{5};  %position x
data.y       = data_cell{6};  %position y
data.z       = data_cell{7};  %position z
data.w       = data_cell{8}; %orientation angle
data.wx      = data_cell{18}; %angular velocity x
data.wy      = data_cell{19}; %angular velocity y
data.wz      = data_cell{20}; %angular velocity z
data.ax      = data_cell{30}; %linear accel x
data.ay      = data_cell{31}; %linear accel velocity y
data.az      = data_cell{32}; %linear accel velocity z
data.time(isnan(data.time))=[];
data.x(isnan(data.x))      =[];
data.y(isnan(data.y))      =[]; 
data.z(isnan(data.z))      =[]; 
data.wx(isnan(data.wx))    =[]; 
data.wy(isnan(data.wy))    =[]; 
data.wz(isnan(data.wz))    =[]; 
data.ax(isnan(data.ax))    =[]; 
data.ay(isnan(data.ay))    =[]; 
data.az(isnan(data.az))    =[]; 
data.w(isnan(data.w))      =[]; 
data.samples = (1:size(data.x,1))';

fclose(fid);
end