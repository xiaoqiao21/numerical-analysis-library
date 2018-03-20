program outer
real::A(5,5),R(5,5)
print*,'Please A'
read*,A
one:do k=1,5
A(k,k)=sqrt(A(k,k))
two:do=k+1,5
A(j,k)=A(j,k)/(A(k,k)
enddo two
three:do i=k+1,5
four:do j=k+1,5
A(j,i)=A(j,i-A(i,k)*A(j*k)
enddo four
enddo three
enddo one
one3:do i=1,5-1
two3:do j=i+1,5
R(i,j)=0
enddo two3
enddo one3
write(*,*)R
end
