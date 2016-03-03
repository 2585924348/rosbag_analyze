Collection of scripts used for processing information in rosbags.

Most scripts use CSV files as the standard.
In order to get a CSV file from a rosbag use:

    rostopic echo -b bagfile.bag -p /desired_topic > CSVfile.csv
