%% custom_msgs::Blobs -> processing
filename = '';
target = blob_msg_extract(filename);

avg   = mean(target);
covar = cov(target); 
