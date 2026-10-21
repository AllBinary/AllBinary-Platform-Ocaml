(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.configuration.persistance *)

open Allbinary_java [@@warning "-33"]

class persistanceStrings () =
  object
    val mutable sAVING : string = ""
    method sAVING = sAVING
    method set_sAVING value' = sAVING <- value'
    val mutable nUMBER_OF_RECORDS : string = ""
    method nUMBER_OF_RECORDS = nUMBER_OF_RECORDS
    method set_nUMBER_OF_RECORDS value' = nUMBER_OF_RECORDS <- value'
    val mutable lOADING_ID : string = ""
    method lOADING_ID = lOADING_ID
    method set_lOADING_ID value' = lOADING_ID <- value'
    val mutable lOAD_ALL : string = ""
    method lOAD_ALL = lOAD_ALL
    method set_lOAD_ALL value' = lOAD_ALL <- value'
    val mutable dELETING_WITH_ID : string = ""
    method dELETING_WITH_ID = dELETING_WITH_ID
    method set_dELETING_WITH_ID value' = dELETING_WITH_ID <- value'
    val mutable cLOSING_RECORDSTORE : string = ""
    method cLOSING_RECORDSTORE = cLOSING_RECORDSTORE
    method set_cLOSING_RECORDSTORE value' = cLOSING_RECORDSTORE <- value'
    val mutable nOT_SAVING : string = ""
    method nOT_SAVING = nOT_SAVING
    method set_nOT_SAVING value' = nOT_SAVING <- value'
    val mutable eRROR_LOADING : string = ""
    method eRROR_LOADING = eRROR_LOADING
    method set_eRROR_LOADING value' = eRROR_LOADING <- value'
    val mutable eRROR_LOADING_ID : string = ""
    method eRROR_LOADING_ID = eRROR_LOADING_ID
    method set_eRROR_LOADING_ID value' = eRROR_LOADING_ID <- value'
    val mutable iD : string = ""
    method iD = iD
    method set_iD value' = iD <- value'
    val mutable gAME_ACTION_INPUT : string = ""
    method gAME_ACTION_INPUT = gAME_ACTION_INPUT
    method set_gAME_ACTION_INPUT value' = gAME_ACTION_INPUT <- value'

    initializer
      begin
        sAVING <- "Saving: ";
        nUMBER_OF_RECORDS <- "Number of records: ";
        lOADING_ID <- "Loading data with id: ";
        lOAD_ALL <- "loadAll";
        dELETING_WITH_ID <- "Deleting data with id: ";
        cLOSING_RECORDSTORE <- "Closing RecordStore";
        nOT_SAVING <- "Not Saving: ";
        eRROR_LOADING <- "Error Loading gameActionInput: ";
        eRROR_LOADING_ID <- "Error Loading id: ";
        iD <- " id: ";
        gAME_ACTION_INPUT <- " GameActionInput: ";
        ()
      end
  end
let () = java_register_constructor "PersistanceStrings" (fun arguments -> Obj.repr (new persistanceStrings (Obj.obj arguments)))

let instance = (new persistanceStrings ())
let get_instance () = instance
let () = java_register_static "PersistanceStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PersistanceStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


