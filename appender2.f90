program appender2
    implicit double precision(a-c,o-z)
    dimension f(20)
    
        
    open(1,file='nom_pitch.dat')
        
        read(1,*)f(1)
        read(1,*)f(2)
        read(1,*)f(3)
        read(1,*)f(4)
        read(1,*)f(5)
        read(1,*)f(6)

               
    close(1)
    
    open(1,file='pitch_nom_P.dat',access = 'append',status= 'old')

        write(1,*)f(1), f(2), f(3), f(4), f(5), f(6)


    close(1)
    
end 
