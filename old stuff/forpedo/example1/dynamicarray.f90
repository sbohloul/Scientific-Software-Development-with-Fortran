!
!  Here are some genetic type instantiations.
!  First letter is the name of the generic type.
!  Second is a tag that can be used to avoid naming conflicts.
!  Third is the concrete fortran type
!
!  Note that the last example is effectively a typedef from C. There is no
!  distinction between a typedef, and a generic type here. A typedef is 
!  simply a generic type with one instance.
!
    
module DynamicArrayRModule
    use IntArrayModule

    integer, parameter            :: DefaultInitialSizeR = 100
    real, parameter, private

    type DynamicArrayR
        real
        integer     :: length
    end type

    interface new
        module procedure newDynamicArrayR
    end interface

    interface delete
        module procedure deleteDynamicArrayR
    end interface

    interface append
        module procedure appendDynamicArrayR
    end interface

contains
 
    subroutine newDynamicArrayR( self )
        implicit none
        type (DynamicArrayR) :: self
        allocate( self%data(DefaultInitialSizeR) )
        self%length = 0
    end subroutine

    subroutine deleteDynamicArrayR( self )
        implicit none
        type (DynamicArrayR) :: self
        deallocate( self%data )
    end subroutine

    subroutine appendDynamicArrayR( self, val )
        implicit none
        type (DynamicArrayR) :: self
        real
        real
        integer :: oldSize, newSize
        if ( size(self%data) == self%length ) then  ! Reallocate space, copying old data
            oldSize = size(self%data)
            newSize = ResizeFactor * oldSize
            allocate( newData(newSize) )
            newData(:self%length) = self%data(:self%length)
            deallocate( self%data )
            self%data => newData
        endif
        self%length = self%length + 1
        self%data(self%length) = val
    end subroutine

end module
!
!  Here are some genetic type instantiations.
!  First letter is the name of the generic type.
!  Second is a tag that can be used to avoid naming conflicts.
!  Third is the concrete fortran type
!
!  Note that the last example is effectively a typedef from C. There is no
!  distinction between a typedef, and a generic type here. A typedef is 
!  simply a generic type with one instance.
!
    
module DynamicArrayIModule
    use IntArrayModule

    integer, parameter            :: DefaultInitialSizeI = 100
    real, parameter, private

    type DynamicArrayI
        integer
        integer     :: length
    end type

    interface new
        module procedure newDynamicArrayI
    end interface

    interface delete
        module procedure deleteDynamicArrayI
    end interface

    interface append
        module procedure appendDynamicArrayI
    end interface

contains
 
    subroutine newDynamicArrayI( self )
        implicit none
        type (DynamicArrayI) :: self
        allocate( self%data(DefaultInitialSizeI) )
        self%length = 0
    end subroutine

    subroutine deleteDynamicArrayI( self )
        implicit none
        type (DynamicArrayI) :: self
        deallocate( self%data )
    end subroutine

    subroutine appendDynamicArrayI( self, val )
        implicit none
        type (DynamicArrayI) :: self
        integer
        integer
        integer :: oldSize, newSize
        if ( size(self%data) == self%length ) then  ! Reallocate space, copying old data
            oldSize = size(self%data)
            newSize = ResizeFactor * oldSize
            allocate( newData(newSize) )
            newData(:self%length) = self%data(:self%length)
            deallocate( self%data )
            self%data => newData
        endif
        self%length = self%length + 1
        self%data(self%length) = val
    end subroutine

end module
!
!  Here are some genetic type instantiations.
!  First letter is the name of the generic type.
!  Second is a tag that can be used to avoid naming conflicts.
!  Third is the concrete fortran type
!
!  Note that the last example is effectively a typedef from C. There is no
!  distinction between a typedef, and a generic type here. A typedef is 
!  simply a generic type with one instance.
!
    
module DynamicArrayIAModule
    use IntArrayModule

    integer, parameter            :: DefaultInitialSizeIA = 100
    real, parameter, private

    type DynamicArrayIA
        type(IntArray)
        integer     :: length
    end type

    interface new
        module procedure newDynamicArrayIA
    end interface

    interface delete
        module procedure deleteDynamicArrayIA
    end interface

    interface append
        module procedure appendDynamicArrayIA
    end interface

contains
 
    subroutine newDynamicArrayIA( self )
        implicit none
        type (DynamicArrayIA) :: self
        allocate( self%data(DefaultInitialSizeIA) )
        self%length = 0
    end subroutine

    subroutine deleteDynamicArrayIA( self )
        implicit none
        type (DynamicArrayIA) :: self
        deallocate( self%data )
    end subroutine

    subroutine appendDynamicArrayIA( self, val )
        implicit none
        type (DynamicArrayIA) :: self
        type(IntArray)
        type(IntArray)
        integer :: oldSize, newSize
        if ( size(self%data) == self%length ) then  ! Reallocate space, copying old data
            oldSize = size(self%data)
            newSize = ResizeFactor * oldSize
            allocate( newData(newSize) )
            newData(:self%length) = self%data(:self%length)
            deallocate( self%data )
            self%data => newData
        endif
        self%length = self%length + 1
        self%data(self%length) = val
    end subroutine

end module