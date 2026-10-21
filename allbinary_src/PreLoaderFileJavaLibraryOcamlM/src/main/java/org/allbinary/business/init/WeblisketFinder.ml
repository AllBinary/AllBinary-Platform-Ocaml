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
(* package org.allbinary.business.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.directory.SubDirectory *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let kEY : string = "installerdata.dat"
let get_kEY () = kEY
let () = java_register_static "WeblisketFinder.get_kEY" (fun _ -> Obj.repr (get_kEY ()))
class weblisketFinder () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable subDirectory : SubDirectory.subDirectory = (Obj.magic 0)
    method subDirectory = subDirectory
    method set_subDirectory value' = subDirectory <- value'
    
    

    method findAll ((path : string)) : BasicArrayList.basicArrayList =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "findAll"));
            ((subDirectory#search (kEY, (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (path)))))) :> BasicArrayList.basicArrayList)
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "findAll", e));
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "findAll", e))
            end;
            ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end)
        end
    

    method getInstallationPath : 'any1. 'any1 -> string = fun (file) ->
        let file = Obj.repr file in
        try
        begin
        (try
            let filePath : string ref = ref (((Obj.magic file)#getPath ())) in ();
            let end_ : int ref = ref ((java_string_index_of !filePath (Obj.repr (kEY)))) in ();
            if (!end_ < 0) then begin
                raise (Java_return (Obj.repr ((Obj.magic 0))))
            end;
            (String.sub !filePath (0) ((!end_) - (0)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRELOADERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "getInstallationPath", e))
            end;
            (Obj.magic 0)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        subDirectory <- ((SubDirectory.getInstance ()) :> SubDirectory.subDirectory);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "WeblisketFinder" (fun arguments -> Obj.repr (new weblisketFinder (Obj.obj arguments)))

let instance = (new weblisketFinder ())
let get_instance () = instance
let () = java_register_static "WeblisketFinder.get_instance" (fun _ -> Obj.repr (get_instance ()))

let rec getInstance () =
        begin
        instance
        end

and main ((_args : string array)) : unit =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let vector : BasicArrayList.basicArrayList ref = ref ((((getInstance ())#findAll (!stringUtil#eMPTY_STRING)) :> BasicArrayList.basicArrayList)) in ();
        (print_endline (java_string_of (Obj.repr ((!vector#size ())))))
        end
let () = java_register_static "WeblisketFinder.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "WeblisketFinder.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


