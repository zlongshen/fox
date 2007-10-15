 ! This file is AUTOGENERATED!!!!
! Do not edit this file; edit m_wcml_stml.m4 and regenerate.
!
!
module m_wcml_stml

  use FoX_wxml, only: xmlf_t
  use FoX_wxml, only: xml_NewElement, xml_EndElement
  use FoX_wxml, only: xml_AddCharacters, xml_AddAttribute

! Fix for pgi, requires this explicitly:
  use m_wxml_overloads

  implicit none
  private

  integer, private, parameter ::  sp = selected_real_kind(6,30)
  integer, private, parameter ::  dp = selected_real_kind(14,100)

  interface stmAddValue
     module procedure stmAddCmplxDpSca
     module procedure stmAddCmplxSpSca
     module procedure stmAddRealDpSca
     module procedure stmAddRealSpSca
     module procedure stmAddIntSca
     module procedure stmAddLgSca
     module procedure stmAddChSca

     module procedure stmAddCmplxDpArr
     module procedure stmAddCmplxSpArr
     module procedure stmAddRealDpArr
     module procedure stmAddRealSpArr
     module procedure stmAddIntArr
     module procedure stmAddLgArr
     module procedure stmAddChArr

     module procedure stmAddCmplxDpMat
     module procedure stmAddCmplxSpMat
     module procedure stmAddRealDpMat
     module procedure stmAddRealSpMat
     module procedure stmAddIntMat
     module procedure stmAddLgMat
     module procedure stmAddChMat

  end interface stmAddValue

  interface stmAddScalar
     module procedure stmAddCmplxDpSca
     module procedure stmAddCmplxSpSca
     module procedure stmAddRealDpSca
     module procedure stmAddRealSpSca
     module procedure stmAddIntSca
     module procedure stmAddLgSca
     module procedure stmAddChSca

  end interface stmAddScalar

  interface stmAddArray
     module procedure stmAddCmplxDpArr
     module procedure stmAddCmplxSpArr
     module procedure stmAddRealDpArr
     module procedure stmAddRealSpArr
     module procedure stmAddIntArr
     module procedure stmAddLgArr
     module procedure stmAddChArr

  end interface stmAddArray

  interface stmAddMatrix
     module procedure stmAddCmplxDpMat
     module procedure stmAddCmplxSpMat
     module procedure stmAddRealDpMat
     module procedure stmAddRealSpMat
     module procedure stmAddIntMat
     module procedure stmAddLgMat
     module procedure stmAddChMat

  end interface stmAddMatrix

  public :: stmAddValue
  public :: stmAddScalar
  public :: stmAddArray
  public :: stmAddMatrix

contains

  subroutine stmAddCmplxDpSca(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    complex(dp), intent(in)  :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "scalar")
    call xml_AddAttribute(xf, "dataType", "fpx:complex")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "scalar")


  end subroutine stmAddCmplxDpSca

  subroutine stmAddCmplxSpSca(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    complex(sp), intent(in)  :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "scalar")
    call xml_AddAttribute(xf, "dataType", "fpx:complex")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "scalar")


  end subroutine stmAddCmplxSpSca

  subroutine stmAddRealDpSca(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    real(dp), intent(in)  :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "scalar")
    call xml_AddAttribute(xf, "dataType", "fpx:real")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "scalar")


  end subroutine stmAddRealDpSca

  subroutine stmAddRealSpSca(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    real(sp), intent(in)  :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "scalar")
    call xml_AddAttribute(xf, "dataType", "fpx:real")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "scalar")


  end subroutine stmAddRealSpSca

  subroutine stmAddIntSca(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units)

    type(xmlf_t), intent(inout) :: xf
    integer, intent(in)  :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "scalar")
    call xml_AddAttribute(xf, "dataType", "xsd:integer")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value)

    call xml_EndElement(xf, "scalar")


  end subroutine stmAddIntSca

  subroutine stmAddLgSca(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
)

    type(xmlf_t), intent(inout) :: xf
    logical, intent(in)  :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    call xml_NewElement(xf, "scalar")
    call xml_AddAttribute(xf, "dataType", "xsd:boolean")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    call xml_AddCharacters(xf, value)

    call xml_EndElement(xf, "scalar")


  end subroutine stmAddLgSca

  subroutine stmAddChSca(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, dataType )

    type(xmlf_t), intent(inout) :: xf
    character(len=*), intent(in)  :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: dataType

    call xml_NewElement(xf, "scalar")
    if (present(dataType)) then
      call xml_addAttribute(xf, "dataType", dataType)
    else
    call xml_AddAttribute(xf, "dataType", "xsd:string")
    endif

    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value)

    call xml_EndElement(xf, "scalar")


  end subroutine stmAddChSca


  subroutine stmAddCmplxDpArr(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    complex(dp), intent(in) , dimension(:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "array")
    call xml_AddAttribute(xf, "size", size(value))
    call xml_AddAttribute(xf, "dataType", "fpx:complex")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "array")


  end subroutine stmAddCmplxDpArr

  subroutine stmAddCmplxSpArr(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    complex(sp), intent(in) , dimension(:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "array")
    call xml_AddAttribute(xf, "size", size(value))
    call xml_AddAttribute(xf, "dataType", "fpx:complex")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "array")


  end subroutine stmAddCmplxSpArr

  subroutine stmAddRealDpArr(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    real(dp), intent(in) , dimension(:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "array")
    call xml_AddAttribute(xf, "size", size(value))
    call xml_AddAttribute(xf, "dataType", "fpx:real")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "array")


  end subroutine stmAddRealDpArr

  subroutine stmAddRealSpArr(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    real(sp), intent(in) , dimension(:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "array")
    call xml_AddAttribute(xf, "size", size(value))
    call xml_AddAttribute(xf, "dataType", "fpx:real")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "array")


  end subroutine stmAddRealSpArr

  subroutine stmAddIntArr(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units)

    type(xmlf_t), intent(inout) :: xf
    integer, intent(in) , dimension(:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "array")
    call xml_AddAttribute(xf, "size", size(value))
    call xml_AddAttribute(xf, "dataType", "xsd:integer")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value)

    call xml_EndElement(xf, "array")


  end subroutine stmAddIntArr

  subroutine stmAddLgArr(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
)

    type(xmlf_t), intent(inout) :: xf
    logical, intent(in) , dimension(:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    call xml_NewElement(xf, "array")
    call xml_AddAttribute(xf, "size", size(value))
    call xml_AddAttribute(xf, "dataType", "xsd:boolean")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    call xml_AddCharacters(xf, value)

    call xml_EndElement(xf, "array")


  end subroutine stmAddLgArr

  subroutine stmAddChArr(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, dataType , delimiter)

    type(xmlf_t), intent(inout) :: xf
    character(len=*), intent(in) , dimension(:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: dataType

    character(len=1), intent(in), optional :: delimiter
    call xml_NewElement(xf, "array")
    call xml_AddAttribute(xf, "size", size(value))
    if (present(delimiter)) then
      call xml_AddAttribute(xf, "delimiter", delimiter)
    else
      call xml_AddAttribute(xf, "delimiter", " ")
    endif
    if (present(dataType)) then
      call xml_addAttribute(xf, "dataType", dataType)
    else
    call xml_AddAttribute(xf, "dataType", "xsd:string")
    endif

    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, delimiter)

    call xml_EndElement(xf, "array")


  end subroutine stmAddChArr


  subroutine stmAddCmplxDpMat(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    complex(dp), intent(in) , dimension(:,:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "matrix")
    call xml_AddAttribute(xf, "rows", size(value,1))
    call xml_AddAttribute(xf, "columns", size(value,2))
    call xml_AddAttribute(xf, "dataType", "fpx:complex")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "matrix")


  end subroutine stmAddCmplxDpMat

  subroutine stmAddCmplxSpMat(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    complex(sp), intent(in) , dimension(:,:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "matrix")
    call xml_AddAttribute(xf, "rows", size(value,1))
    call xml_AddAttribute(xf, "columns", size(value,2))
    call xml_AddAttribute(xf, "dataType", "fpx:complex")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "matrix")


  end subroutine stmAddCmplxSpMat

  subroutine stmAddRealDpMat(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    real(dp), intent(in) , dimension(:,:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "matrix")
    call xml_AddAttribute(xf, "rows", size(value,1))
    call xml_AddAttribute(xf, "columns", size(value,2))
    call xml_AddAttribute(xf, "dataType", "fpx:real")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "matrix")


  end subroutine stmAddRealDpMat

  subroutine stmAddRealSpMat(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, fmt)

    type(xmlf_t), intent(inout) :: xf
    real(sp), intent(in) , dimension(:,:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: fmt
    call xml_NewElement(xf, "matrix")
    call xml_AddAttribute(xf, "rows", size(value,1))
    call xml_AddAttribute(xf, "columns", size(value,2))
    call xml_AddAttribute(xf, "dataType", "fpx:real")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, fmt)

    call xml_EndElement(xf, "matrix")


  end subroutine stmAddRealSpMat

  subroutine stmAddIntMat(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units)

    type(xmlf_t), intent(inout) :: xf
    integer, intent(in) , dimension(:,:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    call xml_NewElement(xf, "matrix")
    call xml_AddAttribute(xf, "rows", size(value,1))
    call xml_AddAttribute(xf, "columns", size(value,2))
    call xml_AddAttribute(xf, "dataType", "xsd:integer")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value)

    call xml_EndElement(xf, "matrix")


  end subroutine stmAddIntMat

  subroutine stmAddLgMat(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
)

    type(xmlf_t), intent(inout) :: xf
    logical, intent(in) , dimension(:,:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    call xml_NewElement(xf, "matrix")
    call xml_AddAttribute(xf, "rows", size(value,1))
    call xml_AddAttribute(xf, "columns", size(value,2))
    call xml_AddAttribute(xf, "dataType", "xsd:boolean")


    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    call xml_AddCharacters(xf, value)

    call xml_EndElement(xf, "matrix")


  end subroutine stmAddLgMat

  subroutine stmAddChMat(xf, value, &
id, title, dictRef, convention, errorValue, errorBasis, min, max, ref &
, units, dataType , delimiter)

    type(xmlf_t), intent(inout) :: xf
    character(len=*), intent(in) , dimension(:,:) :: value
    character(len=*), intent(in), optional :: id
    character(len=*), intent(in), optional :: title
    character(len=*), intent(in), optional :: dictRef
    character(len=*), intent(in), optional :: convention
    character(len=*), intent(in), optional :: errorValue
    character(len=*), intent(in), optional :: errorBasis
    character(len=*), intent(in), optional :: min
    character(len=*), intent(in), optional :: max
    character(len=*), intent(in), optional :: ref

    character(len=*), intent(in), optional :: units

    character(len=*), intent(in), optional :: dataType

    character(len=1), intent(in), optional :: delimiter
    call xml_NewElement(xf, "matrix")
    call xml_AddAttribute(xf, "rows", size(value,1))
    call xml_AddAttribute(xf, "columns", size(value,2))
    if (present(delimiter)) then
      call xml_AddAttribute(xf, "delimiter", delimiter)
    else
      call xml_AddAttribute(xf, "delimiter", " ")
    endif
    if (present(dataType)) then
      call xml_addAttribute(xf, "dataType", dataType)
    else
    call xml_AddAttribute(xf, "dataType", "xsd:string")
    endif

    if (present(id)) call xml_addAttribute(xf, "id", id)
    if (present(title)) call xml_addAttribute(xf, "title", title)
    if (present(dictRef)) call xml_addAttribute(xf, "dictRef", dictRef)
    if (present(convention)) call xml_addAttribute(xf, "convention", convention)
    if (present(errorValue)) call xml_addAttribute(xf, "errorValue", errorValue)
    if (present(errorBasis)) call xml_addAttribute(xf, "errorBasis", errorBasis)
    if (present(min)) call xml_addAttribute(xf, "min", min)
    if (present(max)) call xml_addAttribute(xf, "max", max)
    if (present(ref)) call xml_addAttribute(xf, "ref", ref)

    if (present(units)) call xml_addAttribute(xf, "units", units)

    call xml_AddCharacters(xf, value, delimiter)

    call xml_EndElement(xf, "matrix")


  end subroutine stmAddChMat


end module m_wcml_stml
