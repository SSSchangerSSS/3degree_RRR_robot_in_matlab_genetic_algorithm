function T = geneticAlgorithm(X,Y,Fi)
rng default % For reproducibility
FitnessFunction = @simple_fitness;
numberOfVariables = 3;
setGlobalt1(X)
setGlobalt2(Y)
setGlobalt3(Fi)
options = optimoptions('ga');
options.MaxGenerations = 10000;
[x,fval] = ga(FitnessFunction,numberOfVariables,[],[],[],[],[],[],[],options);
T = x;
fval
end