% make_plots.m
% This script loads up the concentration and rate data from the last
% interactive run and plots each one on its own profile.

% load up the data from interactive after writing it
load('./plots/data/history.mat')
conc_names = textread('../analysis/profiles/conc_names.txt', '%s', 'delimiter', '\n');
rate_names = textread('../analysis/profiles/rate_names.txt', '%s', 'delimiter', '\n');
depths = dlmread('../analysis/profiles/depths.txt');

% load the color scheme
%colormap(map);

% figure out the number of figures to make
[~, ~, n_concs] = size(concs_history);
[~, ~, n_rates] = size(rates_history);

% make each of the concs figures
for i = 1: n_concs
	  fn = sprintf('plots/end/c_%s.pdf', conc_names{i});
    plot(depths, concs_history(end, :, i));
    print(fn, '-dpdf');

    fn = sprintf('plots/time/c_%s.pdf', conc_names{i});
    make_ts_plot(concs_history(:, :, i), fn, 5, 100);
end

% make each of the rates figures
for i = 1: n_rates
	  fn = sprintf('plots/end/r_%s.pdf', rate_names{i});
    plot(depths, rates_history(end, :, i));
    print(fn, '-dpdf');

    fn = sprintf('plots/time/r_%s.pdf', rate_names{i});
    make_ts_plot(rates_history(:, :, i), fn, 5, 100);
end
