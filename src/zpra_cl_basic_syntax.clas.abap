CLASS zpra_cl_basic_syntax DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpra_cl_basic_syntax IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*DATA lv_count TYPE i. " Declare an integer variable
*lv_count = 10. " Assign value 10
*lv_count = lv_count + 5." Update value to 15
*
*out->write( |Its value changes during runtime : { lv_count }| ).

data lv_var type i.
out->write( 'HELLO' ).
  ENDMETHOD.
ENDCLASS.
