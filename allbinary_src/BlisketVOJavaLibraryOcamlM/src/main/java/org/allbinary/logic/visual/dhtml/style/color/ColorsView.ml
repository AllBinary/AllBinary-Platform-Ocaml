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
(* package org.allbinary.logic.visual.dhtml.style.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class colorsView () =
  object (self)
    val mutable commonPhoneStrings : CommonPhoneStrings.commonPhoneStrings = (Obj.magic 0)
    method commonPhoneStrings = commonPhoneStrings
    method set_commonPhoneStrings value' = commonPhoneStrings <- value'
    val mutable hEXRADIX : int = 0
    method hEXRADIX = hEXRADIX
    method set_hEXRADIX value' = hEXRADIX <- value'
    val mutable mAX : int = 0
    method mAX = mAX
    method set_mAX value' = mAX <- value'
    val mutable delta : int = 0
    method delta = delta
    method set_delta value' = delta <- value'
    
    

    method getColorNode : 'any1 'return. 'any1 * int * int * int -> 'return = fun (document, (redIndex : int), (greenIndex : int), (blueIndex : int)) ->
        let document = Obj.repr document in
        begin
        let hexColorStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if (redIndex < hEXRADIX) then begin
            ignore (!hexColorStringBuffer#append (commonPhoneStrings#zERO))
        end;
        ignore (!hexColorStringBuffer#append ((Obj.magic (java_call_static "Integer.toString" (Obj.repr (redIndex, hEXRADIX))))));
        if (greenIndex < hEXRADIX) then begin
            ignore (!hexColorStringBuffer#append (commonPhoneStrings#zERO))
        end;
        ignore (!hexColorStringBuffer#append ((Obj.magic (java_call_static "Integer.toString" (Obj.repr (greenIndex, hEXRADIX))))));
        if (blueIndex < hEXRADIX) then begin
            ignore (!hexColorStringBuffer#append (commonPhoneStrings#zERO))
        end;
        ignore (!hexColorStringBuffer#append ((Obj.magic (java_call_static "Integer.toString" (Obj.repr (blueIndex, hEXRADIX))))));
        let colorNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (ColorData.getInstance ())#nAME, (java_string_of (Obj.repr !hexColorStringBuffer)))))) in ();
        (Obj.magic ((Obj.magic !colorNode)))
        end [@@warning "-20"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (ColorsData.getInstance ())#nAME, "RGB Colors In Hex")))) in ();
        let blackNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (ColorData.getInstance ())#nAME, "000000")))) in ();
        ignore ((Obj.magic !node)#appendChild ((Obj.magic !blackNode)));
        let index : int ref = ref (0) in ();
        while (index < mAX) do
            let hexColorStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if (index < hEXRADIX) then begin
                ignore (!hexColorStringBuffer#append (commonPhoneStrings#zERO))
            end;
            ignore (!hexColorStringBuffer#append ((Obj.magic (java_call_static "Integer.toString" (Obj.repr (index, hEXRADIX))))));
            if (index < hEXRADIX) then begin
                ignore (!hexColorStringBuffer#append (commonPhoneStrings#zERO))
            end;
            ignore (!hexColorStringBuffer#append ((Obj.magic (java_call_static "Integer.toString" (Obj.repr (index, hEXRADIX))))));
            if (index < hEXRADIX) then begin
                ignore (!hexColorStringBuffer#append (commonPhoneStrings#zERO))
            end;
            ignore (!hexColorStringBuffer#append ((Obj.magic (java_call_static "Integer.toString" (Obj.repr (index, hEXRADIX))))));
            let colorNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (ColorData.getInstance ())#nAME, (java_string_of (Obj.repr !hexColorStringBuffer)))))) in ();
            ignore ((Obj.magic !node)#appendChild ((Obj.magic !colorNode)));
            index <- (index + delta)
        done;
        let whiteNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (ColorData.getInstance ())#nAME, "FFFFFF")))) in ();
        ignore ((Obj.magic !node)#appendChild ((Obj.magic !whiteNode)));
        let blueIndex : int ref = ref ((mAX / 2)) in ();
        while (blueIndex < mAX) do
            let greenIndex : int ref = ref (0) in ();
            while (greenIndex < (mAX / 2)) do
                let redIndex : int ref = ref (0) in ();
                while (redIndex < (mAX / 2)) do
                    ignore ((Obj.magic !node)#appendChild ((self#getColorNode ((Obj.magic document), redIndex, greenIndex, blueIndex))));
                    redIndex <- (redIndex + delta)
                done;
                greenIndex <- (greenIndex + delta)
            done;
            blueIndex <- (blueIndex + delta)
        done;
        let redIndex : int ref = ref ((mAX / 2)) in ();
        while (redIndex < mAX) do
            let greenIndex : int ref = ref (0) in ();
            while (greenIndex < (mAX / 2)) do
                let blueIndex : int ref = ref (0) in ();
                while (blueIndex < (mAX / 2)) do
                    ignore ((Obj.magic !node)#appendChild ((self#getColorNode ((Obj.magic document), redIndex, greenIndex, blueIndex))));
                    blueIndex <- (blueIndex + delta)
                done;
                greenIndex <- (greenIndex + delta)
            done;
            redIndex <- (redIndex + delta)
        done;
        let greenIndex : int ref = ref ((mAX / 2)) in ();
        while (greenIndex < mAX) do
            let redIndex : int ref = ref (0) in ();
            while (redIndex < (mAX / 2)) do
                let blueIndex : int ref = ref (0) in ();
                while (blueIndex < (mAX / 2)) do
                    ignore ((Obj.magic !node)#appendChild ((self#getColorNode ((Obj.magic document), redIndex, greenIndex, blueIndex))));
                    blueIndex <- (blueIndex + delta)
                done;
                redIndex <- (redIndex + delta)
            done;
            greenIndex <- (greenIndex + delta)
        done;
        let greenIndex : int ref = ref (0) in ();
        while (greenIndex < mAX) do
            let redIndex : int ref = ref (0) in ();
            while (redIndex < mAX) do
                let blueIndex : int ref = ref (0) in ();
                while (blueIndex < mAX) do
                    ignore ((Obj.magic !node)#appendChild ((self#getColorNode ((Obj.magic document), redIndex, greenIndex, blueIndex))));
                    blueIndex <- (blueIndex + (2 * delta))
                done;
                redIndex <- (redIndex + (2 * delta))
            done;
            greenIndex <- (greenIndex + (2 * delta))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        commonPhoneStrings <- ((CommonPhoneStrings.getInstance ()) :> CommonPhoneStrings.commonPhoneStrings);
        hEXRADIX <- 16;
        mAX <- 255;
        delta <- 20;
        ();
        ()
      end
  end
let () = java_register_constructor "ColorsView" (fun arguments -> Obj.repr (new colorsView (Obj.obj arguments)))


