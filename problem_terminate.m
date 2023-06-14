function [ecosize, n, maxFE, lb, ub] = problem_terminate()
    % Parameter settings:
    % ecosystem (population) size
    ecosize = 50;
    % problem dimension
    n = 19; 
    % number of function evaluations
    maxFE = 500 * n; 
    % problem lower band ->Tasarım parametrelerini ağırlıklandırırken,ağırlık
    % katsayılarının alabilecekleri değerler
    lowerBand = 0;
    lb = ones(1, n) * lowerBand; 
    % problem upper band ->Tasarım parametrelerini ağırlıklandırırken,ağırlık
    % katsayılarının alabilecekleri değerler
    upperBand = 1;
    ub = ones(1, n) * upperBand;
    
end
