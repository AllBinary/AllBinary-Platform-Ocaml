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
(* package org.allbinary.business.category.properties *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.allbinary.business.category.CategoryUtil *)
(* import org.allbinary.business.category.hierarchy.CategoryHierarchyInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlData *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

let mAXDEPTH : int = 100
let get_mAXDEPTH () = mAXDEPTH
let () = java_register_static "CategoryProperties.get_mAXDEPTH" (fun _ -> Obj.repr (get_mAXDEPTH ()))
class categoryProperties ((name : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable category : string = ""
    method category = category
    method set_category value' = category <- value'
    
    
    
    

    method isRealRoot () : bool =
        begin
        false
        end
    

    method isRoot () : bool =
        begin
        false
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic (self#getValue ()))))
        end
    

    method getValue () : string =
        begin
        category
        end
    

    method getPath : 'any1. 'any1 -> AbPath.abPath = fun (categoryHierarchyInterface) ->
        let categoryHierarchyInterface = Obj.repr categoryHierarchyInterface in
        begin
        let abPathData : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))))) in ();
        let pathStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let nextParentCategoryInterface : CategoryInterface.categoryInterface ref = ref ((((Obj.magic categoryHierarchyInterface)#getParent ()) :> CategoryInterface.categoryInterface)) in ();
        if ((Obj.repr self) != (Obj.repr (!nextParentCategoryInterface#getProperties ()))) then begin
            let depthIndex : int ref = ref (0) in ();
            while (!nextParentCategoryInterface != (Obj.magic 0)) do
                if ((!nextParentCategoryInterface#getProperties ())#isRealRoot ()) then begin
                    raise Java_break
                end;
                if ((!nextParentCategoryInterface#getProperties ())#isRoot ()) then begin
                    ignore (!list#addAt (0, (java_string_of (Obj.repr (!nextParentCategoryInterface#getPath ())))))
                end else begin
                    ignore (!pathStringBuffer#delete (0, (!pathStringBuffer#length ())));
                    ignore (!list#addAt (0, (java_string_of (Obj.repr ((!pathStringBuffer#append ((Obj.magic !abPathData)#sEPARATOR))#append (((!nextParentCategoryInterface#getProperties ())#getValue ())))))))
                end;
                if ((Obj.repr !nextParentCategoryInterface) == (Obj.repr ((!nextParentCategoryInterface#getHierarchy ())#getParent ()))) then begin
                    raise Java_break
                end;
                nextParentCategoryInterface := ((!nextParentCategoryInterface#getHierarchy ())#getParent ());
                depthIndex := !depthIndex + 1;
                if (!depthIndex > mAXDEPTH) then begin
                    raise (Failure ("Probably Major Error"))
                end
            done
        end;
        ignore (!pathStringBuffer#delete (0, (!pathStringBuffer#length ())));
        ignore ((!pathStringBuffer#append ((Obj.magic !abPathData)#sEPARATOR))#append ((self#getValue ())));
        let size : int ref = ref ((!list#size ())) in ();
        for index = 0 to !size - 1 do
            ignore (!pathStringBuffer#append ((Obj.magic (!list#get (index)))))
        done;
        ignore (!pathStringBuffer#append ((Obj.magic !abPathData)#sEPARATOR));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore ((Obj.magic logUtil)#putF (("path = " ^ (java_string_of (Obj.repr !pathStringBuffer))), self, "getPath"))
        end;
        ((new AbPath.abPath ((java_string_of (Obj.repr !pathStringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)
        end [@@warning "-20"]
    

    method getFileName () : string =
        begin
        (((self#getValue ()) + (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP) + (CategoryData.getInstance ())#uNCRYPTED_EXTENSION)
        end
    

    method getWebAppPath () : AbPath.abPath =
        begin
        raise (Failure ("Not Root"))
        end
    

    method setValue ((value : string)) : unit =
        begin
        category <- value
        end
    

    method isValid () : bool =
        begin
        let returnBoolean : bool ref = ref (false) in ();
        if ((StringValidationUtil.getInstance ())#isValidRequired (category, 1, (AbSqlData.get_mAXSTRING ()))) then begin
            returnBoolean := true
        end;
        !returnBoolean
        end
    

    method toHashMap () : java_hash_map =
        begin
        let categoryHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!categoryHashMap#put ((CategoryData.getInstance ())#nAME, category));
        (!categoryHashMap :> java_hash_map)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let categoryVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!categoryVector#add (category));
        (!categoryVector :> BasicArrayList.basicArrayList)
        end
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-20"]
    

    method validationInfo () : string =
        begin
        (Obj.magic 0)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        category <- name
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "CategoryProperties" (fun arguments -> Obj.repr (new categoryProperties (Obj.obj arguments)))


