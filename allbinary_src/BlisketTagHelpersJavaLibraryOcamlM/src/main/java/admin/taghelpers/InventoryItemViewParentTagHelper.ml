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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.http.request.RequestMapInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import taghelpers.ValidationViewHelper *)
(* import tags.HelperTag *)
(* import views.admin.inventory.InventoryItemView *)
(* import views.admin.inventory.download.DownloadableInventoryItemView *)

class inventoryItemViewParentTagHelper () =
  object (self)
    

    method getInventoryItemView : 'any1 'return. 'any1 -> 'return = fun (inventoryTag) ->
        let inventoryTag = Obj.repr inventoryTag in
        try
        begin
        if ((Obj.magic inventoryTag) != (Obj.magic 0)) then begin
            (self#checkForValidationViewHelper (((Obj.magic inventoryTag)#getHelper ())));
            let validationViewHelper : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic inventoryTag)#getHelper ())))) in ();
            let viewObject : TransformInterface.transformInterface ref = ref ((((Obj.magic !validationViewHelper)#getViewObject ()) :> TransformInterface.transformInterface)) in ();
            if ((Obj.repr (!viewObject#getTypeId ())) != (Obj.repr (InventoryItemView.get_tYPE_ID ()))) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Must have "));
                ignore (!stringBuffer#append ("InventoryItemView and not: "));
                ignore (!stringBuffer#append ((java_get_class (Obj.repr ((Obj.magic inventoryTag)#getHelper ())))));
                raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
            end;
            raise (Java_return (Obj.repr ((Obj.magic !viewObject))))
        end else begin
            raise (Failure ("Must have parent tag."))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getDownloadableInventoryItemView : 'any1 'return. 'any1 -> 'return = fun (inventoryTag) ->
        let inventoryTag = Obj.repr inventoryTag in
        try
        begin
        if ((Obj.magic inventoryTag) != (Obj.magic 0)) then begin
            (self#checkForValidationViewHelper (((Obj.magic inventoryTag)#getHelper ())));
            let validationViewHelper : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic inventoryTag)#getHelper ())))) in ();
            let viewObject : TransformInterface.transformInterface ref = ref ((((Obj.magic !validationViewHelper)#getViewObject ()) :> TransformInterface.transformInterface)) in ();
            if ((Obj.repr (!viewObject#getTypeId ())) != (Obj.repr (DownloadableInventoryItemView.get_tYPE_ID ()))) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Must have "));
                ignore (!stringBuffer#append ("DownloadableInventoryItemView and not: "));
                ignore (!stringBuffer#append ((java_get_class (Obj.repr ((Obj.magic inventoryTag)#getHelper ())))));
                raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
            end;
            raise (Java_return (Obj.repr ((Obj.magic !viewObject))))
        end else begin
            raise (Failure ("Must have parent tag."))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getRequestMapInterface : 'any1. 'any1 -> RequestMapInterface.requestMapInterface = fun (inventoryTag) ->
        let inventoryTag = Obj.repr inventoryTag in
        try
        begin
        if ((Obj.magic inventoryTag) != (Obj.magic 0)) then begin
            (self#checkForValidationViewHelper (((Obj.magic inventoryTag)#getHelper ())));
            let validationViewHelper : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic inventoryTag)#getHelper ())))) in ();
            let viewObject : TransformInterface.transformInterface ref = ref ((((Obj.magic !validationViewHelper)#getViewObject ()) :> TransformInterface.transformInterface)) in ();
            if (((Obj.repr (!viewObject#getTypeId ())) != (Obj.repr (InventoryItemView.get_tYPE_ID ()))) && ((Obj.repr (!viewObject#getTypeId ())) != (Obj.repr (DownloadableInventoryItemView.get_tYPE_ID ())))) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Must have "));
                ignore (!stringBuffer#append ("specific TYPE_ID and not: "));
                ignore (!stringBuffer#append ((java_get_class (Obj.repr ((Obj.magic inventoryTag)#getHelper ())))));
                raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
            end;
            raise (Java_return (Obj.repr ((Obj.magic !viewObject))))
        end else begin
            raise (Failure ("Must have parent tag."))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method checkForValidationViewHelper : 'any1. 'any1 -> unit = fun (helperObject) ->
        let helperObject = Obj.repr helperObject in
        begin
        if (not ((java_instanceof (Obj.repr helperObject) "ValidationViewHelper"))) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Must have "));
            ignore (!stringBuffer#append ("ValidationViewHelper"));
            ignore (!stringBuffer#append ("and not: "));
            ignore (!stringBuffer#append ((java_get_class (Obj.repr helperObject))));
            raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
        end
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "InventoryItemViewParentTagHelper" (fun arguments -> Obj.repr (new inventoryItemViewParentTagHelper (Obj.obj arguments)))

let instance = (new inventoryItemViewParentTagHelper ())
let get_instance () = instance
let () = java_register_static "InventoryItemViewParentTagHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InventoryItemViewParentTagHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


