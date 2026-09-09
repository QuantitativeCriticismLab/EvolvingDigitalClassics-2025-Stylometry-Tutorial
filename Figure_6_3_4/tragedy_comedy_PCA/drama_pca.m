% load data
S = xlsread("stylometry_data_drama_updated.xlsx", "Values");

% rescale data
%S = normalize(S, 'range', [0 1]);
S = normalize(S, 'zscore');

% load text labes
labels = importdata("labels.txt")

% do PCA
[coeff,score,latent,tsquared,explained,mu] = pca(S)


% plot PC1 vs. PC2
plot(score(1:20,1),score(1:20,2),'k+', score(31:36,1),score(31:36,2),'ko',score(21:30,1),score(21:30,2),'k*')
axis square
legend({'Plautus', 'Terence', 'Tragedy'}, 'Location', 'northwest')
xlabel('PC1 (46.2%)')
ylabel('PC2 (12.0%)')
set(gca, 'FontSize',14)
set(gca,'defaultLineMarkerSize',14);
box off

% alternative interactive visualization
%mapcaplot(S, labels)