function [A,B] = Partidos(A,B,PGA,PGB)

    VPGA=FunGoles(PGA);
    VPGB=FunGoles(PGB);
    GolesA=0;
    GolesB=0;
    
    
    for i=1:5
        if VPGA(randi(100))==1
            GolesA=GolesA+1;
        end
       
        if VPGB(randi(100))==1
            GolesB=GolesB+1;
        end               
    end    

    
    if GolesA==GolesB
        A(1)=A(1)+1;
        A(3)=A(3)+1;
        A(5)=A(5)+GolesA;
        A(6)=A(6)+GolesB;
        
        B(1)=B(1)+1;
        B(3)=B(3)+1;
        B(5)=B(5)+GolesB;
        B(6)=B(6)+GolesA;
    else
        if GolesA>GolesB
            
            A(1)=A(1)+3;
            A(2)=A(2)+1;          
            A(5)=A(5)+GolesA;
            A(6)=A(6)+GolesB;
            
            B(4)=B(4)+1;
            B(5)=B(5)+GolesB;
            B(6)=B(6)+GolesA;
            
        else
            B(1)=B(1)+3;
            B(2)=B(2)+1;          
            B(5)=B(5)+GolesA;
            B(6)=B(6)+GolesB;
            
            A(4)=A(4)+1;
            A(5)=A(5)+GolesB;
            A(6)=A(6)+GolesA;            
        end
        
    end
    
end