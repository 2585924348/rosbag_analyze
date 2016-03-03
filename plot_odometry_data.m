filename = '/home/nmirod/Aevehdet/rosbag/test13/odroid.csv';
savename = 'odroid';
savedir  = '/home/nmirod/Aevehdet/rosbag/test13/';
data = odom_msg_extract(filename);

figure1 = figure;
plot(data.x,data.y);
axis equal;
X = ['Position in 2D space'];
title(X);
ylabel('X coordinate (m)');
xlabel('Y coordinate (m)');
Y=[savedir,savename,'_xy.png'];
saveas(figure1,Y);

figure2 = figure;
plot(data.samples,data.z);
X = ['Altitude'];
title(X);
ylabel('Z coordinate (m)');
xlabel('sample');
Y=[savedir,savename,'_z.png'];
saveas(figure2,Y);

figure6 = figure;
v = sqrt(((data.vx).^2)+((data.vy).^2));
plot(data.samples,v);
X = ['planar linear velocity'];
title(X);
ylabel('V (m/s)');
xlabel('sample');
Y=[savedir,savename,'_vel.png'];
saveas(figure2,Y);



figure3 = figure;
plot(data.samples,data.w);
X = ['Aproximate orientation'];
title(X);
ylabel('w (quaternion param)');
xlabel('sample');
Y=[savedir,savename,'_w.png'];
saveas(figure3,Y);

figure4 = figure;
plot(data.samples,data.vx); hold on;
plot(data.samples,data.vy,'red'); hold on;
plot(data.samples,data.vz,'green');
X = ['Linear velocity'];
title(X);
ylabel('Linear velocity (m/s)');
xlabel('sample');
legend('Linear velocity x','Linear velocity y','Linear velocity z');
Y=[savedir,savename,'_linearvel.png'];
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