  function    best_estimate_id = estimate_pose(samples)
    
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

endfunction
