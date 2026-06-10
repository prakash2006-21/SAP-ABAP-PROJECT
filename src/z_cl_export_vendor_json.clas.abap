CLASS z_cl_export_vendor_json DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_cl_export_vendor_json IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

SELECT *
  FROM z_ddf_vendor_analytics
  INTO TABLE @DATA(gt_vendor).

DATA(json_output) = /ui2/cl_json=>serialize(
                      data = gt_vendor
                    ).

out->write( json_output ).
  ENDMETHOD.
ENDCLASS.
