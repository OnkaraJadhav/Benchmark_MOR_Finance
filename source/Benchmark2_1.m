%% Benchmark Case 2: Classical Greedy Sampling

% The main task of this research is to implement a parametric model order reduction
% approach for financial risk analysis. Second benchmark case is to verify 
% the implemented MOR algorithm. We use a finite difference method for 
% simulating the convection-diffusion-reaction PDE. 
% The projection-based MOR approach has been implemented, and 
% the reduced-order basis is obtained using the proper orthogonal decomposition 
% approach with the classical and adaptive greedy sampling methods.

%% This benchmark case runs the classical greedy sampling approach

%% Inputs:
    % Parameter space (a, b, sigma):
        % a - Deterministic drift
        % b - Mean reversion speed
        % sigma - volatility
    % Maximum number of greedy iterations: Imax
    % Number of maximum training candidates: c
    
    % Please specify the folder name in 'myFolder'
%% ------------+--------------------+---------------+---------------------+
%% Outputs:
    % Reduced Basis: Q_d
    % Relative error between FOM and ROM: RelativeError
    % Speed up factor: SpeedUpFactor

%% Run Benchmark

    % Specify the folder where the files live.
    myFolder = 'C:\Users\rpolz\Desktop\Onkar\ToGit';
    % Check to make sure that folder actually exists.  Warn user if it doesn't.
    if ~isfolder(myFolder)
        errorMessage = sprintf('Error: The following folder does not exist:\n%s\nPlease specify a new folder.', myFolder);
        uiwait(warndlg(errorMessage));
        myFolder = uigetdir(); % Ask for a new one.
        if myFolder == 0
         % User clicked Cancel
            return;
        end
    end
    
%     cd('C:\Benchmark_MOR_Finance');
    run('GreedyPOD.m')