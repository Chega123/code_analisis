function intervalos(f,li,ls,amplitud)
  fprintf("|    x      |      f(x)       |\n");
  ga = li:amplitud:ls;
  for i=li:amplitud:ls
    fprintf("|    %2.8f      |       %2.10f      |\n",i,f(i));
    endfor
endfunction
