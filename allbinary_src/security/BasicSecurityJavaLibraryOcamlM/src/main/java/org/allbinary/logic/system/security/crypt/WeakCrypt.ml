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
(* package org.allbinary.logic.system.security.crypt *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt *)
(* import org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory *)
(* import org.allbinary.string.CommonStrings *)

let keys : string array ref = ref ([| "qwres6qewrupoi1132790jfahleavi89398"; "143uk32lngf8675gt1tv9214uvt924ut9u9"; "12kvjlvlkv11445v12951v512v9m51295v1"; "gampipoiupg4g43y5u238tu2485u20u0932"; "a93u5uu02s2d2g3259u4395u409u093u9vu"; "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j"; "2lk5fn5j23nr8f0233vq35n23jn58vhy843"; "9q24334m598t092tkn2iv0982456n425j9g"; "5m9uvmt9436243m5v34g09d43i52ki35g99"; "n123lr1iubiu2br32lv32rbu23b32ub2rlb"; "va0u0iovji2ojpvj2oij22poiu4ov2uv28v"; "bkk80gn2v9uc902340ut209pcup0u09utc9"; "mn32m32neee23c42fn32nf3mf2n3fn2m3fm"; "zcxpozo3423voizupovsijevnv3n33o33n3"; "v0345324thv93h03893893vh893v8h3vhzz"; "v8na898v8wyef9ty39yv98yaw39yeeyf8ye"; "45zd36d34jg09434hfshp8uj9sy8s7cyr78"; "b098yy0908vdvh983b2lb327980a76s5e5e"; "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh"; "vblkzhhzp8yvzi8u4t9856456zy3rv8a388"; "da7696023rgf28dssfa98asd879hg32hewe"; "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf"; "4gijvqo8vq984hv984hj5j3511h832hf833" |])
let get_keys () = !keys
let set_keys value' = keys := value'
let () = java_register_static "WeakCrypt.get_keys" (fun _ -> Obj.repr (get_keys ()))
let kEYMAX : int ref = ref ((Array.length !keys))
let get_kEYMAX () = !kEYMAX
let set_kEYMAX value' = kEYMAX := value'
let () = java_register_static "WeakCrypt.get_kEYMAX" (fun _ -> Obj.repr (get_kEYMAX ()))
class weakCrypt ((key : int)) =
  object (self)
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable abCrypt : Obj.t = Obj.repr 0
    method abCrypt : 'r. 'r = Obj.magic abCrypt
    method set_abCrypt : 'v. 'v -> unit = fun value' -> abCrypt <- Obj.repr value'
    
    

    method encrypt ((value : string)) : string =
        begin
        (try
            let crypted : int array ref = ref (((Obj.magic abCrypt)#encrypt (((Obj.magic tsUtil)#getByteArray (value))))) in ();
            (DatabaseEncoder.encode (!crypted))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("Encrypt Failed", self, "encrypt", e))));
            (StringUtil.getInstance ())#eMPTY_STRING
        end)
        end
    

    method decrypt ((value : string)) : string =
        begin
        (try
            let decrypted : int array ref = ref (((Obj.magic abCrypt)#decrypt ((DatabaseEncoder.decode (value))))) in ();
            (Obj.obj (java_new "String" (Obj.repr (!decrypted))))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("decrypt Failed", self, "decrypt", e))));
            (StringUtil.getInstance ())#eMPTY_STRING
        end)
        end

    initializer
      begin
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        abCrypt <- (Obj.repr (Obj.obj (java_new "AbCrypt" (Obj.repr ((Obj.magic (java_call_static "KeySpecFactory.getInstance" (Obj.repr ())))#dES)))));
        ();
        (try
            ignore ((Obj.magic abCrypt)#init (!keys.(key)))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, self, "SuperCrypt(key)", e))))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "WeakCrypt" (fun arguments -> Obj.repr (new weakCrypt (Obj.obj arguments)))


