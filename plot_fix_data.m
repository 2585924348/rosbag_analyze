filename = '/home/nmirod/testbag/testbag1_fix.csv';
savename = 'testbag1_fix';
savedir  = '/home/nmirod/testbag/';
data = fix_msg_extract(filename);

figure1 = figure;
plot(data.long,data.lat);
axis equal;
X = ['GPS: longitude & latitude'];
title(X);
ylabel('lat');
xlabel('long');
Y=[savedir,savename,'_gps.png'];
saveas(figure1,Y);

filename = '/home/nmirod/testbag/testbag1_imudebug.csv';
data = imudebug_msg_extract(filename);


figure1 = figure;
plot(data.samples,data.yaw);
axis equal;
X = ['Yaw'];
title(X);
ylabel('yaw (angle)');
xlabel('sample');
Y=[savedir,savename,'_yaw.png'];
saveas(figure1,Y);