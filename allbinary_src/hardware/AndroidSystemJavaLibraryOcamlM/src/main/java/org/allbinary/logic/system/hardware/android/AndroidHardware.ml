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
(* package org.allbinary.logic.system.hardware.android *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.Closeable *)
(* import java.io.FileReader *)
(* import java.io.LineNumberReader *)
(* import org.allbinary.logic.io.NullCloseable *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.hardware.HardwareInterface *)
(* import org.allbinary.logic.system.hardware.components.android.UnknownHardware *)
(* import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class androidHardware () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable componentInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method componentInterfaceVector = componentInterfaceVector
    method set_componentInterfaceVector value' = componentInterfaceVector <- value'
    val mutable pROC_BUS_INPUT_DIRECTORY : string = ""
    method pROC_BUS_INPUT_DIRECTORY = pROC_BUS_INPUT_DIRECTORY
    method set_pROC_BUS_INPUT_DIRECTORY value' = pROC_BUS_INPUT_DIRECTORY <- value'
    val mutable dEVICES : string = ""
    method dEVICES = dEVICES
    method set_dEVICES value' = dEVICES <- value'
    val mutable mINHARDWARE : int = 0
    method mINHARDWARE = mINHARDWARE
    method set_mINHARDWARE value' = mINHARDWARE <- value'
    
    

    method init ((filePath : string)) : unit =
        begin
        let lineNumberReader : Obj.t ref = ref ((Obj.repr (NullCloseable.get_nULL_CLOSEABLE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            if ((Obj.magic !lineNumberReader) != (Obj.magic 0)) then begin
                ignore ((Obj.magic !lineNumberReader)#close ())
            end
        ) (fun () -> (try
            lineNumberReader := Obj.repr ((self#get (filePath)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (("Hardware Data: " ^ (java_string_of (Obj.repr self))), self, commonStrings#iNIT, e));
            raise e
        end))
        end
    

    method get : 'return. string -> 'return = fun ((filePath : string)) ->
        begin
        componentInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
        let pciFile : Obj.t ref = ref ((Obj.repr (new FileReader.fileReader (filePath)))) in ();
        let lineNumberReader : Obj.t ref = ref ((Obj.repr (new LineNumberReader.lineNumberReader ((Obj.magic !pciFile))))) in ();
        ignore ((Obj.magic logUtil)#putF ("File Found", self, commonStrings#cONSTRUCTOR));
        let nextLine : string ref = ref (((Obj.magic !lineNumberReader)#readLine ())) in ();
        while (!nextLine <> (Obj.magic 0)) do
            nextLine := ((Obj.magic !lineNumberReader)#readLine ());
            ignore (componentInterfaceVector#add ((new UnknownHardware.unknownHardware (!nextLine))))
        done;
        (Obj.magic ((Obj.magic !lineNumberReader)))
        end
    

    method getComponent ((index : int)) : HardwareComponentInterface.hardwareComponentInterface =
        begin
        ((Obj.magic (componentInterfaceVector#get (index))) :> HardwareComponentInterface.hardwareComponentInterface)
        end
    

    method toString () : string =
        begin
        let stringBuilder : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let size : int ref = ref ((componentInterfaceVector#size ())) in ();
        for index = 0 to !size - 1 do
            let componentInterface : HardwareComponentInterface.hardwareComponentInterface ref = ref (((Obj.magic (componentInterfaceVector#get (index))) :> HardwareComponentInterface.hardwareComponentInterface)) in ();
            ignore (!stringBuilder#append ((java_string_of (Obj.repr !componentInterface))));
            ignore (!stringBuilder#append ((CommonSeps.getInstance ())#nEW_LINE))
        done;
        (java_string_of (Obj.repr !stringBuilder))
        end
    

    method compareTo : 'any1. 'any1 -> bool = fun (_hardwareInterface) ->
        begin
        true
        end [@@warning "-20"]
    

    method difference : 'any1 'return. 'any1 -> 'return = fun (_hardwareInterface) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        componentInterfaceVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        pROC_BUS_INPUT_DIRECTORY <- "/proc/bus/input/";
        dEVICES <- (pROC_BUS_INPUT_DIRECTORY ^ "devices/");
        mINHARDWARE <- 3;
        ();
        (self#init (dEVICES));
        let size : int ref = ref ((componentInterfaceVector#size ())) in ();
        if (!size < mINHARDWARE) then begin
            raise (Failure ("Not Enough Data For A Valid License On Linux"))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "AndroidHardware" (fun arguments -> Obj.repr (new androidHardware (Obj.obj arguments)))


