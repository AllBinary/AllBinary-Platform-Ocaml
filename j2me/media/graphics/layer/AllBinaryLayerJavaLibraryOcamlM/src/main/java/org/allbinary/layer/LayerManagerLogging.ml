(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)

let removeFailed : bool ref = ref (false)
let get_removeFailed () = !removeFailed
let set_removeFailed value' = removeFailed := value'
let () = java_register_static "LayerManagerLogging.get_removeFailed" (fun _ -> Obj.repr (get_removeFailed ()))
class layerManagerLogging () =
  object (self)
    inherit LayerManagerLoggingBase.layerManagerLoggingBase ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable stringBuilder : StringMaker.stringMaker = (Obj.magic 0)
    method stringBuilder = stringBuilder
    method set_stringBuilder value' = stringBuilder <- value'
    val mutable aPPEND : string = ""
    method aPPEND = aPPEND
    method set_aPPEND value' = aPPEND <- value'
    val mutable aPPEND_ : string = ""
    method aPPEND_ = aPPEND_
    method set_aPPEND_ value' = aPPEND_ <- value'
    val mutable _AT_ : string = ""
    method _AT_ = _AT_
    method set__AT_ value' = _AT_ <- value'
    val mutable aTTEMPT_REMOVE_ : string = ""
    method aTTEMPT_REMOVE_ = aTTEMPT_REMOVE_
    method set_aTTEMPT_REMOVE_ value' = aTTEMPT_REMOVE_ <- value'
    val mutable rEMOVE_ : string = ""
    method rEMOVE_ = rEMOVE_
    method set_rEMOVE_ value' = rEMOVE_ <- value'
    val mutable rEMOVE : string = ""
    method rEMOVE = rEMOVE
    method set_rEMOVE value' = rEMOVE <- value'
    val mutable dID_NOT_REMOVE : string = ""
    method dID_NOT_REMOVE = dID_NOT_REMOVE
    method set_dID_NOT_REMOVE value' = dID_NOT_REMOVE <- value'
    val mutable cLEAR : string = ""
    method cLEAR = cLEAR
    method set_cLEAR value' = cLEAR <- value'
    

    method append : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        ignore (stringBuilder#delete (0, (stringBuilder#length ())));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((stringBuilder#appendint ((java_to_int (Obj.repr (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)))))))#append (aPPEND_))#append (((Obj.magic layerInterface)#getName ()))))), self, aPPEND))
        end [@@warning "-7-20"]
    

    method appendAt : 'any1. 'any1 * int -> unit = fun (layerInterface, (index : int)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        ignore (stringBuilder#delete (0, (stringBuilder#length ())));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((stringBuilder#appendint ((java_to_int (Obj.repr (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)))))))#append (aPPEND_))#append (((Obj.magic layerInterface)#getName ())))#append (_AT_))#appendint (index)))), self, aPPEND))
        end [@@warning "-7-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        if ((Obj.magic layerInterface) == (Obj.magic 0)) then begin
            ignore (stringBuilder#delete (0, (stringBuilder#length ())));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((stringBuilder#appendint ((java_to_int (Obj.repr (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)))))))#append (aTTEMPT_REMOVE_))#append (((StringUtil.getInstance ())#toString ((Obj.magic layerInterface))))))), self, rEMOVE))
        end else begin
            ignore (stringBuilder#delete (0, (stringBuilder#length ())));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((stringBuilder#appendint ((java_to_int (Obj.repr (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)))))))#append (aTTEMPT_REMOVE_))#append (((Obj.magic layerInterface)#getName ()))))), self, rEMOVE))
        end
        end [@@warning "-7-20"]
    

    method removeResult : 'any1 'any2. 'any1 * 'any2 * bool -> unit = fun (_layerManager, layerInterface, (result : bool)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        if ((Obj.magic layerInterface) == (Obj.magic 0)) then begin
            ignore (stringBuilder#delete (0, (stringBuilder#length ())));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((stringBuilder#appendint ((java_to_int (Obj.repr (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)))))))#append (rEMOVE_))#append (((StringUtil.getInstance ())#toString ((Obj.magic layerInterface))))))), self, rEMOVE))
        end else if result then begin
            if !removeFailed then begin
                ignore (stringBuilder#delete (0, (stringBuilder#length ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((stringBuilder#appendint ((java_to_int (Obj.repr (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)))))))#append (rEMOVE_))#append (((Obj.magic layerInterface)#getName ()))))), self, rEMOVE))
            end
        end else begin
            ignore (stringBuilder#delete (0, (stringBuilder#length ())));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((stringBuilder#appendint ((java_to_int (Obj.repr (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)))))))#append (dID_NOT_REMOVE))#append (((Obj.magic layerInterface)#getName ()))))), self, rEMOVE));
            removeFailed := true
        end
        end [@@warning "-7-20"]
    

    method log : 'any1. 'any1 -> unit = fun (layerManager) ->
        let layerManager = Obj.repr layerManager in
        begin
        ignore (stringBuilder#delete (0, (stringBuilder#length ())));
        let size : int ref = ref (((Obj.magic layerManager)#getSize ())) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        ignore ((stringBuilder#append ((Printf.sprintf "%x" (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode ((Obj.magic layerManager)))))))#append (!commonSeps#cOLON_SEP));
        ignore ((stringBuilder#appendint (!size))#append (!commonSeps#cOLON_SEP));
        let allBinaryLayer : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic 0) :> AllBinaryLayer.allBinaryLayer)) in ();
        for index = 0 to !size - 1 do
            allBinaryLayer := ((Obj.magic ((Obj.magic layerManager)#getLayerAt (index))));
            ignore ((stringBuilder#append ((!allBinaryLayer#getName ())))#append (!commonSeps#cOMMA))
        done;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr stringBuilder)), self, rEMOVE))
        end [@@warning "-7-20"]
    

    method clear () : unit =
        begin
        ignore (stringBuilder#delete (0, (stringBuilder#length ())));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((stringBuilder#appendint ((java_to_int (Obj.repr (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (self)))))))#append (cLEAR)))), self, cLEAR))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        stringBuilder <- ((new StringMaker.stringMaker ()) :> StringMaker.stringMaker);
        aPPEND <- "append";
        aPPEND_ <- " append: ";
        _AT_ <- " at: ";
        aTTEMPT_REMOVE_ <- " Remove Attempt: ";
        rEMOVE_ <- " Remove: ";
        rEMOVE <- "remove";
        dID_NOT_REMOVE <- " Did not remove: ";
        cLEAR <- " Clear List";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "LayerManagerLogging" (fun arguments -> Obj.repr (new layerManagerLogging (Obj.obj arguments)))

let instance = (new layerManagerLogging ())
let get_instance () = instance
let () = java_register_static "LayerManagerLogging.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LayerManagerLogging.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


