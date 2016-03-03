filename = '/home/nmirod/tests/test5/csv_files/test5_imu.csv';
savename = 'test5_filt';
savedir  = '/home/nmirod/tests/test5/plots/';
data = imu_msg_extract(filename);

figure3 = figure;
plot(data.samples,data.w);
X = ['Aproximate orientation'];
title(X);
ylabel('w (rad)');
xlabel('sample');
Y=[savedir,savename,'_w.png'];
saveas(figure3,Y);

figure4 = figure;
plot(data.samples,data.ax); hold on;
plot(data.samples,data.ay,'red'); hold on;
plot(data.samples,data.az,'green');
X = ['Linear acceleration'];
title(X);
ylabel('Linear acceleration(m/s^2)');
xlabel('sample');
legend('Linear acceleration x','Linear acceleration y','Linear acceleration z');
Y=[savedir,savename,'_linearacel.png'];
saveas(figure4,Y);

figure5 = figure;
plot(data.samples,data.wx); hold on;
plot(data.samples,data.wy,'red'); hold on;
plot(data.samples,data.wz,'green');
X = ['Angular velocity'];
title(X);
ylabel('Angular velocity (rad/s)');
xlabel('sample');
legend('Angular velocity x','Angular velocity y','Angular velocity z');
Y=[savedir,savename,'_Angvel.png'];
saveas(figure5,Y);

figure6 = figure;
plot(data.samples,data.x); hold on;
plot(data.samples,data.y,'red'); hold on;
plot(data.samples,data.z,'green');
X = ['Orientation quarternion (x y z)'];
title(X);
ylabel('(m)');
xlabel('sample');
legend('Orientation quarternion x','Orientation quarternion y','Orientation quarternion z');
Y=[savedir,savename,'_Oriquat.png'];
saveas(figure6,Y);