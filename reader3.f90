program reader3
    implicit double precision(a-c,o-z)
    dimension f(20)
    open(1,file='aeroin.inp')
    read(1,*) !skip a line (for titles)
    do 1 i=1,3
1    read(1,*)f(i)
    read(1,*) !skip a line (for titles)
    do 2 i =4,14
2    read(1,*)f(i)
    
    close(1)
        f(15) = f(1) + 1
    open(1,file='aeroin.inp')
        write(1,*)
        write(1,*)f(15)
        write(1,*)'1.225'   
        write(1,*)'340.0'   
        write(1,*)
        write(1,*)'3'
        write(1,*)'2'
        write(1,*)'-5'
        write(1,*)'0'
        write(1,*)'10.3'
        write(1,*)'40.0'
        write(1,*)'20'
        write(1,*)'1'
        write(1,*)'0'
        write(1,*)'0.1'
        write(1,*)'0.01'
        write(1,*)
        write(1,*)'1 "geomb.inp" "profilb.inp"'
        write(1,*)'2 "geomb.inp" "profilb.inp"'
        write(1,*)'3 "geomb.inp" "profilb.inp"'

               
    close(1)
     
end 
