
    module data_output
    use, intrinsic :: iso_fortran_env, only: dp => real64, int32

    implicit none

    ! overload save_scalar_csv subroutine
    interface save_scalar_csv
    module procedure save_scalar_csv_double, save_scalar_csv_int, save_scalar_csv_logical
    end interface

     ! overload save_vector_csv subroutine
    interface save_vector_csv
    module procedure save_vector_csv_double, save_vector_csv_int, save_vector_csv_logical
    end interface

    ! overload save_scalar subroutine
    interface save_scalar
    module procedure save_scalar_double, save_scalar_int, save_scalar_logical
    end interface

    ! overload save_array_1d subroutine
    interface save_array_1d
    module procedure save_array_1d_double, save_array_1d_int, save_array_1d_logical
    end interface

    ! overload save_array_2d subroutine
    interface save_array_2d
    module procedure save_array_2d_double, save_array_2d_int, save_array_2d_logical
    end interface

    ! overload save_array_3d subroutine
    interface save_array_3d
    module procedure save_array_3d_double, save_array_3d_int, save_array_3d_logical
    end interface

    ! overload save_array_4d subroutine
    interface save_array_4d
    module procedure save_array_4d_double, save_array_4d_int, save_array_4d_logical
    end interface

    ! overload save_array_5d subroutine
    interface save_array_5d
    module procedure save_array_5d_double, save_array_5d_int, save_array_5d_logical
    end interface

    ! overload save_array_6d subroutine
    interface save_array_6d
    module procedure save_array_6d_double, save_array_6d_int, save_array_6d_logical
    end interface

    ! overload save_scalar_binary subroutine
    interface save_scalar_binary
    module procedure save_scalar_binary_double, save_scalar_binary_int, save_scalar_binary_logical
    end interface

    ! overload save_array_binary_1d subroutine
    interface save_array_binary_1d
    module procedure save_array_binary_1d_double, save_array_binary_1d_int, save_array_binary_1d_logical
    end interface

    ! overload save_array_binary_2d subroutine
    interface save_array_binary_2d
    module procedure save_array_binary_2d_double, save_array_binary_2d_int, save_array_binary_2d_logical
    end interface

    ! overload save_array_binary_3d subroutine
    interface save_array_binary_3d
    module procedure save_array_binary_3d_double, save_array_binary_3d_int, save_array_binary_3d_logical
    end interface

    ! overload save_array_binary_4d subroutine
    interface save_array_binary_4d
    module procedure save_array_binary_4d_double, save_array_binary_4d_int, save_array_binary_4d_logical
    end interface

    ! overload save_array_binary_5d subroutine
    interface save_array_binary_5d
    module procedure save_array_binary_5d_double, save_array_binary_5d_int, save_array_binary_5d_logical
    end interface

    ! overload save_array_binary_6d subroutine
    interface save_array_binary_6d
    module procedure save_array_binary_6d_double, save_array_binary_6d_int, save_array_binary_6d_logical
    end interface

    ! overload save_array_binary_7d subroutine
    interface save_array_binary_7d
    module procedure save_array_binary_7d_double, save_array_binary_7d_int, save_array_binary_7d_logical
    end interface

    ! overload save_array_binary_8d subroutine
    interface save_array_binary_8d
    module procedure save_array_binary_8d_double, save_array_binary_8d_int, save_array_binary_8d_logical
    end interface

    ! overload save_array_binary_9d subroutine
    interface save_array_binary_9d
    module procedure save_array_binary_9d_double, save_array_binary_9d_int, save_array_binary_9d_logical
    end interface

    ! overload read_scalar_binary subroutine
    interface read_scalar_binary
    module procedure read_scalar_binary_double, read_scalar_binary_int, read_scalar_binary_logical
    end interface

    ! overload read_array_binary_1d subroutine
    interface read_array_binary_1d
    module procedure read_array_binary_1d_double, read_array_binary_1d_int, read_array_binary_1d_logical
    end interface

    ! overload read_array_binary_2d subroutine
    interface read_array_binary_2d
    module procedure read_array_binary_2d_double, read_array_binary_2d_int, read_array_binary_2d_logical
    end interface

    ! overload read_array_binary_3d subroutine
    interface read_array_binary_3d
    module procedure read_array_binary_3d_double, read_array_binary_3d_int, read_array_binary_3d_logical
    end interface

    ! overload read_array_binary_4d subroutine
    interface read_array_binary_4d
    module procedure read_array_binary_4d_double, read_array_binary_4d_int, read_array_binary_4d_logical
    end interface

    ! overload read_array_binary_5d subroutine
    interface read_array_binary_5d
    module procedure read_array_binary_5d_double, read_array_binary_5d_int, read_array_binary_5d_logical
    end interface

    ! overload read_array_binary_6d subroutine
    interface read_array_binary_6d
    module procedure read_array_binary_6d_double, read_array_binary_6d_int, read_array_binary_6d_logical
    end interface

    ! overload read_array_binary_7d subroutine
    interface read_array_binary_7d
    module procedure read_array_binary_7d_double, read_array_binary_7d_int, read_array_binary_7d_logical
    end interface

    ! overload read_array_binary_8d subroutine
    interface read_array_binary_8d
    module procedure read_array_binary_8d_double, read_array_binary_8d_int, read_array_binary_8d_logical
    end interface

    ! overload read_array_binary_9d subroutine
    interface read_array_binary_9d
    module procedure read_array_binary_9d_double, read_array_binary_9d_int, read_array_binary_9d_logical
    end interface

    contains

    !**************************************************************************
    ! subroutine open_data_file
    !**************************************************************************
    ! choose any integer for out_unit > 0, except 6
    subroutine open_data_file(out_unit, filename)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: filename

    open (unit=out_unit,file=filename,action="write",status="replace")

    end subroutine open_data_file

    !**************************************************************************
    ! subroutine close_data_file
    !**************************************************************************
    subroutine close_data_file(out_unit)
    integer, intent(in) :: out_unit

    close (out_unit)

    end subroutine close_data_file

    !**************************************************************************
    ! subroutine open_binary_data_file
    !**************************************************************************
    ! choose any integer for out_unit > 0, except 6
    subroutine open_binary_data_file(out_unit, filename)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: filename

    open (unit=out_unit,file=filename,action="write",status="replace",form="unformatted")

    end subroutine open_binary_data_file

    !**************************************************************************
    ! subroutine open_binary_data_file_read
    !**************************************************************************
    ! choose any integer for out_unit > 0, except 6
    subroutine open_binary_data_file_read(out_unit, filename)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: filename

    !https://stackoverflow.com/questions/19464417/reading-strings-from-unformatted-files-variable-record-length
    open (unit=out_unit,file=filename,action="read",access="stream")

    end subroutine open_binary_data_file_read

    !**************************************************************************
    ! subroutine close_data_file
    !**************************************************************************
    subroutine close_binary_data_file(out_unit)
    integer, intent(in) :: out_unit

    close (out_unit)

    end subroutine close_binary_data_file

    !**************************************************************************
    ! subroutine save_scalar_csv_double
    !**************************************************************************
    subroutine save_scalar_csv_double( id, name, val )
    integer, intent(in) :: id
    character(len=*), intent(in) :: name
    real(dp), intent(in) :: val

    ! save value to file
    write(unit=id, fmt='(A, ", ")',advance='no') name
    write(unit=id, fmt='(G0)') val

    end subroutine save_scalar_csv_double

    !**************************************************************************
    ! subroutine save_scalar_csv_int
    !**************************************************************************
    subroutine save_scalar_csv_int( id, name, val )
    integer, intent(in) :: id
    character(len=*), intent(in) :: name
    integer, intent(in) :: val

    ! save value to file
    write(unit=id, fmt='(A, ", ")',advance='no') name
    write(unit=id, fmt='(I0)') val

    end subroutine save_scalar_csv_int

    !**************************************************************************
    ! subroutine save_scalar_csv_logical
    !**************************************************************************
    subroutine save_scalar_csv_logical(id, name, val)
    integer, intent(in) :: id
    character(len=*), intent(in) :: name
    logical, intent(in) :: val

    integer :: val_out

    ! convert value to integer
    if (val) then
        val_out = 1
    else
        val_out = 0
    end if

    ! save value to file
    write(unit=id, fmt='(A, ", ")',advance='no') name
    write(unit=id, fmt='(I0)') val_out

    end subroutine save_scalar_csv_logical

    !**************************************************************************
    ! subroutine save_vector_csv_double
    !**************************************************************************
    subroutine save_vector_csv_double( id, name, vals )
    integer, intent(in) :: id
    character(len=*), intent(in) :: name
    real(dp), dimension(:), intent(in) :: vals

    integer :: i, n

    ! get number of elements
    n = size(vals, dim=1)

    ! save name
    write(unit=id, fmt='(A, ", ")',advance='no') name

    ! then save values, all on the same row
    do i = 1,n-1
        write(unit=id, fmt='(G0, ", ")',advance='no') vals(i)
    end do
    ! save last element
    write(unit=id, fmt='(G0)') vals(n)

    end subroutine save_vector_csv_double

    !**************************************************************************
    ! subroutine save_vector_csv_int
    !**************************************************************************
    subroutine save_vector_csv_int( id, name, vals )
    integer, intent(in) :: id
    character(len=*), intent(in) :: name
    integer, dimension(:), intent(in) :: vals

    integer :: i, n

    ! get number of elements
    n = size(vals, dim=1)

    ! save name
    write(unit=id, fmt='(A, ", ")',advance='no') name

    ! then save values, all on the same row
    do i = 1,n-1
        write(unit=id, fmt='(I0, ", ")',advance='no') vals(i)
    end do
    ! save last element
    write(unit=id, fmt='(I0)') vals(n)

    end subroutine save_vector_csv_int

    !**************************************************************************
    ! subroutine save_vector_csv_logical
    !**************************************************************************
    subroutine save_vector_csv_logical( id, name, vals )
    integer, intent(in) :: id
    character(len=*), intent(in) :: name
    logical, dimension(:), intent(in) :: vals

    integer :: i, n
    integer, dimension(:), allocatable :: vals_int

    ! get number of elements
    n = size(vals, dim=1)

    ! allocate memory for vals_int
    allocate( vals_int(n) )

    ! convert vals to integers
    do i = 1,n
        vals_int(i) = MERGE(1, 0, vals(i))
    end do

    ! use integer routine
    call save_vector_csv_int( id, name, vals_int )

    end subroutine save_vector_csv_logical

    !**************************************************************************
    ! subroutine save_scalar_double
    !**************************************************************************
    subroutine save_scalar_double(out_unit, name, val)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    real(dp), intent(in) :: val

    ! record details of variable
    ! name, # of dimensions, 1 x 1 array (i.e., scalar)
    write (out_unit,*) name, " 2 1 1"

    ! save value to file
    write (out_unit,*) val

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_scalar_double

    !**************************************************************************
    ! subroutine save_scalar_int
    !**************************************************************************
    subroutine save_scalar_int(out_unit, name, val)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: val

    ! record details of variable
    ! name, # of dimensions, 1 x 1 array (i.e., scalar)
    write (out_unit,*) name, " 2 1 1"

    ! save value to file
    write (out_unit,*) val

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_scalar_int

    !**************************************************************************
    ! subroutine save_scalar_logical
    !**************************************************************************
    subroutine save_scalar_logical(out_unit, name, val)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    logical, intent(in) :: val
    integer :: val_out

    ! convert value to integer
    if (val) then
        val_out = 1
    else
        val_out = 0
    end if

    ! record details of variable
    ! name, # of dimensions, 1 x 1 array (i.e., scalar)
    write (out_unit,*) name, " 2 1 1"

    ! save value to file
    write (out_unit,*) val_out

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_scalar_logical

    !**************************************************************************
    ! subroutine save_array_1d_double
    !**************************************************************************
    subroutine save_array_1d_double(out_unit, name, n, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n
    real(dp), dimension(n), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n x 1 vector
    write (out_unit,*) name, " 2 ", n, " 1"

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_1d_double

    !**************************************************************************
    ! subroutine save_array_1d_int
    !**************************************************************************
    subroutine save_array_1d_int(out_unit, name, n, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n
    integer, dimension(n), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n x 1 vector
    write (out_unit,*) name, " 2 ", n, " 1"

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_1d_int

    !**************************************************************************
    ! subroutine save_array_1d_logical
    !**************************************************************************
    subroutine save_array_1d_logical(out_unit, name, n, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n
    logical, dimension(n), intent(in) :: vals

    integer, allocatable, dimension(:) :: vals_out
    integer :: i

    allocate (vals_out(n))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    !where ( vals )
    !    vals_out = 1
    !elsewhere
    !    vals_out = 0
    !end where

    ! convert to integers
    do i = 1,n
        if (vals(i)) then
            vals_out(i) = 1
        else
            vals_out(i) = 0
        end if
    end do

    ! record details of variable
    ! name, # of dimensions, n x 1 vector
    write (out_unit,*) name, " 2 ", n, " 1"

    ! save array to file
    write (out_unit,*) vals_out

    ! add an extra space
    write (out_unit,*) ""

    deallocate (vals_out)

    end subroutine save_array_1d_logical

    !**************************************************************************
    ! subroutine save_array_2d_double
    !**************************************************************************
    subroutine save_array_2d_double(out_unit, name, n1, n2, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, intent(in) :: n2
    real(dp), dimension(n1,n2), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n1 x n2 array
    write (out_unit,*) name, " 2 ", n1, n2

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_2d_double

    !**************************************************************************
    ! subroutine save_array_2d_int
    !**************************************************************************
    subroutine save_array_2d_int(out_unit, name, n1, n2, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, intent(in) :: n2
    integer, dimension(n1,n2), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n1 x n2 array
    write (out_unit,*) name, " 2 ", n1, n2

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_2d_int

    !**************************************************************************
    ! subroutine save_array_2d_logical
    !**************************************************************************
    subroutine save_array_2d_logical(out_unit, name, n1, n2, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, intent(in) :: n2
    logical, dimension(n1,n2), intent(in) :: vals

    integer, allocatable, dimension(:,:) :: vals_out
    integer :: i1,i2

    allocate (vals_out(n1,n2))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    !where ( vals )
    !    vals_out = 1
    !elsewhere
    !    vals_out = 0
    !end where

    ! convert to integers
    do i2 = 1,n2
        do i1 = 1,n1
            if (vals(i1,i2)) then
                vals_out(i1,i2) = 1
            else
                vals_out(i1,i2) = 0
            end if
        end do
    end do

    ! record details of variable
    ! name, # of dimensions, n1 x n2 array
    write (out_unit,*) name, " 2 ", n1, n2

    ! save array to file
    write (out_unit,*) vals_out

    ! add an extra space
    write (out_unit,*) ""

    deallocate (vals_out)

    end subroutine save_array_2d_logical

    !**************************************************************************
    ! subroutine save_array_3d_double
    !**************************************************************************
    subroutine save_array_3d_double(out_unit, name, n1, n2, n3, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, intent(in) :: n2
    integer, intent(in) :: n3
    real(dp), dimension(n1,n2,n3), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 array
    write (out_unit,*) name, " 3 ", n1, n2, n3

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_3d_double

    !**************************************************************************
    ! subroutine save_array_3d_int
    !**************************************************************************
    subroutine save_array_3d_int(out_unit, name, n1, n2, n3, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, intent(in) :: n2
    integer, intent(in) :: n3
    integer, dimension(n1,n2,n3), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 array
    write (out_unit,*) name, " 3 ", n1, n2, n3

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_3d_int

    !**************************************************************************
    ! subroutine save_array_3d_logical
    !**************************************************************************
    subroutine save_array_3d_logical(out_unit, name, n1, n2, n3, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, intent(in) :: n2
    integer, intent(in) :: n3
    logical, dimension(n1,n2,n3), intent(in) :: vals

    integer, allocatable, dimension(:,:,:) :: vals_out
    integer :: i1,i2,i3

    allocate (vals_out(n1,n2,n3))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    !where ( vals )
    !    vals_out = 1
    !elsewhere
    !    vals_out = 0
    !end where

    ! convert to integers
    do i3 = 1,n3
        do i2 = 1,n2
            do i1 = 1,n1
                if (vals(i1,i2,i3)) then
                    vals_out(i1,i2,i3) = 1
                else
                    vals_out(i1,i2,i3) = 0
                end if
            end do
        end do
    end do

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 array
    write (out_unit,*) name, " 3 ", n1, n2, n3

    ! save array to file
    write (out_unit,*) vals_out

    ! add an extra space
    write (out_unit,*) ""

    deallocate (vals_out)

    end subroutine save_array_3d_logical

    !**************************************************************************
    ! subroutine save_array_4d_double
    !**************************************************************************
    subroutine save_array_4d_double(out_unit, name, n1, n2, n3, n4, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, intent(in) :: n2
    integer, intent(in) :: n3
    integer, intent(in) :: n4
    real(dp), dimension(n1,n2,n3,n4), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 x n4 array
    write (out_unit,*) name, " 4 ", n1, n2, n3, n4

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_4d_double

    !**************************************************************************
    ! subroutine save_array_4d_int
    !**************************************************************************
    subroutine save_array_4d_int(out_unit, name, n1, n2, n3, n4, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, intent(in) :: n2
    integer, intent(in) :: n3
    integer, intent(in) :: n4
    integer, dimension(n1,n2,n3,n4), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 x n4 array
    write (out_unit,*) name, " 4 ", n1, n2, n3, n4

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_4d_int

    !**************************************************************************
    ! subroutine save_array_4d_logical
    !**************************************************************************
    subroutine save_array_4d_logical(out_unit, name, n1, n2, n3, n4, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, intent(in) :: n2
    integer, intent(in) :: n3
    integer, intent(in) :: n4
    logical, dimension(n1,n2,n3,n4), intent(in) :: vals

    integer, allocatable, dimension(:,:,:,:) :: vals_out
    integer :: i1,i2,i3,i4

    allocate (vals_out(n1,n2,n3,n4))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    !where ( vals )
    !    vals_out = 1
    !elsewhere
    !    vals_out = 0
    !end where

    ! convert to integers
    do i4 = 1,n4
        do i3 = 1,n3
            do i2 = 1,n2
                do i1 = 1,n1
                    if (vals(i1,i2,i3,i4)) then
                        vals_out(i1,i2,i3,i4) = 1
                    else
                        vals_out(i1,i2,i3,i4) = 0
                    end if
                end do
            end do
        end do
    end do

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 x n4 array
    write (out_unit,*) name, " 4 ", n1, n2, n3, n4

    ! save array to file
    write (out_unit,*) vals_out

    ! add an extra space
    write (out_unit,*) ""

    deallocate (vals_out)

    end subroutine save_array_4d_logical

    !**************************************************************************
    ! subroutine save_array_5d_double
    !**************************************************************************
    subroutine save_array_5d_double(out_unit, name, n1, n2, n3, n4, n5, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5
    real(dp), dimension(n1,n2,n3,n4,n5), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 x n4 x n5 array
    write (out_unit,*) name, " 5 ", n1, n2, n3, n4, n5

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_5d_double

    !**************************************************************************
    ! subroutine save_array_5d_int
    !**************************************************************************
    subroutine save_array_5d_int(out_unit, name, n1, n2, n3, n4, n5, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5
    integer, dimension(n1,n2,n3,n4,n5), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 x n4 x n5 array
    write (out_unit,*) name, " 5 ", n1, n2, n3, n4, n5

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_5d_int

    !**************************************************************************
    ! subroutine save_array_5d_logical
    !**************************************************************************
    subroutine save_array_5d_logical(out_unit, name, n1, n2, n3, n4, n5, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5
    logical, dimension(n1,n2,n3,n4,n5), intent(in) :: vals

    integer, allocatable, dimension(:,:,:,:,:) :: vals_out
    integer :: i1,i2,i3,i4,i5

    allocate (vals_out(n1,n2,n3,n4,n5))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    !where ( vals )
    !    vals_out = 1
    !elsewhere
    !    vals_out = 0
    !end where

    ! convert to integers
    do i5 = 1,n5
        do i4 = 1,n4
            do i3 = 1,n3
                do i2 = 1,n2
                    do i1 = 1,n1
                        if (vals(i1,i2,i3,i4,i5)) then
                            vals_out(i1,i2,i3,i4,i5) = 1
                        else
                            vals_out(i1,i2,i3,i4,i5) = 0
                        end if
                    end do
                end do
            end do
        end do
    end do

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 x n4 x n5 array
    write (out_unit,*) name, " 5 ", n1, n2, n3, n4, n5

    ! save array to file
    write (out_unit,*) vals_out

    ! add an extra space
    write (out_unit,*) ""

    deallocate (vals_out)

    end subroutine save_array_5d_logical

    !**************************************************************************
    ! subroutine save_array_6d_double
    !**************************************************************************
    subroutine save_array_6d_double(out_unit, name, n1, n2, n3, n4, n5, n6, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6
    real(dp), dimension(n1,n2,n3,n4,n5,n6), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 x n4 x n5 x n6 array
    write (out_unit,*) name, " 6 ", n1, n2, n3, n4, n5, n6

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_6d_double

    !**************************************************************************
    ! subroutine save_array_6d_int
    !**************************************************************************
    subroutine save_array_6d_int(out_unit, name, n1, n2, n3, n4, n5, n6, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6
    integer, dimension(n1,n2,n3,n4,n5,n6), intent(in) :: vals

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 x n4 x n5 x n6 array
    write (out_unit,*) name, " 6 ", n1, n2, n3, n4, n5, n6

    ! save array to file
    write (out_unit,*) vals

    ! add an extra space
    write (out_unit,*) ""

    end subroutine save_array_6d_int

    !**************************************************************************
    ! subroutine save_array_6d_logical
    !**************************************************************************
    subroutine save_array_6d_logical(out_unit, name, n1, n2, n3, n4, n5, n6, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6
    logical, dimension(n1,n2,n3,n4,n5,n6), intent(in) :: vals

    integer, allocatable, dimension(:,:,:,:,:,:) :: vals_out
    integer :: i1,i2,i3,i4,i5,i6

    allocate (vals_out(n1,n2,n3,n4,n5,n6))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    !where ( vals )
    !    vals_out = 1
    !elsewhere
    !    vals_out = 0
    !end where

    ! convert to integers
    do i6 = 1,n6
        do i5 = 1,n5
            do i4 = 1,n4
                do i3 = 1,n3
                    do i2 = 1,n2
                        do i1 = 1,n1
                            if (vals(i1,i2,i3,i4,i5,i6)) then
                                vals_out(i1,i2,i3,i4,i5,i6) = 1
                            else
                                vals_out(i1,i2,i3,i4,i5,i6) = 0
                            end if
                        end do
                    end do
                end do
            end do
        end do
    end do

    ! record details of variable
    ! name, # of dimensions, n1 x n2 x n3 x n4 x n5 x n6 array
    write (out_unit,*) name, " 6 ", n1, n2, n3, n4, n5, n6

    ! save array to file
    write (out_unit,*) vals_out

    ! add an extra space
    write (out_unit,*) ""

    deallocate (vals_out)

    end subroutine save_array_6d_logical

    !**************************************************************************
    ! subroutine save_scalar_binary_double
    !**************************************************************************
    subroutine save_scalar_binary_double(out_unit, name, val)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    real(dp), intent(in) :: val

    integer :: ndim, n1, n2

    ndim = 2
    n1 = 1
    n2 = 1

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 array (where n2 = 1)
    write(out_unit) n1, n2

    ! save data
    write(out_unit) val

    end subroutine save_scalar_binary_double

    !**************************************************************************
    ! subroutine save_scalar_binary_int
    !**************************************************************************
    subroutine save_scalar_binary_int(out_unit, name, val)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: val

    integer :: ndim, n1, n2

    ndim = 2
    n1 = 1
    n2 = 1

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 array (where n2 = 1)
    write(out_unit) n1, n2

    ! save data
    write(out_unit) val

    end subroutine save_scalar_binary_int

    !**************************************************************************
    ! subroutine save_scalar_binary_logical
    !**************************************************************************
    subroutine save_scalar_binary_logical(out_unit, name, val)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    logical, intent(in) :: val

    integer :: val_out

    if (val) then
        val_out = 1
    else
        val_out = 0
    end if

    call save_scalar_binary_int(out_unit, name, val_out)

    end subroutine save_scalar_binary_logical

    !**************************************************************************
    ! subroutine save_array_binary_1d_double
    !**************************************************************************
    subroutine save_array_binary_1d_double(out_unit, name, n1, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    real(dp), dimension(n1), intent(in) :: vals

    integer :: ndim, n2

    ndim = 2
    n2 = 1

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 array (where n2 = 1)
    write(out_unit) n1, n2

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_1d_double

    !**************************************************************************
    ! subroutine save_array_binary_1d_int
    !**************************************************************************
    subroutine save_array_binary_1d_int(out_unit, name, n1, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, dimension(n1), intent(in) :: vals

    integer :: ndim, n2

    ndim = 2
    n2 = 1

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 array (where n2 = 1)
    write(out_unit) n1, n2

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_1d_int

    !**************************************************************************
    ! subroutine save_array_binary_1d_logical
    !**************************************************************************
    subroutine save_array_binary_1d_logical(out_unit, name, n1, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    logical, dimension(n1), intent(in) :: vals

    integer, allocatable, dimension(:) :: vals_out
    integer :: i1

    allocate (vals_out(n1))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    ! use loop instead to convert to integer

    do i1 = 1,n1
        if (vals(i1)) then
            vals_out(i1) = 1
        else
            vals_out(i1) = 0
        end if
    end do

    ! use underlying integer routine
    call save_array_binary_1d_int(out_unit, name, n1, vals_out)

    deallocate (vals_out)

    end subroutine save_array_binary_1d_logical

    !**************************************************************************
    ! subroutine save_array_binary_2d_double
    !**************************************************************************
    subroutine save_array_binary_2d_double(out_unit, name, n1, n2, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2
    real(dp), dimension(n1,n2), intent(in) :: vals

    integer :: ndim

    ndim = 2

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 array
    write(out_unit) n1, n2

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_2d_double

    !**************************************************************************
    ! subroutine save_array_binary_2d_int
    !**************************************************************************
    subroutine save_array_binary_2d_int(out_unit, name, n1, n2, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1
    integer, intent(in) :: n2
    integer, dimension(n1,n2), intent(in) :: vals

    integer :: ndim

    ndim = 2

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 array
    write(out_unit) n1, n2

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_2d_int

    !**************************************************************************
    ! subroutine save_array_binary_2d_logical
    !**************************************************************************
    subroutine save_array_binary_2d_logical(out_unit, name, n1, n2, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2
    logical, dimension(n1,n2), intent(in) :: vals

    integer, allocatable, dimension(:,:) :: vals_out
    integer :: i1, i2

    allocate (vals_out(n1,n2))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    ! use loop instead to convert to integer

    do i2 = 1,n2
        do i1 = 1,n1
            if (vals(i1,i2)) then
                vals_out(i1,i2) = 1
            else
                vals_out(i1,i2) = 0
            end if
        end do
    end do

    ! use underlying integer routine
    call save_array_binary_2d_int(out_unit, name, n1, n2, vals_out)

    deallocate (vals_out)

    end subroutine save_array_binary_2d_logical

    !**************************************************************************
    ! subroutine save_array_binary_3d_double
    !**************************************************************************
    subroutine save_array_binary_3d_double(out_unit, name, n1, n2, n3, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3
    real(dp), dimension(n1,n2,n3), intent(in) :: vals

    integer :: ndim

    ndim = 3

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 array
    write(out_unit) n1, n2, n3

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_3d_double

    !**************************************************************************
    ! subroutine save_array_binary_3d_int
    !**************************************************************************
    subroutine save_array_binary_3d_int(out_unit, name, n1, n2, n3, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3
    integer, dimension(n1,n2,n3), intent(in) :: vals

    integer :: ndim

    ndim = 3

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 array
    write(out_unit) n1, n2, n3

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_3d_int

    !**************************************************************************
    ! subroutine save_array_binary_3d_logical
    !**************************************************************************
    subroutine save_array_binary_3d_logical(out_unit, name, n1, n2, n3, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3
    logical, dimension(n1,n2,n3), intent(in) :: vals

    integer, allocatable, dimension(:,:,:) :: vals_out
    integer :: i1, i2, i3

    allocate (vals_out(n1,n2,n3))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    ! use loop instead to convert to integer

    do i3 = 1,n3
        do i2 = 1,n2
            do i1 = 1,n1
                if (vals(i1,i2,i3)) then
                    vals_out(i1,i2,i3) = 1
                else
                    vals_out(i1,i2,i3) = 0
                end if
            end do
        end do
    end do

    ! use underlying integer routine
    call save_array_binary_3d_int(out_unit, name, n1, n2, n3, vals_out)

    deallocate (vals_out)

    end subroutine save_array_binary_3d_logical

    !**************************************************************************
    ! subroutine save_array_binary_4d_double
    !**************************************************************************
    subroutine save_array_binary_4d_double(out_unit, name, n1, n2, n3, n4, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4
    real(dp), dimension(n1,n2,n3,n4), intent(in) :: vals

    integer :: ndim

    ndim = 4

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 array
    write(out_unit) n1, n2, n3, n4

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_4d_double

    !**************************************************************************
    ! subroutine save_array_binary_4d_int
    !**************************************************************************
    subroutine save_array_binary_4d_int(out_unit, name, n1, n2, n3, n4, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4
    integer, dimension(n1,n2,n3,n4), intent(in) :: vals

    integer :: ndim

    ndim = 4

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 array
    write(out_unit) n1, n2, n3, n4

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_4d_int

    !**************************************************************************
    ! subroutine save_array_binary_4d_logical
    !**************************************************************************
    subroutine save_array_binary_4d_logical(out_unit, name, n1, n2, n3, n4, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4
    logical, dimension(n1,n2,n3,n4), intent(in) :: vals

    integer, allocatable, dimension(:,:,:,:) :: vals_out
    integer :: i1, i2, i3, i4

    allocate (vals_out(n1,n2,n3,n4))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    ! use loop instead to convert to integer

    do i4 = 1,n4
        do i3 = 1,n3
            do i2 = 1,n2
                do i1 = 1,n1
                    if (vals(i1,i2,i3,i4)) then
                        vals_out(i1,i2,i3,i4) = 1
                    else
                        vals_out(i1,i2,i3,i4) = 0
                    end if
                end do
            end do
        end do
    end do

    ! use underlying integer routine
    call save_array_binary_4d_int(out_unit, name, n1, n2, n3, n4, vals_out)

    deallocate (vals_out)

    end subroutine save_array_binary_4d_logical

    !**************************************************************************
    ! subroutine save_array_binary_5d_double
    !**************************************************************************
    subroutine save_array_binary_5d_double(out_unit, name, n1, n2, n3, n4, n5, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5
    real(dp), dimension(n1,n2,n3,n4,n5), intent(in) :: vals

    integer :: ndim

    ndim = 5

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 x n5 array
    write(out_unit) n1, n2, n3, n4, n5

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_5d_double

    !**************************************************************************
    ! subroutine save_array_binary_5d_int
    !**************************************************************************
    subroutine save_array_binary_5d_int(out_unit, name, n1, n2, n3, n4, n5, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5
    integer, dimension(n1,n2,n3,n4,n5), intent(in) :: vals

    integer :: ndim

    ndim = 5

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 x n5 array
    write(out_unit) n1, n2, n3, n4, n5

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_5d_int

    !**************************************************************************
    ! subroutine save_array_binary_5d_logical
    !**************************************************************************
    subroutine save_array_binary_5d_logical(out_unit, name, n1, n2, n3, n4, n5, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5
    logical, dimension(n1,n2,n3,n4,n5), intent(in) :: vals

    integer, allocatable, dimension(:,:,:,:,:) :: vals_out
    integer :: i1, i2, i3, i4, i5

    allocate (vals_out(n1,n2,n3,n4,n5))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    ! use loop instead to convert to integer

    do i5 = 1,n5
        do i4 = 1,n4
            do i3 = 1,n3
                do i2 = 1,n2
                    do i1 = 1,n1
                        if (vals(i1,i2,i3,i4,i5)) then
                            vals_out(i1,i2,i3,i4,i5) = 1
                        else
                            vals_out(i1,i2,i3,i4,i5) = 0
                        end if
                    end do
                end do
            end do
        end do
    end do

    ! use underlying integer routine
    call save_array_binary_5d_int(out_unit, name, n1, n2, n3, n4, n5, vals_out)

    deallocate (vals_out)

    end subroutine save_array_binary_5d_logical

    !**************************************************************************
    ! subroutine save_array_binary_6d_double
    !**************************************************************************
    subroutine save_array_binary_6d_double(out_unit, name, n1, n2, n3, n4, n5, n6, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6
    real(dp), dimension(n1,n2,n3,n4,n5,n6), intent(in) :: vals

    integer :: ndim

    ndim = 6

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 x n5 x n6 array
    write(out_unit) n1, n2, n3, n4, n5, n6

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_6d_double

    !**************************************************************************
    ! subroutine save_array_binary_6d_int
    !**************************************************************************
    subroutine save_array_binary_6d_int(out_unit, name, n1, n2, n3, n4, n5, n6, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6
    integer, dimension(n1,n2,n3,n4,n5,n6), intent(in) :: vals

    integer :: ndim

    ndim = 6

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 x n5 x n6 array
    write(out_unit) n1, n2, n3, n4, n5, n6

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_6d_int

    !**************************************************************************
    ! subroutine save_array_binary_6d_logical
    !**************************************************************************
    subroutine save_array_binary_6d_logical(out_unit, name, n1, n2, n3, n4, n5, n6, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6
    logical, dimension(n1,n2,n3,n4,n5,n6), intent(in) :: vals

    integer, allocatable, dimension(:,:,:,:,:,:) :: vals_out
    integer :: i1, i2, i3, i4, i5, i6

    allocate (vals_out(n1,n2,n3,n4,n5,n6))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    ! use loop instead to convert to integer

    do i6 = 1,n6
        do i5 = 1,n5
            do i4 = 1,n4
                do i3 = 1,n3
                    do i2 = 1,n2
                        do i1 = 1,n1
                            if (vals(i1,i2,i3,i4,i5,i6)) then
                                vals_out(i1,i2,i3,i4,i5,i6) = 1
                            else
                                vals_out(i1,i2,i3,i4,i5,i6) = 0
                            end if
                        end do
                    end do
                end do
            end do
        end do
    end do

    ! use underlying integer routine
    call save_array_binary_6d_int(out_unit, name, n1, n2, n3, n4, n5, n6, vals_out)

    deallocate (vals_out)

    end subroutine save_array_binary_6d_logical

    !**************************************************************************
    ! subroutine save_array_binary_7d_double
    !**************************************************************************
    subroutine save_array_binary_7d_double(out_unit, name, n1, n2, n3, n4, n5, n6, n7, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7
    real(dp), dimension(n1,n2,n3,n4,n5,n6,n7), intent(in) :: vals

    integer :: ndim

    ndim = 7

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 x n5 x n6 x n7 array
    write(out_unit) n1, n2, n3, n4, n5, n6, n7

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_7d_double

    !**************************************************************************
    ! subroutine save_array_binary_7d_int
    !**************************************************************************
    subroutine save_array_binary_7d_int(out_unit, name, n1, n2, n3, n4, n5, n6, n7, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7
    integer, dimension(n1,n2,n3,n4,n5,n6,n7), intent(in) :: vals

    integer :: ndim

    ndim = 7

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 x n5 x n6 x n7 array
    write(out_unit) n1, n2, n3, n4, n5, n6, n7

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_7d_int

    !**************************************************************************
    ! subroutine save_array_binary_7d_logical
    !**************************************************************************
    subroutine save_array_binary_7d_logical(out_unit, name, n1, n2, n3, n4, n5, n6, n7, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7
    logical, dimension(n1,n2,n3,n4,n5,n6,n7), intent(in) :: vals

    integer, allocatable, dimension(:,:,:,:,:,:,:) :: vals_out
    integer :: i1, i2, i3, i4, i5, i6, i7

    allocate (vals_out(n1,n2,n3,n4,n5,n6,n7))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    ! use loop instead to convert to integer

    do i7 = 1,n7
        do i6 = 1,n6
            do i5 = 1,n5
                do i4 = 1,n4
                    do i3 = 1,n3
                        do i2 = 1,n2
                            do i1 = 1,n1
                                if (vals(i1,i2,i3,i4,i5,i6,i7)) then
                                    vals_out(i1,i2,i3,i4,i5,i6,i7) = 1
                                else
                                    vals_out(i1,i2,i3,i4,i5,i6,i7) = 0
                                end if
                            end do
                        end do
                    end do
                end do
            end do
        end do
    end do

    ! use underlying integer routine
    call save_array_binary_7d_int(out_unit, name, n1, n2, n3, n4, n5, n6, n7, vals_out)

    deallocate (vals_out)

    end subroutine save_array_binary_7d_logical

    !**************************************************************************
    ! subroutine save_array_binary_8d_double
    !**************************************************************************
    subroutine save_array_binary_8d_double(out_unit, name, &
        n1, n2, n3, n4, n5, n6, n7, n8, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8
    real(dp), dimension(n1,n2,n3,n4,n5,n6,n7,n8), intent(in) :: vals

    integer :: ndim

    ndim = 8

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 x n5 x n6 x n7 x n8 array
    write(out_unit) n1, n2, n3, n4, n5, n6, n7, n8

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_8d_double

    !**************************************************************************
    ! subroutine save_array_binary_8d_int
    !**************************************************************************
    subroutine save_array_binary_8d_int(out_unit, name, &
        n1, n2, n3, n4, n5, n6, n7, n8, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8
    integer, dimension(n1,n2,n3,n4,n5,n6,n7,n8), intent(in) :: vals

    integer :: ndim

    ndim = 8

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 x n5 x n6 x n7 x n8 array
    write(out_unit) n1, n2, n3, n4, n5, n6, n7, n8

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_8d_int

    !**************************************************************************
    ! subroutine save_array_binary_8d_logical
    !**************************************************************************
    subroutine save_array_binary_8d_logical(out_unit, name, &
        n1, n2, n3, n4, n5, n6, n7, n8, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8
    logical, dimension(n1,n2,n3,n4,n5,n6,n7,n8), intent(in) :: vals

    integer, allocatable, dimension(:,:,:,:,:,:,:,:) :: vals_out
    integer :: i1, i2, i3, i4, i5, i6, i7, i8

    allocate (vals_out(n1,n2,n3,n4,n5,n6,n7,n8))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    ! use loop instead to convert to integer

    do i8 = 1,n8
        do i7 = 1,n7
            do i6 = 1,n6
                do i5 = 1,n5
                    do i4 = 1,n4
                        do i3 = 1,n3
                            do i2 = 1,n2
                                do i1 = 1,n1
                                    if (vals(i1,i2,i3,i4,i5,i6,i7,i8)) then
                                        vals_out(i1,i2,i3,i4,i5,i6,i7,i8) = 1
                                    else
                                        vals_out(i1,i2,i3,i4,i5,i6,i7,i8) = 0
                                    end if
                                end do
                            end do
                        end do
                    end do
                end do
            end do
        end do
    end do

    ! use underlying integer routine
    call save_array_binary_8d_int(out_unit,name,n1,n2,n3,n4,n5,n6,n7,n8,vals_out)

    deallocate (vals_out)

    end subroutine save_array_binary_8d_logical

    !**************************************************************************
    ! subroutine save_array_binary_9d_double
    !**************************************************************************
    subroutine save_array_binary_9d_double(out_unit, name, &
        n1, n2, n3, n4, n5, n6, n7, n8, n9, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8, n9
    real(dp), dimension(n1,n2,n3,n4,n5,n6,n7,n8,n9), intent(in) :: vals

    integer :: ndim

    ndim = 9

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 x n5 x n6 x n7 x n8 x n9 array
    write(out_unit) n1, n2, n3, n4, n5, n6, n7, n8, n9

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_9d_double

    !**************************************************************************
    ! subroutine save_array_binary_9d_int
    !**************************************************************************
    subroutine save_array_binary_9d_int(out_unit, name, &
        n1, n2, n3, n4, n5, n6, n7, n8, n9, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8, n9
    integer, dimension(n1,n2,n3,n4,n5,n6,n7,n8,n9), intent(in) :: vals

    integer :: ndim

    ndim = 9

    ! record details of variable
    ! name, # of dimensions
    write(out_unit) name, ndim

    ! n1 x n2 x n3 x n4 x n5 x n6 x n7 x n8 x n9 array
    write(out_unit) n1, n2, n3, n4, n5, n6, n7, n8, n9

    ! save data
    write(out_unit) vals

    end subroutine save_array_binary_9d_int

    !**************************************************************************
    ! subroutine save_array_binary_9d_logical
    !**************************************************************************
    subroutine save_array_binary_9d_logical(out_unit, name, &
        n1, n2, n3, n4, n5, n6, n7, n8, n9, vals)
    integer, intent(in) :: out_unit
    character(len=*), intent(in) :: name
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8, n9
    logical, dimension(n1,n2,n3,n4,n5,n6,n7,n8,n9), intent(in) :: vals

    integer, allocatable, dimension(:,:,:,:,:,:,:,:,:) :: vals_out
    integer :: i1, i2, i3, i4, i5, i6, i7, i8, i9

    allocate (vals_out(n1,n2,n3,n4,n5,n6,n7,n8,n9))

    ! where construct can cause stack overflow
    ! if the compiler creates an array temporary
    ! and places it on the stack
    ! use loop instead to convert to integer

    do i9 = 1,n9
        do i8 = 1,n8
            do i7 = 1,n7
                do i6 = 1,n6
                    do i5 = 1,n5
                        do i4 = 1,n4
                            do i3 = 1,n3
                                do i2 = 1,n2
                                    do i1 = 1,n1
                                        if (vals(i1,i2,i3,i4,i5,i6,i7,i8,i9)) then
                                            vals_out(i1,i2,i3,i4,i5,i6,i7,i8,i9) = 1
                                        else
                                            vals_out(i1,i2,i3,i4,i5,i6,i7,i8,i9) = 0
                                        end if
                                    end do
                                end do
                            end do
                        end do
                    end do
                end do
            end do
        end do
    end do

    ! use underlying integer routine
    call save_array_binary_9d_int(out_unit,name,n1,n2,n3,n4,n5,n6,n7,n8,n9,vals_out)

    deallocate (vals_out)

    end subroutine save_array_binary_9d_logical

    !**************************************************************************
    ! subroutine read_header2_binary
    !**************************************************************************
    subroutine read_header2_binary(out_unit, name, ndim, n1, n2)
    integer, intent(in) :: out_unit
    character(len=*), intent(out) :: name
    integer, intent(out) :: ndim, n1, n2

    integer(int32) :: hr1, hr2, nc

    ! get record at start of string
    read(out_unit) hr1
    ! determine length of name
    nc = hr1 - 4
    read(out_unit) name(1:nc), ndim
    read(out_unit) hr2
    ! hr1 should equal hr2

    ! drop trailing characters
    name = name(1:nc)

    ! get n1 and n2
    read(out_unit) hr1
    read(out_unit) n1, n2
    read(out_unit) hr2

    end subroutine read_header2_binary

    !**************************************************************************
    ! subroutine read_header3_binary
    !**************************************************************************
    subroutine read_header3_binary(out_unit, name, ndim, n1, n2, n3)
    integer, intent(in) :: out_unit
    character(len=*), intent(out) :: name
    integer, intent(out) :: ndim, n1, n2, n3

    integer(int32) :: hr1, hr2, nc

    ! get record at start of string
    read(out_unit) hr1
    ! determine length of name
    nc = hr1 - 4
    read(out_unit) name(1:nc), ndim
    read(out_unit) hr2
    ! hr1 should equal hr2

    ! drop trailing characters
    name = name(1:nc)

    ! get dimensions
    read(out_unit) hr1
    read(out_unit) n1, n2, n3
    read(out_unit) hr2

    end subroutine read_header3_binary

    !**************************************************************************
    ! subroutine read_header4_binary
    !**************************************************************************
    subroutine read_header4_binary(out_unit, name, ndim, n1, n2, n3, n4)
    integer, intent(in) :: out_unit
    character(len=*), intent(out) :: name
    integer, intent(out) :: ndim, n1, n2, n3, n4

    integer(int32) :: hr1, hr2, nc

    ! get record at start of string
    read(out_unit) hr1
    ! determine length of name
    nc = hr1 - 4
    read(out_unit) name(1:nc), ndim
    read(out_unit) hr2
    ! hr1 should equal hr2

    ! drop trailing characters
    name = name(1:nc)

    ! get dimensions
    read(out_unit) hr1
    read(out_unit) n1, n2, n3, n4
    read(out_unit) hr2

    end subroutine read_header4_binary

    !**************************************************************************
    ! subroutine read_header5_binary
    !**************************************************************************
    subroutine read_header5_binary(out_unit, name, ndim, n1, n2, n3, n4, n5)
    integer, intent(in) :: out_unit
    character(len=*), intent(out) :: name
    integer, intent(out) :: ndim, n1, n2, n3, n4, n5

    integer(int32) :: hr1, hr2, nc

    ! get record at start of string
    read(out_unit) hr1
    ! determine length of name
    nc = hr1 - 4
    read(out_unit) name(1:nc), ndim
    read(out_unit) hr2
    ! hr1 should equal hr2

    ! drop trailing characters
    name = name(1:nc)

    ! get dimensions
    read(out_unit) hr1
    read(out_unit) n1, n2, n3, n4, n5
    read(out_unit) hr2

    end subroutine read_header5_binary

    !**************************************************************************
    ! subroutine read_header6_binary
    !**************************************************************************
    subroutine read_header6_binary(out_unit, name, ndim, n1, n2, n3, n4, n5, n6)
    integer, intent(in) :: out_unit
    character(len=*), intent(out) :: name
    integer, intent(out) :: ndim, n1, n2, n3, n4, n5, n6

    integer(int32) :: hr1, hr2, nc

    ! get record at start of string
    read(out_unit) hr1
    ! determine length of name
    nc = hr1 - 4
    read(out_unit) name(1:nc), ndim
    read(out_unit) hr2
    ! hr1 should equal hr2

    ! drop trailing characters
    name = name(1:nc)

    ! get dimensions
    read(out_unit) hr1
    read(out_unit) n1, n2, n3, n4, n5, n6
    read(out_unit) hr2

    end subroutine read_header6_binary

    !**************************************************************************
    ! subroutine read_header7_binary
    !**************************************************************************
    subroutine read_header7_binary(out_unit, name, ndim, n1, n2, n3, n4, n5, n6, n7)
    integer, intent(in) :: out_unit
    character(len=*), intent(out) :: name
    integer, intent(out) :: ndim, n1, n2, n3, n4, n5, n6, n7

    integer(int32) :: hr1, hr2, nc

    ! get record at start of string
    read(out_unit) hr1
    ! determine length of name
    nc = hr1 - 4
    read(out_unit) name(1:nc), ndim
    read(out_unit) hr2
    ! hr1 should equal hr2

    ! drop trailing characters
    name = name(1:nc)

    ! get dimensions
    read(out_unit) hr1
    read(out_unit) n1, n2, n3, n4, n5, n6, n7
    read(out_unit) hr2

    end subroutine read_header7_binary

    !**************************************************************************
    ! subroutine read_header8_binary
    !**************************************************************************
    subroutine read_header8_binary(out_unit, name, ndim, &
        n1, n2, n3, n4, n5, n6, n7, n8)
    integer, intent(in) :: out_unit
    character(len=*), intent(out) :: name
    integer, intent(out) :: ndim, n1, n2, n3, n4, n5, n6, n7, n8

    integer(int32) :: hr1, hr2, nc

    ! get record at start of string
    read(out_unit) hr1
    ! determine length of name
    nc = hr1 - 4
    read(out_unit) name(1:nc), ndim
    read(out_unit) hr2
    ! hr1 should equal hr2

    ! drop trailing characters
    name = name(1:nc)

    ! get dimensions
    read(out_unit) hr1
    read(out_unit) n1, n2, n3, n4, n5, n6, n7, n8
    read(out_unit) hr2

    end subroutine read_header8_binary

    !**************************************************************************
    ! subroutine read_header9_binary
    !**************************************************************************
    subroutine read_header9_binary(out_unit, name, ndim, &
        n1, n2, n3, n4, n5, n6, n7, n8, n9)
    integer, intent(in) :: out_unit
    character(len=*), intent(out) :: name
    integer, intent(out) :: ndim, n1, n2, n3, n4, n5, n6, n7, n8, n9

    integer(int32) :: hr1, hr2, nc

    ! get record at start of string
    read(out_unit) hr1
    ! determine length of name
    nc = hr1 - 4
    read(out_unit) name(1:nc), ndim
    read(out_unit) hr2
    ! hr1 should equal hr2

    ! drop trailing characters
    name = name(1:nc)

    ! get dimensions
    read(out_unit) hr1
    read(out_unit) n1, n2, n3, n4, n5, n6, n7, n8, n9
    read(out_unit) hr2

    end subroutine read_header9_binary

    !**************************************************************************
    ! subroutine read_scalar_binary_double
    !**************************************************************************
    subroutine read_scalar_binary_double(out_unit, val)
    integer, intent(in) :: out_unit
    real(dp), intent(out) :: val

    character(len=100) :: name
    integer :: ndim, n1, n2, hr1, hr2
    logical :: dim_valid

    call read_header2_binary(out_unit, name, ndim, n1, n2)

    dim_valid = (ndim == 2 .and. n1 == 1 .and. n2 == 1)
    if ( .not. dim_valid ) then
        print *, "read_scalar_binary_double: invalid dimensions"
        print *, trim(name), ndim, n1, n2
    end if

    ! read data
    read(out_unit) hr1
    read(out_unit) val
    read(out_unit) hr2
    ! hr1 and hr2 should be 8

    end subroutine read_scalar_binary_double

    !**************************************************************************
    ! subroutine read_scalar_binary_int
    !**************************************************************************
    subroutine read_scalar_binary_int(out_unit, val)
    integer, intent(in) :: out_unit
    integer(int32), intent(out) :: val

    character(len=100) :: name
    integer :: ndim, n1, n2, hr1, hr2
    logical :: dim_valid

    call read_header2_binary(out_unit, name, ndim, n1, n2)

    dim_valid = (ndim == 2 .and. n1 == 1 .and. n2 == 1)
    if ( .not. dim_valid ) then
        print *, "read_scalar_binary_int: invalid dimensions"
        print *, trim(name), ndim, n1, n2
    end if

    ! read data
    read(out_unit) hr1
    read(out_unit) val
    read(out_unit) hr2
    ! hr1 and hr2 should be 4

    end subroutine read_scalar_binary_int

    !**************************************************************************
    ! subroutine read_scalar_binary_logical
    !**************************************************************************
    subroutine read_scalar_binary_logical(out_unit, val)
    integer, intent(in) :: out_unit
    logical, intent(out) :: val

    integer :: val_int

    ! read in as integer
    call read_scalar_binary_int(out_unit, val_int)

    ! convert to logical
    val = val_int > 0

    end subroutine read_scalar_binary_logical

    !**************************************************************************
    ! subroutine read_array_binary_1d_double
    !**************************************************************************
    subroutine read_array_binary_1d_double(out_unit, n, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n
    real(dp), dimension(n), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1, n2, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header2_binary(out_unit, name, ndim, n1, n2)

    dim_valid = (ndim == 2 .and. n1 == n .and. n2 == 1)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_1d_double: invalid dimensions"
        print *, trim(name), ndim, n1, n2
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n*8

    end subroutine read_array_binary_1d_double

    !**************************************************************************
    ! subroutine read_array_binary_1d_int
    !**************************************************************************
    subroutine read_array_binary_1d_int(out_unit, n, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n
    integer(int32), dimension(n), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1, n2, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header2_binary(out_unit, name, ndim, n1, n2)

    dim_valid = (ndim == 2 .and. n1 == n .and. n2 == 1)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_1d_int: invalid dimensions"
        print *, trim(name), ndim, n1, n2
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n*4

    end subroutine read_array_binary_1d_int

    !**************************************************************************
    ! subroutine read_array_binary_1d_logical
    !**************************************************************************
    subroutine read_array_binary_1d_logical(out_unit, n, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n
    logical, dimension(n), intent(out) :: vals

    integer :: i
    integer(int32), dimension(:), allocatable :: vals_int

    ! allocate memory
    allocate ( vals_int(n) )

    ! read data as integers
    call read_array_binary_1d_int(out_unit, n, vals_int)

    ! convert to logical array
    do i = 1,n
        vals(i) = vals_int(i) > 0
    end do

    end subroutine read_array_binary_1d_logical

    !**************************************************************************
    ! subroutine read_array_binary_2d_double
    !**************************************************************************
    subroutine read_array_binary_2d_double(out_unit, n1, n2, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2
    real(dp), dimension(n1,n2), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header2_binary(out_unit, name, ndim, n1_, n2_)

    dim_valid = (ndim == 2 .and. n1 == n1_ .and. n2 == n2_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_2d_double: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*8

    end subroutine read_array_binary_2d_double

    !**************************************************************************
    ! subroutine read_array_binary_2d_int
    !**************************************************************************
    subroutine read_array_binary_2d_int(out_unit, n1, n2, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2
    integer(int32), dimension(n1,n2), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header2_binary(out_unit, name, ndim, n1_, n2_)

    dim_valid = (ndim == 2 .and. n1 == n1_ .and. n2 == n2_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_2d_int: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*4

    end subroutine read_array_binary_2d_int

    !**************************************************************************
    ! subroutine read_array_binary_2d_logical
    !**************************************************************************
    subroutine read_array_binary_2d_logical(out_unit, n1, n2, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2
    logical, dimension(n1,n2), intent(out) :: vals

    integer :: i1,i2
    integer(int32), dimension(:,:), allocatable :: vals_int

    ! allocate memory
    allocate ( vals_int(n1,n2) )

    ! read data as integers
    call read_array_binary_2d_int(out_unit, n1, n2, vals_int)

    ! convert to logical array
    do i2 = 1,n2
        do i1 = 1,n1
            vals(i1,i2) = vals_int(i1,i2) > 0
        end do
    end do

    end subroutine read_array_binary_2d_logical

    !**************************************************************************
    ! subroutine read_array_binary_3d_double
    !**************************************************************************
    subroutine read_array_binary_3d_double(out_unit, n1, n2, n3, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3
    real(dp), dimension(n1,n2,n3), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header3_binary(out_unit, name, ndim, n1_, n2_, n3_)

    dim_valid = (ndim == 3 .and. n1 == n1_ .and. n2 == n2_ .and. n3 == n3_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_3d_double: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*8

    end subroutine read_array_binary_3d_double

    !**************************************************************************
    ! subroutine read_array_binary_3d_int
    !**************************************************************************
    subroutine read_array_binary_3d_int(out_unit, n1, n2, n3, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3
    integer(int32), dimension(n1,n2,n3), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header3_binary(out_unit, name, ndim, n1_, n2_, n3_)

    dim_valid = (ndim == 3 .and. n1 == n1_ .and. n2 == n2_ .and. n3 == n3_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_3d_int: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*4

    end subroutine read_array_binary_3d_int

    !**************************************************************************
    ! subroutine read_array_binary_3d_logical
    !**************************************************************************
    subroutine read_array_binary_3d_logical(out_unit, n1, n2, n3, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3
    logical, dimension(n1,n2,n3), intent(out) :: vals

    integer :: i1,i2,i3
    integer(int32), dimension(:,:,:), allocatable :: vals_int

    ! allocate memory
    allocate ( vals_int(n1,n2,n3) )

    ! read data as integers
    call read_array_binary_3d_int(out_unit, n1, n2, n3, vals_int)

    ! convert to logical array
    do i3 = 1,n3
        do i2 = 1,n2
            do i1 = 1,n1
                vals(i1,i2,i3) = vals_int(i1,i2,i3) > 0
            end do
        end do
    end do

    end subroutine read_array_binary_3d_logical

    !**************************************************************************
    ! subroutine read_array_binary_4d_double
    !**************************************************************************
    subroutine read_array_binary_4d_double(out_unit, n1, n2, n3, n4, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4
    real(dp), dimension(n1,n2,n3,n4), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header4_binary(out_unit, name, ndim, n1_, n2_, n3_, n4_)

    dim_valid = (ndim==4 .and. n1==n1_ .and. n2==n2_ .and. n3==n3_ .and. n4==n4_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_4d_double: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*8

    end subroutine read_array_binary_4d_double

    !**************************************************************************
    ! subroutine read_array_binary_4d_int
    !**************************************************************************
    subroutine read_array_binary_4d_int(out_unit, n1, n2, n3, n4, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4
    integer(int32), dimension(n1,n2,n3,n4), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header4_binary(out_unit, name, ndim, n1_, n2_, n3_, n4_)

    dim_valid = (ndim==4 .and. n1==n1_ .and. n2==n2_ .and. n3==n3_ .and. n4==n4_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_4d_int: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*4

    end subroutine read_array_binary_4d_int

    !**************************************************************************
    ! subroutine read_array_binary_4d_logical
    !**************************************************************************
    subroutine read_array_binary_4d_logical(out_unit, n1, n2, n3, n4, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4
    logical, dimension(n1,n2,n3,n4), intent(out) :: vals

    integer :: i1,i2,i3,i4
    integer(int32), dimension(:,:,:,:), allocatable :: vals_int

    ! allocate memory
    allocate ( vals_int(n1,n2,n3,n4) )

    ! read data as integers
    call read_array_binary_4d_int(out_unit, n1, n2, n3, n4, vals_int)

    ! convert to logical array
    do i4 = 1,n4
        do i3 = 1,n3
            do i2 = 1,n2
                do i1 = 1,n1
                    vals(i1,i2,i3,i4) = vals_int(i1,i2,i3,i4) > 0
                end do
            end do
        end do
    end do

    end subroutine read_array_binary_4d_logical

    !**************************************************************************
    ! subroutine read_array_binary_5d_double
    !**************************************************************************
    subroutine read_array_binary_5d_double(out_unit, n1, n2, n3, n4, n5, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5
    real(dp), dimension(n1,n2,n3,n4,n5), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, n5_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header5_binary(out_unit, name, ndim, n1_, n2_, n3_, n4_, n5_)

    dim_valid = (ndim==5 .and. n1==n1_ .and. n2==n2_ .and. &
        n3==n3_ .and. n4==n4_ .and. n5==n5_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_5d_double: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_, n5_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*n5*8

    end subroutine read_array_binary_5d_double

    !**************************************************************************
    ! subroutine read_array_binary_5d_int
    !**************************************************************************
    subroutine read_array_binary_5d_int(out_unit, n1, n2, n3, n4, n5, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5
    integer(int32), dimension(n1,n2,n3,n4,n5), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, n5_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header5_binary(out_unit, name, ndim, n1_, n2_, n3_, n4_, n5_)

    dim_valid = (ndim==5 .and. n1==n1_ .and. n2==n2_ .and. &
        n3==n3_ .and. n4==n4_ .and. n5==n5_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_5d_int: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_, n5_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*n5*4

    end subroutine read_array_binary_5d_int

    !**************************************************************************
    ! subroutine read_array_binary_5d_logical
    !**************************************************************************
    subroutine read_array_binary_5d_logical(out_unit, n1, n2, n3, n4, n5, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5
    logical, dimension(n1,n2,n3,n4,n5), intent(out) :: vals

    integer :: i1,i2,i3,i4,i5
    integer(int32), dimension(:,:,:,:,:), allocatable :: vals_int

    ! allocate memory
    allocate ( vals_int(n1,n2,n3,n4,n5) )

    ! read data as integers
    call read_array_binary_5d_int(out_unit, n1, n2, n3, n4, n5, vals_int)

    ! convert to logical array
    do i5 = 1,n5
        do i4 = 1,n4
            do i3 = 1,n3
                do i2 = 1,n2
                    do i1 = 1,n1
                        vals(i1,i2,i3,i4,i5) = vals_int(i1,i2,i3,i4,i5) > 0
                    end do
                end do
            end do
        end do
    end do

    end subroutine read_array_binary_5d_logical

    !**************************************************************************
    ! subroutine read_array_binary_6d_double
    !**************************************************************************
    subroutine read_array_binary_6d_double(out_unit, n1, n2, n3, n4, n5, n6, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6
    real(dp), dimension(n1,n2,n3,n4,n5,n6), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, n5_, n6_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header6_binary(out_unit, name, ndim, n1_, n2_, n3_, n4_, n5_, n6_)

    dim_valid = (ndim==6 .and. n1==n1_ .and. n2==n2_ .and. &
        n3==n3_ .and. n4==n4_ .and. n5==n5_ .and. n6==n6_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_6d_double: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_, n5_, n6_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*n5*n6*8

    end subroutine read_array_binary_6d_double

    !**************************************************************************
    ! subroutine read_array_binary_6d_int
    !**************************************************************************
    subroutine read_array_binary_6d_int(out_unit, n1, n2, n3, n4, n5, n6, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6
    integer(int32), dimension(n1,n2,n3,n4,n5,n6), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, n5_, n6_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header6_binary(out_unit, name, ndim, n1_, n2_, n3_, n4_, n5_, n6_)

    dim_valid = (ndim==6 .and. n1==n1_ .and. n2==n2_ .and. &
        n3==n3_ .and. n4==n4_ .and. n5==n5_ .and. n6==n6_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_6d_int: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_, n5_, n6_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*n5*n6*4

    end subroutine read_array_binary_6d_int

    !**************************************************************************
    ! subroutine read_array_binary_6d_logical
    !**************************************************************************
    subroutine read_array_binary_6d_logical(out_unit, n1, n2, n3, n4, n5, n6, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6
    logical, dimension(n1,n2,n3,n4,n5,n6), intent(out) :: vals

    integer :: i1,i2,i3,i4,i5,i6
    integer(int32), dimension(:,:,:,:,:,:), allocatable :: vals_int

    ! allocate memory
    allocate ( vals_int(n1,n2,n3,n4,n5,n6) )

    ! read data as integers
    call read_array_binary_6d_int(out_unit, n1, n2, n3, n4, n5, n6, vals_int)

    ! convert to logical array
    do i6 = 1,n6
        do i5 = 1,n5
            do i4 = 1,n4
                do i3 = 1,n3
                    do i2 = 1,n2
                        do i1 = 1,n1
                            vals(i1,i2,i3,i4,i5,i6) = vals_int(i1,i2,i3,i4,i5,i6) > 0
                        end do
                    end do
                end do
            end do
        end do
    end do

    end subroutine read_array_binary_6d_logical

    !**************************************************************************
    ! subroutine read_array_binary_7d_double
    !**************************************************************************
    subroutine read_array_binary_7d_double(out_unit, n1, n2, n3, n4, n5, n6, n7, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7
    real(dp), dimension(n1,n2,n3,n4,n5,n6,n7), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header7_binary(out_unit, name, ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_)

    dim_valid = (ndim==7 .and. n1==n1_ .and. n2==n2_ .and. &
        n3==n3_ .and. n4==n4_ .and. n5==n5_ .and. n6==n6_ .and. n7==n7_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_7d_double: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*n5*n6*n7*8

    end subroutine read_array_binary_7d_double

    !**************************************************************************
    ! subroutine read_array_binary_7d_int
    !**************************************************************************
    subroutine read_array_binary_7d_int(out_unit, n1, n2, n3, n4, n5, n6, n7, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7
    integer(int32), dimension(n1,n2,n3,n4,n5,n6,n7), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header7_binary(out_unit, name, ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_)

    dim_valid = (ndim==7 .and. n1==n1_ .and. n2==n2_ .and. &
        n3==n3_ .and. n4==n4_ .and. n5==n5_ .and. n6==n6_ .and. n7==n7_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_7d_int: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*n5*n6*n7*4

    end subroutine read_array_binary_7d_int

    !**************************************************************************
    ! subroutine read_array_binary_7d_logical
    !**************************************************************************
    subroutine read_array_binary_7d_logical(out_unit, n1, n2, n3, n4, n5, n6, n7, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7
    logical, dimension(n1,n2,n3,n4,n5,n6,n7), intent(out) :: vals

    integer :: i1,i2,i3,i4,i5,i6,i7
    integer(int32), dimension(:,:,:,:,:,:,:), allocatable :: vals_int

    ! allocate memory
    allocate ( vals_int(n1,n2,n3,n4,n5,n6,n7) )

    ! read data as integers
    call read_array_binary_7d_int(out_unit, n1, n2, n3, n4, n5, n6, n7, vals_int)

    ! convert to logical array
    do i7 = 1,n7
        do i6 = 1,n6
            do i5 = 1,n5
                do i4 = 1,n4
                    do i3 = 1,n3
                        do i2 = 1,n2
                            do i1 = 1,n1
                                vals(i1,i2,i3,i4,i5,i6,i7) = vals_int(i1,i2,i3,i4,i5,i6,i7) > 0
                            end do
                        end do
                    end do
                end do
            end do
        end do
    end do

    end subroutine read_array_binary_7d_logical

    !**************************************************************************
    ! subroutine read_array_binary_8d_double
    !**************************************************************************
    subroutine read_array_binary_8d_double(out_unit, &
        n1, n2, n3, n4, n5, n6, n7, n8, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8
    real(dp), dimension(n1,n2,n3,n4,n5,n6,n7,n8), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header8_binary(out_unit, name, ndim, &
        n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_)

    dim_valid = (ndim==8 .and. n1==n1_ .and. n2==n2_ .and. n3==n3_ &
        .and. n4==n4_ .and. n5==n5_ .and. n6==n6_ .and. n7==n7_ &
        .and. n8==n8_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_8d_double: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*n5*n6*n7*n8*8

    end subroutine read_array_binary_8d_double

    !**************************************************************************
    ! subroutine read_array_binary_8d_int
    !**************************************************************************
    subroutine read_array_binary_8d_int(out_unit, &
        n1, n2, n3, n4, n5, n6, n7, n8, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8
    integer(int32), dimension(n1,n2,n3,n4,n5,n6,n7,n8), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header8_binary(out_unit, name, ndim, &
        n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_)

    dim_valid = (ndim==8 .and. n1==n1_ .and. n2==n2_ .and. n3==n3_ &
        .and. n4==n4_ .and. n5==n5_ .and. n6==n6_ .and. n7==n7_ &
        .and. n8==n8_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_8d_int: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*n5*n6*n7*n8*4

    end subroutine read_array_binary_8d_int

    !**************************************************************************
    ! subroutine read_array_binary_8d_logical
    !**************************************************************************
    subroutine read_array_binary_8d_logical(out_unit, &
        n1, n2, n3, n4, n5, n6, n7, n8, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8
    logical, dimension(n1,n2,n3,n4,n5,n6,n7,n8), intent(out) :: vals

    integer :: i1,i2,i3,i4,i5,i6,i7,i8
    integer(int32), dimension(:,:,:,:,:,:,:,:), allocatable :: vals_int

    ! allocate memory
    allocate ( vals_int(n1,n2,n3,n4,n5,n6,n7,n8) )

    ! read data as integers
    call read_array_binary_8d_int(out_unit, n1, n2, n3, n4, n5, n6, n7, n8, vals_int)

    ! convert to logical array
    do i8 = 1,n8
        do i7 = 1,n7
            do i6 = 1,n6
                do i5 = 1,n5
                    do i4 = 1,n4
                        do i3 = 1,n3
                            do i2 = 1,n2
                                do i1 = 1,n1
                                    vals(i1,i2,i3,i4,i5,i6,i7,i8) = &
                                        vals_int(i1,i2,i3,i4,i5,i6,i7,i8) > 0
                                end do
                            end do
                        end do
                    end do
                end do
            end do
        end do
    end do

    end subroutine read_array_binary_8d_logical

    !**************************************************************************
    ! subroutine read_array_binary_9d_double
    !**************************************************************************
    subroutine read_array_binary_9d_double(out_unit, &
        n1, n2, n3, n4, n5, n6, n7, n8, n9, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8, n9
    real(dp), dimension(n1,n2,n3,n4,n5,n6,n7,n8,n9), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_, n9_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header9_binary(out_unit, name, ndim, &
        n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_, n9_)

    dim_valid = (ndim==9 .and. n1==n1_ .and. n2==n2_ .and. n3==n3_ &
        .and. n4==n4_ .and. n5==n5_ .and. n6==n6_ .and. n7==n7_ &
        .and. n8==n8_ .and. n9==n9_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_9d_double: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_, n9_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*n5*n6*n7*n8*n9*8

    end subroutine read_array_binary_9d_double

    !**************************************************************************
    ! subroutine read_array_binary_9d_int
    !**************************************************************************
    subroutine read_array_binary_9d_int(out_unit, &
        n1, n2, n3, n4, n5, n6, n7, n8, n9, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8, n9
    integer(int32), dimension(n1,n2,n3,n4,n5,n6,n7,n8,n9), intent(out) :: vals

    character(len=100) :: name
    integer :: ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_, n9_, hr1, hr2
    logical :: dim_valid

    ! get header info
    call read_header9_binary(out_unit, name, ndim, &
        n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_, n9_)

    dim_valid = (ndim==8 .and. n1==n1_ .and. n2==n2_ .and. n3==n3_ &
        .and. n4==n4_ .and. n5==n5_ .and. n6==n6_ .and. n7==n7_ &
        .and. n8==n8_ .and. n9==n9_)
    if ( .not. dim_valid ) then
        print *, "read_array_binary_9d_int: invalid dimensions"
        print *, trim(name), ndim, n1_, n2_, n3_, n4_, n5_, n6_, n7_, n8_, n9_
    end if

    ! read array
    read(out_unit) hr1
    read(out_unit) vals
    read(out_unit) hr2
    !hr1, hr2 should be n1*n2*n3*n4*n5*n6*n7*n8*n9*4

    end subroutine read_array_binary_9d_int

    !**************************************************************************
    ! subroutine read_array_binary_9d_logical
    !**************************************************************************
    subroutine read_array_binary_9d_logical(out_unit, &
        n1, n2, n3, n4, n5, n6, n7, n8, n9, vals)
    integer, intent(in) :: out_unit
    integer, intent(in) :: n1, n2, n3, n4, n5, n6, n7, n8, n9
    logical, dimension(n1,n2,n3,n4,n5,n6,n7,n8,n9), intent(out) :: vals

    integer :: i1,i2,i3,i4,i5,i6,i7,i8,i9
    integer(int32), dimension(:,:,:,:,:,:,:,:,:), allocatable :: vals_int

    ! allocate memory
    allocate ( vals_int(n1,n2,n3,n4,n5,n6,n7,n8,n9) )

    ! read data as integers
    call read_array_binary_9d_int(out_unit, n1, n2, n3, n4, n5, n6, n7, n8, n9, vals_int)

    ! convert to logical array
    do i9 = 1,n9
        do i8 = 1,n8
            do i7 = 1,n7
                do i6 = 1,n6
                    do i5 = 1,n5
                        do i4 = 1,n4
                            do i3 = 1,n3
                                do i2 = 1,n2
                                    do i1 = 1,n1
                                        vals(i1,i2,i3,i4,i5,i6,i7,i8,i9) = &
                                            vals_int(i1,i2,i3,i4,i5,i6,i7,i8,i9) > 0
                                    end do
                                end do
                            end do
                        end do
                    end do
                end do
            end do
        end do
    end do

    end subroutine read_array_binary_9d_logical

    end module data_output





