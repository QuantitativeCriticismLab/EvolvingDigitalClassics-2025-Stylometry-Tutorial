% load data
S = xlsread("stylometry_data_letters_updated.xlsx", "Values");

% rescale data between 0,1
%S = normalize(S, 'range', [0 1]);
S = normalize(S, 'zscore');

% load text labes
labels = importdata("labels.txt")

% do PCA
[coeff,score,latent,tsquared,explained,mu] = pca(S)

% plot PC1 vs. PC2
plot(score(8:41,1),score(8:41,2),'k+',score(42:51,1),score(42:51,2),'ko', score(52:64,1),score(52:64,2),'k*', score(1:7,1),score(1:7,2),'ks')
axis square
legend({'Cicero', 'Pliny', 'Seneca', 'Other'}, 'Location', 'northwest')
xlabel('PC1 (25.1%)')
ylabel('PC2 (15.6%)')
set(gca, 'FontSize',14)
set(gca,'defaultLineMarkerSize',14);
box off


% alternative interactive visualization
%mapcaplot(S, labels)