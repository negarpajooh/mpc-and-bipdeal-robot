function valueMSE=MSE(e)
N=numel(e);
E=e.^2;
valueMSE=sum(E)/N;
end