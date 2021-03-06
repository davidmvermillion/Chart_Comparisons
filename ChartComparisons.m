% scatterplot
% scatter(Labels, Series_1, 'b'), xlabel('Datapoint'), ylabel('Datapoint Value'), title('Randomized Data Points')
% hold on
% scatter(Labels, Series_2, 'r'), xlabel('Datapoint'), ylabel('Datapoint Value'), title('Randomized Data Points')
% format long
% X = [ones(length(Labels),1) Labels];
% % b represents the equation in intercept + slope form
% b1 = X\Series_1;
% % b1 = 38.231836734693879 + 0.337575030012005x
% % lm1 = linear model 1
% lm1 = X*b1;
% b2 = X\Series_2;
% % b2 = 48.852244897959189 -0.120480192076831x
% lm2 = X*b2;
% plot(Labels, lm1, 'b', Labels, lm2, 'r')
% legend({'Series 1', 'Series 2', 'y = 0.34x + 38.23', 'y = -0.12x + 48.85'}, 'Location', 'best')
% hold off


% histogram

h1 = histogram(Series_1);
h1.BinWidth = 15;
hold on
xlabel('Data Value'), ylabel('Frequency'), title('Randomized Data Points')
h2 = histogram(Series_2);
h2.BinWidth = 15;
legend('Series 1', 'Series 2')
legend('boxoff')
hold off