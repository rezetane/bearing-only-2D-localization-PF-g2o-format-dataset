  function    best_estimate_id = estimate_pose(samples)
    %devide weights
   % d_w=min(weights);
    %d_wmax_idx=zeros(1,length(weights));
    %for i=1:length(weights)
    N=length(samples);
     register_d=zeros(N);
     sum_es=sum(samples(1:2,:)');
     es=sum_es/N;
     for i=1:N
       d_es=es'-samples(1:2,i);
       des=sqrt(d_es(1,1)^2 +d_es(2,1)^2);
       register_d(i)=des;  
       endfor
       
       [~,best_estimate_id]=min(register_d);
     %sum of all samples x y 
     %devide by N 
     %for loop i = N
         %compute distance estimate to each particle
         %register in array n 
         %end
         %[~ ,estimate id ]=
      
    
    
endfunction