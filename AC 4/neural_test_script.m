%FCM CLUSTERING 9 CLUSTERS

fis_options = genfisOptions('SubtractiveClustering');
fis_options.SquashFactor = 1.25;

fis = genfis(train_set(:, 1:6), train_set(:,7), fis_options)

fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'SUBC 1.25 SQUASH NO TRAIN %6s\n';
fis_out = evalfis(fis, test_set(:, 1:6));
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('SUBC 1.25 SQUASH NO TRAIN.mat', 'fis');

old_fis = fis;

training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 1; %Hybrid Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'SUBC 1.25 SQUASH HYBRID TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('SUBC 1.25 SQUASH HYBRID TRAIN.mat', 'fis');


training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 0; %Backprop Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'SUBC 1.25 SQUASH BACKPROP TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('SUBC 1.25 SQUASH BACKPROP TRAIN.mat', 'fis');



%FCM CLUSTERING 25 CLUSTERS

fis_options.SquashFactor = 1;

fis = genfis(train_set(:, 1:6), train_set(:,7), fis_options)
fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'SUBC 1 SQUASH NO TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('SUBC 1 SQUASH NO TRAIN.mat', 'fis');

old_fis = fis;

training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 1; %Hybrid Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'SUBC 1 SQUASH HYBRID TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('SUBC 1 SQUASH HYBRID TRAIN.mat', 'fis');

training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 0; %Backprop Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'SUBC 1 SQUASH BACKPROP TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('SUBC 1 SQUASH BACKPROP TRAIN.mat', 'fis');

%FCM CLUSTERING 49 CLUSTERS

fis_options.SquashFactor = 0.5;
fis = genfis(train_set(:, 1:6), train_set(:,7), fis_options)

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'SUBC 0.5 SQUASH NO TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('SUBC 0.5 SQUASH NO TRAIN.mat', 'fis');

old_fis = fis;

training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 1; %Hybrid Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'SUBC 0.5 SQUASH HYBRID TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('SUBC 0.5 SQUASH HYBRID TRAIN.mat', 'fis');

training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 0; %Backprop Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'SUBC 0.5 SQUASH BACKPROP TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('SUBC 0.5 SQUASH BACKPROP TRAIN.mat', 'fis');

%FCM CLUSTERING 9 CLUSTERS

fis_options = genfisOptions('FCMClustering');
fis_options.NumClusters = 2;

fis = genfis(train_set(:, 1:6), train_set(:,7), fis_options)
fis_out = evalfis(fis, test_set(:, 1:6)); 

fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'FCM 2 CLUSTERS NO TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('FCM 2 CLUSTERS NO TRAIN.mat', 'fis');

old_fis = fis;

training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 1; %Hybrid Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'FCM 2 CLUSTERS HYBRID TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('FCM 2 CLUSTERS HYBRID TRAIN.mat', 'fis');


training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 0; %Backprop Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'FCM 2 CLUSTERS BACKPROP TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('FCM 2 CLUSTERS BACKPROP TRAIN.mat', 'fis');



%FCM CLUSTERING 25 CLUSTERS

fis_options.NumClusters = 25;

fis = genfis(train_set(:, 1:6), train_set(:,7), fis_options)
fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'FCM 25 CLUSTERS NO TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('FCM 25 CLUSTERS NO TRAIN.mat', 'fis');

old_fis = fis;

training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 1; %Hybrid Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'FCM 25 CLUSTERS HYBRID TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('FCM 25 CLUSTERS HYBRID TRAIN.mat', 'fis');

training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 0; %Backprop Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'FCM 25 CLUSTERS BACKPROP TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('FCM 25 CLUSTERS BACKPROP TRAIN.mat', 'fis');

%FCM CLUSTERING 49 CLUSTERS

fis_options = genfisOptions('FCMClustering');
fis_options.NumClusters = 100;
fis = genfis(train_set(:, 1:6), train_set(:,7), fis_options)

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'FCM 100 CLUSTERS NO TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('FCM 100 CLUSTERS NO TRAIN.mat', 'fis');

old_fis = fis;

training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 1; %Hybrid Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'FCM 100 CLUSTERS HYBRID TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('FCM 100 CLUSTERS HYBRID TRAIN.mat', 'fis');

training_options = anfisOptions;
training_options.EpochNumber = 100;
training_options.OptimizationMethod = 0; %Backprop Method
[fis, training_error] = anfis(train_set, old_fis);

fis_out = evalfis(fis, test_set(:, 1:6)); 
fileId = fopen("discrete_test.txt", 'a');
formatSpec = 'FCM 100 CLUSTERS BACKPROP TRAIN %6s\n';
fprintf(fileId, formatSpec, immse(fis_out, test_set(:, 7)));
fclose(fileId);

save('FCM 100 CLUSTERS BACKPROP TRAIN.mat', 'fis');