module FoX_wcml

  use m_wcml_core
  use m_wcml_coma
  use m_wcml_geometry
  use m_wcml_molecule
  use m_wcml_parameter
  use m_wcml_property
  use m_wcml_stml

  implicit none
  private

  public :: cmlStartCml
  public :: cmlEndCml

  public :: cmlStartPropertyList
  public :: cmlEndPropertyList
  public :: cmlAddProperty

  public :: cmlStartParameterList
  public :: cmlEndParameterList
  public :: cmlAddParameter

  public :: cmlAddMolecule

end module FoX_wcml
