system('C:','-echo');
system('cd C:\Program Files\NCBI\blast-2.7.1+\db','-echo');
system('makeblastdb -in car.fsa -dbtype prot -parse_seqids -out newdatabase -title "newdb"','-echo');
system('psiblast -query car.fsa -db newdatabase -num_iterations=3 -evalue=0.001 -out psiblastOut.txt -out_ascii_pssm=PSSM -save_each_pssm','-echo');