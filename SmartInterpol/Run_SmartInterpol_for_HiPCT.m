clear
close all
clc

diary /data/output_from_SmartInterpol/batch_1.log

diary on

% % % %%%%%%%%%%%%% EXAMPLE %%%%%%%%%%%%
im_vol = '/data/input_for_SmartInterpol/data_16bit/';
lab_vol = '/data/input_for_SmartInterpol/label/';
LUT_fullPath = '/data/input_for_SmartInterpol/simpleLUT.txt';

result_path = '/data/output_from_SmartInterpol/batch_1'; % does not exist, will be created
trained_net_file = '/data/output_from_SmartInterpol/batch_1/trained_net.mat'; % does not exist, will be created

downsampling_factor = 0.25;
LF_downsampling_factor = 0.25;

SmartInterpol(im_vol,lab_vol , result_path, trained_net_file, 'downsampling_factor', downsampling_factor,'LF_downsampling_factor',LF_downsampling_factor,'LUT_path',LUT_fullPath,'maxepoch_global',300,'LR_global',0.1,'lambda_DL',2,'minibatch_global',4,'LR_local',0.1,'minibatch_local',4,'firstSliceOption',1,'lastSliceOption',1)

diary off
