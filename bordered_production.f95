program bordered
real::A(4,4),R(4,4)
print*,'Please A'
read*,A
one:do i=1,4
two:do k=1,i-1
A(i,i)=A(i,i)-A(i,k)**2
enddo two
if(A(i,i)<=0)then
print*,'Error! A(i,i) must be positive!'
stop
endif
A(i,i)=sqrt(A(i,i))
R(i,i)=A(i,i)
two2:do j=i+1,4
three:do k=1,i-1
A(j,i)=A(j,i)-A(i,k)*A(j,k)
enddo three
A(j,i)=A(j,i)/A(i,i)
R(j,i)=A(j,i)
enddo two2
enddo one
one3:do i=1,4-1
two3:do j=i+1,4
R(i,j)=0
enddo two3
enddo one3
print*,R
end
