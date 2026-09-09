% verse scatterplot - drama top 2 features 


S = xlsread("20250922_172341-normed-verse-labeled.xlsx", "Values");

plot(S(1:36,13), S(1:36,1),'k+', S(37:221,13), S(37:221,1),'ko')
axis square

legend({'Drama', 'Other Verse'}, 'Location','northeast')
xlabel('Frequency of Interrogative Sentences')
ylabel('Mean Sentence Length (Words)')
set(gca, 'FontSize',14)
set(gca,'defaultLineMarkerSize',14);
ylim([0 40]);
box off


