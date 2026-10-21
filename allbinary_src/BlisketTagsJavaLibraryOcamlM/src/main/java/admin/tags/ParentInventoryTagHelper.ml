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
(* package admin.tags *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.jsp.tagext.Tag *)
(* import org.allbinary.logic.string.StringMaker *)

class parentInventoryTagHelper () =
  object
    

    method isValid : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_tagClass, parentTag) ->
        let parentTag = Obj.repr parentTag in
        begin
        if ((Obj.magic parentTag) == (Obj.magic 0)) then begin
            raise (Failure ("Must have parent tag."))
        end else if (not ((java_instanceof (Obj.repr (Obj.magic parentTag)) "HelperTag"))) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Must have at least a "));
            ignore (!stringBuffer#append ("tags.HelperTag"));
            ignore (!stringBuffer#append (" as parent"));
            ignore (!stringBuffer#append ("and not: "));
            ignore (!stringBuffer#append ((java_get_class (Obj.repr (Obj.magic parentTag)))));
            raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
        end
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ParentInventoryTagHelper" (fun arguments -> Obj.repr (new parentInventoryTagHelper (Obj.obj arguments)))

let instance = (new parentInventoryTagHelper ())
let get_instance () = instance
let () = java_register_static "ParentInventoryTagHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ParentInventoryTagHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


