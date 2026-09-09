% load data

S = xlsread("20250922_172341-normed-verse-labeled.xlsx", "Values");
[~,labels] = xlsread("20250922_172341-normed-verse-labeled.xlsx", "Labels");

% mean sentence length

Origin = cellstr(labels);
figure
vs = violinplot(S(:,1), Origin, 'ViolinColor', [0.5 0.5 0.5]);
ylabel('Mean Sentence Length (Words)');
set(gca, 'FontSize',14)
set(gca,'defaultLineMarkerSize',14);
ylim([0 40]);
box off
axis square


