function [APCE,Fmax] = apce(response)
    sum = 0;
    Fmax= max(max(response));
    Fmin = min(min(response));
    for i = 1: size(response,1)
        for j = 1 :size(response,2)
            sum = sum +( response(i,j) - Fmin)^2;
              
        end
    end
    
    Fmean =  sum / (size(response,1) * size(response,2));  
    
   
  APCE = (Fmax - Fmin)^2 / Fmean;
end