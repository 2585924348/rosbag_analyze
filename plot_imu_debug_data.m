filename = '/home/nmirod/tests/test11/csv_files/test11_imudebug.csv';
savename = 'test11_imudebug';
savedir  = '/home/nmirod/tests/test11/plots/';
data = imudebug_msg_extract(filename);

figure3 = figure;
plot(data.samples,data.yaw);
X = ['Yaw'];
title(X);
ylabel('yaw (rad)');
xlabel('sample');
Y=[savedir,savename,'_yaw.png'];
saveas(figure3,Y);