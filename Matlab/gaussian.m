function value = gaussian(xi,yi,x0,y0,k,amp)

  #xi,yi is the coordindate of the point where we want the value of the surface
  #x0,y0 is the point where the peak of the guassian lies
  #k is the variance i.e k = sigma
  #amp is the max value to be given at the peak
  
  amp2 = amp;
  
  value = amp2/k*( exp( -(xi-x0)*(xi-x0)/k/k-(yi-y0)*(yi-y0)/k/k ) );
  
end