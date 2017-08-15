[time_slices, concs_history, rates_history] = lake( ...
	0.0,	... oxygen_bubble_rate
	96.2805,	... nitrogen_source
	0.04731,	... nitrogen_ratio
	46300.2,	... carbon_source_from_5e4
	5156.49,	... oxygen_source
	2830.0,	... methane_source
        0.4,	... t_max
	0.197306,	... sminus_precipitation
	0.211371,    ... fe_precipitation
	0.199278,    ... carbon precip
	64.9447,	... diffusion_constant
	10, 	... ma_op_o_fe_rate_const
	5.0,	... ma_op_o_n_rate_const
	0.16,	... ma_op_o_s_rate_const
	1.95253,	... ma_op_fe_n_rate_const
	0.250791,    ... ma_op_s_n_rate_const
	1e4,    ... ma_op_ch4_o_rate_const
	50.8804,    ... ma_op_ch4_n_rate_const
	0.01,	... ma_op_ch4_s_rate_const
	1.87454,	    ... primary_ox_rate_const
	20.0,	... c_lim_o
	5.0,	... c_lim_n
	0.1,	    ... c_lim_fe
	30,	    ... c_lim_s
        concs0  ... Import from input file
);
