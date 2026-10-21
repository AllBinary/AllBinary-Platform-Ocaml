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
(* package org.allbinary.logic.system.hardware.components.linux *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.FileReader *)
(* import java.io.LineNumberReader *)
(* import java.util.HashMap *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FilePathData *)
(* import org.allbinary.logic.io.file.directory.SubDirectory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.hardware.components.interfaces.CpuInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)

class cpu () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable cPUFILE : string = ""
    method cPUFILE = cPUFILE
    method set_cPUFILE value' = cPUFILE <- value'
    val mutable cpuHashMap : java_hash_map = (Obj.magic 0)
    method cpuHashMap = cpuHashMap
    method set_cpuHashMap value' = cpuHashMap <- value'
    
    
    

    method init ((filePath : string)) : unit =
        begin
        let lineNumberReader : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        (try
            (self#init ((Obj.magic !lineNumberReader), filePath))
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#oS)) then begin
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Cpu Data: "))#append ((java_string_of (Obj.repr self)))))), self, commonStrings#cONSTRUCTOR, e))
            end;
            raise e
        end)
        end
    

    (* Java overload init(LineNumberReader, String) is not converted: OCaml has one method per name *)
    

    method getProcessor () : string =
        begin
        (Obj.magic (cpuHashMap#get ((CpuInfo.get_pROCESSOR ()))))
        end
    

    method getVendorId () : string =
        begin
        (Obj.magic (cpuHashMap#get ((CpuInfo.get_vENDORID ()))))
        end
    

    method getCpuFamily () : string =
        begin
        (Obj.magic (cpuHashMap#get ((CpuInfo.get_cPUFAMILY ()))))
        end
    

    method getModel () : string =
        begin
        (Obj.magic (cpuHashMap#get ((CpuInfo.get_mODEL ()))))
        end
    

    method getModelName () : string =
        begin
        (Obj.magic (cpuHashMap#get ((CpuInfo.get_mODELNAME ()))))
        end
    

    method getStepping () : string =
        begin
        (Obj.magic (cpuHashMap#get ((CpuInfo.get_sTEPPING ()))))
        end
    

    method getCpuSpeed () : string =
        begin
        (Obj.magic (cpuHashMap#get ((CpuInfo.get_cPUMHZ ()))))
        end
    

    method getCacheSize () : string =
        begin
        (Obj.magic (cpuHashMap#get ((CpuInfo.get_cACHESIZE ()))))
        end
    

    method compareTo : 'any1. 'any1 -> bool = fun (_cpuInterface) ->
        begin
        true
        end [@@warning "-20"]
    

    (* Java overload compareTo(HardwareComponentInterface) is not converted: OCaml has one method per name *)
    

    method toString () : string =
        begin
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (((!stringMaker#append ((java_string_of (Obj.repr (CpuInfo.get_pROCESSOR ())))))#append (!commonLabels#cOLON_SEP))#append ((self#getProcessor ())));
        ignore (!stringMaker#append (!commonSeps#nEW_LINE));
        ignore (((!stringMaker#append ((java_string_of (Obj.repr (CpuInfo.get_vENDORID ())))))#append (!commonLabels#cOLON_SEP))#append ((self#getVendorId ())));
        ignore (!stringMaker#append (!commonSeps#nEW_LINE));
        ignore (((!stringMaker#append ((java_string_of (Obj.repr (CpuInfo.get_cPUFAMILY ())))))#append (!commonLabels#cOLON_SEP))#append ((self#getCpuFamily ())));
        ignore (!stringMaker#append (!commonSeps#nEW_LINE));
        ignore (((!stringMaker#append ((java_string_of (Obj.repr (CpuInfo.get_mODEL ())))))#append (!commonLabels#cOLON_SEP))#append ((self#getModel ())));
        ignore (!stringMaker#append (!commonSeps#nEW_LINE));
        ignore (((!stringMaker#append ((java_string_of (Obj.repr (CpuInfo.get_mODELNAME ())))))#append (!commonLabels#cOLON_SEP))#append ((self#getModelName ())));
        ignore (!stringMaker#append (!commonSeps#nEW_LINE));
        ignore (((!stringMaker#append ((java_string_of (Obj.repr (CpuInfo.get_sTEPPING ())))))#append (!commonLabels#cOLON_SEP))#append ((self#getStepping ())));
        ignore (!stringMaker#append (!commonSeps#nEW_LINE));
        ignore (((!stringMaker#append ((java_string_of (Obj.repr (CpuInfo.get_cPUMHZ ())))))#append (!commonLabels#cOLON_SEP))#append ((self#getCpuSpeed ())));
        ignore (!stringMaker#append (!commonSeps#nEW_LINE));
        ignore (((!stringMaker#append ((java_string_of (Obj.repr (CpuInfo.get_cACHESIZE ())))))#append (!commonLabels#cOLON_SEP))#append ((self#getCacheSize ())));
        (java_string_of (Obj.repr !stringMaker))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        cPUFILE <- "/proc/cpuinfo";
        cpuHashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        (self#init (cPUFILE))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Cpu" (fun arguments -> Obj.repr (new cpu (Obj.obj arguments)))


