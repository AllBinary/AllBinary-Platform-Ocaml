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
(* package org.allbinary.logic.visual.dhtml.html *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)

class htmlTags () =
  object
    val mutable htmlTagVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method htmlTagVector = htmlTagVector
    method set_htmlTagVector value' = htmlTagVector <- value'
    
    

    method get ((index : int)) : HtmlTag.htmlTag =
        begin
        ((Obj.magic (htmlTagVector#get (index))) :> HtmlTag.htmlTag)
        end
    

    method add : 'any1. 'any1 -> unit = fun (htmlTag) ->
        let htmlTag = Obj.repr htmlTag in
        begin
        ignore (htmlTagVector#add ((Obj.magic htmlTag)))
        end [@@warning "-20"]
    

    method size () : int =
        begin
        (htmlTagVector#size ())
        end

    initializer
      begin
        ();
        ();
        htmlTagVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end
let () = java_register_constructor "HtmlTags" (fun arguments -> Obj.repr (new htmlTags (Obj.obj arguments)))


