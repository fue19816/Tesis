%% Realización de clasificadores de NN y SVM
features = readmatrix('Caracteristicas_EEG_Concentracion.csv', 'Range', 'C:F');
tags = readmatrix('Caracteristicas_EEG_Concentracion.csv');
tags = tags(:,2);

perc_train = 0.8;
K = size(features,1);

X_train = features(1:floor(perc_train*K),:);
Y_train = tags(1:floor(perc_train*K),:);
X_test = features(floor(perc_train*K)+1:end,:);
Y_test = tags(floor(perc_train*K)+1:end,:);

ModeloSVM1 = fitcsvm(X_train,Y_train,'KernelFunction','polynomial',...
    'KernelScale','auto','PolynomialOrder',2);
ModeloSVM2 = fitcsvm(X_train,Y_train,'KernelFunction','rbf',...
    'KernelScale','auto','Standardize',true);
ModeloSVM3 = fitcsvm(X_train,Y_train,'KernelFunction','linear','KernelScale','auto');

Y_predict_p = predict(ModeloSVM3, X_test);

figure(6)
cnfchart_p = confusionchart(Y_test,Y_predict_p);
mconf_p = cnfchart_p.NormalizedValues;
efic_p = round((sum(diag(mconf_p))/size(X_test,1))*100,2);
cnfchart_p.Title = strcat('Kernel Lineal');
cnfchart_p.RowSummary = 'row-normalized';
cnfchart_p.ColumnSummary = 'column-normalized';
