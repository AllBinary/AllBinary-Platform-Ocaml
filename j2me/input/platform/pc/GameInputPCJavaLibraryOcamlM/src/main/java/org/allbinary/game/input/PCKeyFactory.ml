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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)

class pCKeyFactory () =
  object
    val mutable keyEventWrapper : ABKeyEventWrapper.aBKeyEventWrapper = (Obj.magic 0)
    method keyEventWrapper = keyEventWrapper
    method set_keyEventWrapper value' = keyEventWrapper <- value'
    val mutable uNKNOWN : PCGameKey.pCGameKey = (Obj.magic 0)
    method uNKNOWN = uNKNOWN
    method set_uNKNOWN value' = uNKNOWN <- value'
    val mutable eNTER : PCGameKey.pCGameKey = (Obj.magic 0)
    method eNTER = eNTER
    method set_eNTER value' = eNTER <- value'
    val mutable _A : PCGameKey.pCGameKey = (Obj.magic 0)
    method _A = _A
    method set__A value' = _A <- value'
    val mutable _B : PCGameKey.pCGameKey = (Obj.magic 0)
    method _B = _B
    method set__B value' = _B <- value'
    val mutable _C : PCGameKey.pCGameKey = (Obj.magic 0)
    method _C = _C
    method set__C value' = _C <- value'
    val mutable _D : PCGameKey.pCGameKey = (Obj.magic 0)
    method _D = _D
    method set__D value' = _D <- value'
    val mutable _E : PCGameKey.pCGameKey = (Obj.magic 0)
    method _E = _E
    method set__E value' = _E <- value'
    val mutable _F : PCGameKey.pCGameKey = (Obj.magic 0)
    method _F = _F
    method set__F value' = _F <- value'
    val mutable _G : PCGameKey.pCGameKey = (Obj.magic 0)
    method _G = _G
    method set__G value' = _G <- value'
    val mutable _H : PCGameKey.pCGameKey = (Obj.magic 0)
    method _H = _H
    method set__H value' = _H <- value'
    val mutable _I : PCGameKey.pCGameKey = (Obj.magic 0)
    method _I = _I
    method set__I value' = _I <- value'
    val mutable _J : PCGameKey.pCGameKey = (Obj.magic 0)
    method _J = _J
    method set__J value' = _J <- value'
    val mutable _K : PCGameKey.pCGameKey = (Obj.magic 0)
    method _K = _K
    method set__K value' = _K <- value'
    val mutable _L : PCGameKey.pCGameKey = (Obj.magic 0)
    method _L = _L
    method set__L value' = _L <- value'
    val mutable _M : PCGameKey.pCGameKey = (Obj.magic 0)
    method _M = _M
    method set__M value' = _M <- value'
    val mutable _N : PCGameKey.pCGameKey = (Obj.magic 0)
    method _N = _N
    method set__N value' = _N <- value'
    val mutable _O : PCGameKey.pCGameKey = (Obj.magic 0)
    method _O = _O
    method set__O value' = _O <- value'
    val mutable _P : PCGameKey.pCGameKey = (Obj.magic 0)
    method _P = _P
    method set__P value' = _P <- value'
    val mutable _Q : PCGameKey.pCGameKey = (Obj.magic 0)
    method _Q = _Q
    method set__Q value' = _Q <- value'
    val mutable _R : PCGameKey.pCGameKey = (Obj.magic 0)
    method _R = _R
    method set__R value' = _R <- value'
    val mutable _S : PCGameKey.pCGameKey = (Obj.magic 0)
    method _S = _S
    method set__S value' = _S <- value'
    val mutable _T : PCGameKey.pCGameKey = (Obj.magic 0)
    method _T = _T
    method set__T value' = _T <- value'
    val mutable _U : PCGameKey.pCGameKey = (Obj.magic 0)
    method _U = _U
    method set__U value' = _U <- value'
    val mutable _V : PCGameKey.pCGameKey = (Obj.magic 0)
    method _V = _V
    method set__V value' = _V <- value'
    val mutable _W : PCGameKey.pCGameKey = (Obj.magic 0)
    method _W = _W
    method set__W value' = _W <- value'
    val mutable _X : PCGameKey.pCGameKey = (Obj.magic 0)
    method _X = _X
    method set__X value' = _X <- value'
    val mutable _Y : PCGameKey.pCGameKey = (Obj.magic 0)
    method _Y = _Y
    method set__Y value' = _Y <- value'
    val mutable _Z : PCGameKey.pCGameKey = (Obj.magic 0)
    method _Z = _Z
    method set__Z value' = _Z <- value'
    val mutable a : PCGameKey.pCGameKey = (Obj.magic 0)
    method a = a
    method set_a value' = a <- value'
    val mutable b : PCGameKey.pCGameKey = (Obj.magic 0)
    method b = b
    method set_b value' = b <- value'
    val mutable c : PCGameKey.pCGameKey = (Obj.magic 0)
    method c = c
    method set_c value' = c <- value'
    val mutable d : PCGameKey.pCGameKey = (Obj.magic 0)
    method d = d
    method set_d value' = d <- value'
    val mutable e : PCGameKey.pCGameKey = (Obj.magic 0)
    method e = e
    method set_e value' = e <- value'
    val mutable f : PCGameKey.pCGameKey = (Obj.magic 0)
    method f = f
    method set_f value' = f <- value'
    val mutable g : PCGameKey.pCGameKey = (Obj.magic 0)
    method g = g
    method set_g value' = g <- value'
    val mutable h : PCGameKey.pCGameKey = (Obj.magic 0)
    method h = h
    method set_h value' = h <- value'
    val mutable i : PCGameKey.pCGameKey = (Obj.magic 0)
    method i = i
    method set_i value' = i <- value'
    val mutable j : PCGameKey.pCGameKey = (Obj.magic 0)
    method j = j
    method set_j value' = j <- value'
    val mutable k : PCGameKey.pCGameKey = (Obj.magic 0)
    method k = k
    method set_k value' = k <- value'
    val mutable l : PCGameKey.pCGameKey = (Obj.magic 0)
    method l = l
    method set_l value' = l <- value'
    val mutable m : PCGameKey.pCGameKey = (Obj.magic 0)
    method m = m
    method set_m value' = m <- value'
    val mutable n : PCGameKey.pCGameKey = (Obj.magic 0)
    method n = n
    method set_n value' = n <- value'
    val mutable o : PCGameKey.pCGameKey = (Obj.magic 0)
    method o = o
    method set_o value' = o <- value'
    val mutable p : PCGameKey.pCGameKey = (Obj.magic 0)
    method p = p
    method set_p value' = p <- value'
    val mutable q : PCGameKey.pCGameKey = (Obj.magic 0)
    method q = q
    method set_q value' = q <- value'
    val mutable r : PCGameKey.pCGameKey = (Obj.magic 0)
    method r = r
    method set_r value' = r <- value'
    val mutable s : PCGameKey.pCGameKey = (Obj.magic 0)
    method s = s
    method set_s value' = s <- value'
    val mutable t : PCGameKey.pCGameKey = (Obj.magic 0)
    method t = t
    method set_t value' = t <- value'
    val mutable u : PCGameKey.pCGameKey = (Obj.magic 0)
    method u = u
    method set_u value' = u <- value'
    val mutable v : PCGameKey.pCGameKey = (Obj.magic 0)
    method v = v
    method set_v value' = v <- value'
    val mutable w : PCGameKey.pCGameKey = (Obj.magic 0)
    method w = w
    method set_w value' = w <- value'
    val mutable x : PCGameKey.pCGameKey = (Obj.magic 0)
    method x = x
    method set_x value' = x <- value'
    val mutable y : PCGameKey.pCGameKey = (Obj.magic 0)
    method y = y
    method set_y value' = y <- value'
    val mutable z : PCGameKey.pCGameKey = (Obj.magic 0)
    method z = z
    method set_z value' = z <- value'
    val mutable zERO : PCGameKey.pCGameKey = (Obj.magic 0)
    method zERO = zERO
    method set_zERO value' = zERO <- value'
    val mutable oNE : PCGameKey.pCGameKey = (Obj.magic 0)
    method oNE = oNE
    method set_oNE value' = oNE <- value'
    val mutable tWO : PCGameKey.pCGameKey = (Obj.magic 0)
    method tWO = tWO
    method set_tWO value' = tWO <- value'
    val mutable tHREE : PCGameKey.pCGameKey = (Obj.magic 0)
    method tHREE = tHREE
    method set_tHREE value' = tHREE <- value'
    val mutable fOUR : PCGameKey.pCGameKey = (Obj.magic 0)
    method fOUR = fOUR
    method set_fOUR value' = fOUR <- value'
    val mutable fIVE : PCGameKey.pCGameKey = (Obj.magic 0)
    method fIVE = fIVE
    method set_fIVE value' = fIVE <- value'
    val mutable sIX : PCGameKey.pCGameKey = (Obj.magic 0)
    method sIX = sIX
    method set_sIX value' = sIX <- value'
    val mutable sEVEN : PCGameKey.pCGameKey = (Obj.magic 0)
    method sEVEN = sEVEN
    method set_sEVEN value' = sEVEN <- value'
    val mutable eIGHT : PCGameKey.pCGameKey = (Obj.magic 0)
    method eIGHT = eIGHT
    method set_eIGHT value' = eIGHT <- value'
    val mutable nINE : PCGameKey.pCGameKey = (Obj.magic 0)
    method nINE = nINE
    method set_nINE value' = nINE <- value'
    val mutable dPAD_UP : PCGameKey.pCGameKey = (Obj.magic 0)
    method dPAD_UP = dPAD_UP
    method set_dPAD_UP value' = dPAD_UP <- value'
    val mutable dPAD_DOWN : PCGameKey.pCGameKey = (Obj.magic 0)
    method dPAD_DOWN = dPAD_DOWN
    method set_dPAD_DOWN value' = dPAD_DOWN <- value'
    val mutable dPAD_LEFT : PCGameKey.pCGameKey = (Obj.magic 0)
    method dPAD_LEFT = dPAD_LEFT
    method set_dPAD_LEFT value' = dPAD_LEFT <- value'
    val mutable dPAD_RIGHT : PCGameKey.pCGameKey = (Obj.magic 0)
    method dPAD_RIGHT = dPAD_RIGHT
    method set_dPAD_RIGHT value' = dPAD_RIGHT <- value'
    val mutable dPAD_UP2 : PCGameKey.pCGameKey = (Obj.magic 0)
    method dPAD_UP2 = dPAD_UP2
    method set_dPAD_UP2 value' = dPAD_UP2 <- value'
    val mutable dPAD_DOWN2 : PCGameKey.pCGameKey = (Obj.magic 0)
    method dPAD_DOWN2 = dPAD_DOWN2
    method set_dPAD_DOWN2 value' = dPAD_DOWN2 <- value'
    val mutable dPAD_LEFT2 : PCGameKey.pCGameKey = (Obj.magic 0)
    method dPAD_LEFT2 = dPAD_LEFT2
    method set_dPAD_LEFT2 value' = dPAD_LEFT2 <- value'
    val mutable dPAD_RIGHT2 : PCGameKey.pCGameKey = (Obj.magic 0)
    method dPAD_RIGHT2 = dPAD_RIGHT2
    method set_dPAD_RIGHT2 value' = dPAD_RIGHT2 <- value'
    val mutable cOMMA : PCGameKey.pCGameKey = (Obj.magic 0)
    method cOMMA = cOMMA
    method set_cOMMA value' = cOMMA <- value'
    val mutable sPACE : PCGameKey.pCGameKey = (Obj.magic 0)
    method sPACE = sPACE
    method set_sPACE value' = sPACE <- value'
    val mutable dEL : PCGameKey.pCGameKey = (Obj.magic 0)
    method dEL = dEL
    method set_dEL value' = dEL <- value'
    val mutable sTAR : PCGameKey.pCGameKey = (Obj.magic 0)
    method sTAR = sTAR
    method set_sTAR value' = sTAR <- value'
    val mutable qUESTION : PCGameKey.pCGameKey = (Obj.magic 0)
    method qUESTION = qUESTION
    method set_qUESTION value' = qUESTION <- value'
    val mutable pERIOD : PCGameKey.pCGameKey = (Obj.magic 0)
    method pERIOD = pERIOD
    method set_pERIOD value' = pERIOD <- value'
    val mutable eSCAPE : PCGameKey.pCGameKey = (Obj.magic 0)
    method eSCAPE = eSCAPE
    method set_eSCAPE value' = eSCAPE <- value'
    val mutable bACK_SPACE : PCGameKey.pCGameKey = (Obj.magic 0)
    method bACK_SPACE = bACK_SPACE
    method set_bACK_SPACE value' = bACK_SPACE <- value'
    

    method isSubmission : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr eNTER)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isDelete : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr dEL)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isBackSpace : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr bACK_SPACE)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isUp : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if (((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_UP)) || ((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_UP2))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isDown : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if (((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_DOWN)) || ((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_DOWN2))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isLeft : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if (((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_LEFT)) || ((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_LEFT2))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isRight : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if (((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_RIGHT)) || ((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_RIGHT2))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isEnter : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr eNTER)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        keyEventWrapper <- ((ABKeyEventWrapper.getInstance ()) :> ABKeyEventWrapper.aBKeyEventWrapper);
        uNKNOWN <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_UNDEFINED, "UNKNOWN")) :> PCGameKey.pCGameKey);
        eNTER <- ((new PCGameKey.pCGameKey (5, "Enter")) :> PCGameKey.pCGameKey);
        _A <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_A, "A")) :> PCGameKey.pCGameKey);
        _B <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_B, "B")) :> PCGameKey.pCGameKey);
        _C <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_C, "C")) :> PCGameKey.pCGameKey);
        _D <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_D, "D")) :> PCGameKey.pCGameKey);
        _E <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_E, "E")) :> PCGameKey.pCGameKey);
        _F <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_F, "F")) :> PCGameKey.pCGameKey);
        _G <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_G, "G")) :> PCGameKey.pCGameKey);
        _H <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_H, "H")) :> PCGameKey.pCGameKey);
        _I <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_I, "I")) :> PCGameKey.pCGameKey);
        _J <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_J, "J")) :> PCGameKey.pCGameKey);
        _K <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_K, "K")) :> PCGameKey.pCGameKey);
        _L <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_L, "L")) :> PCGameKey.pCGameKey);
        _M <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_M, "M")) :> PCGameKey.pCGameKey);
        _N <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_N, "N")) :> PCGameKey.pCGameKey);
        _O <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_O, "O")) :> PCGameKey.pCGameKey);
        _P <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_P, "P")) :> PCGameKey.pCGameKey);
        _Q <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_Q, "Q")) :> PCGameKey.pCGameKey);
        _R <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_R, "R")) :> PCGameKey.pCGameKey);
        _S <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_S, "S")) :> PCGameKey.pCGameKey);
        _T <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_T, "T")) :> PCGameKey.pCGameKey);
        _U <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_U, "U")) :> PCGameKey.pCGameKey);
        _V <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_V, "V")) :> PCGameKey.pCGameKey);
        _W <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_W, "W")) :> PCGameKey.pCGameKey);
        _X <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_X, "X")) :> PCGameKey.pCGameKey);
        _Y <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_Y, "Y")) :> PCGameKey.pCGameKey);
        _Z <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_Z, "Z")) :> PCGameKey.pCGameKey);
        a <- ((new PCGameKey.pCGameKey (97, "a")) :> PCGameKey.pCGameKey);
        b <- ((new PCGameKey.pCGameKey (98, "b")) :> PCGameKey.pCGameKey);
        c <- ((new PCGameKey.pCGameKey (99, "c")) :> PCGameKey.pCGameKey);
        d <- ((new PCGameKey.pCGameKey (100, "d")) :> PCGameKey.pCGameKey);
        e <- ((new PCGameKey.pCGameKey (101, "e")) :> PCGameKey.pCGameKey);
        f <- ((new PCGameKey.pCGameKey (102, "f")) :> PCGameKey.pCGameKey);
        g <- ((new PCGameKey.pCGameKey (103, "g")) :> PCGameKey.pCGameKey);
        h <- ((new PCGameKey.pCGameKey (104, "h")) :> PCGameKey.pCGameKey);
        i <- ((new PCGameKey.pCGameKey (105, "i")) :> PCGameKey.pCGameKey);
        j <- ((new PCGameKey.pCGameKey (106, "j")) :> PCGameKey.pCGameKey);
        k <- ((new PCGameKey.pCGameKey (107, "k")) :> PCGameKey.pCGameKey);
        l <- ((new PCGameKey.pCGameKey (108, "l")) :> PCGameKey.pCGameKey);
        m <- ((new PCGameKey.pCGameKey (109, "m")) :> PCGameKey.pCGameKey);
        n <- ((new PCGameKey.pCGameKey (110, "n")) :> PCGameKey.pCGameKey);
        o <- ((new PCGameKey.pCGameKey (111, "o")) :> PCGameKey.pCGameKey);
        p <- ((new PCGameKey.pCGameKey (112, "p")) :> PCGameKey.pCGameKey);
        q <- ((new PCGameKey.pCGameKey (113, "q")) :> PCGameKey.pCGameKey);
        r <- ((new PCGameKey.pCGameKey (114, "r")) :> PCGameKey.pCGameKey);
        s <- ((new PCGameKey.pCGameKey (115, "s")) :> PCGameKey.pCGameKey);
        t <- ((new PCGameKey.pCGameKey (116, "t")) :> PCGameKey.pCGameKey);
        u <- ((new PCGameKey.pCGameKey (117, "u")) :> PCGameKey.pCGameKey);
        v <- ((new PCGameKey.pCGameKey (118, "v")) :> PCGameKey.pCGameKey);
        w <- ((new PCGameKey.pCGameKey (119, "w")) :> PCGameKey.pCGameKey);
        x <- ((new PCGameKey.pCGameKey (120, (PositionStrings.getInstance ())#x)) :> PCGameKey.pCGameKey);
        y <- ((new PCGameKey.pCGameKey (121, (PositionStrings.getInstance ())#y)) :> PCGameKey.pCGameKey);
        z <- ((new PCGameKey.pCGameKey (122, "z")) :> PCGameKey.pCGameKey);
        zERO <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_0, (CommonPhoneStrings.getInstance ())#zERO)) :> PCGameKey.pCGameKey);
        oNE <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_1, (CommonPhoneStrings.getInstance ())#oNE)) :> PCGameKey.pCGameKey);
        tWO <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_2, (CommonPhoneStrings.getInstance ())#tWO)) :> PCGameKey.pCGameKey);
        tHREE <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_3, (CommonPhoneStrings.getInstance ())#tHREE)) :> PCGameKey.pCGameKey);
        fOUR <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_4, (CommonPhoneStrings.getInstance ())#fOUR)) :> PCGameKey.pCGameKey);
        fIVE <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_5, (CommonPhoneStrings.getInstance ())#fIVE)) :> PCGameKey.pCGameKey);
        sIX <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_6, (CommonPhoneStrings.getInstance ())#sIX)) :> PCGameKey.pCGameKey);
        sEVEN <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_7, (CommonPhoneStrings.getInstance ())#sEVEN)) :> PCGameKey.pCGameKey);
        eIGHT <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_8, (CommonPhoneStrings.getInstance ())#eIGHT)) :> PCGameKey.pCGameKey);
        nINE <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_9, (CommonPhoneStrings.getInstance ())#nINE)) :> PCGameKey.pCGameKey);
        dPAD_UP <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_UP, (CommonPhoneStrings.getInstance ())#uP)) :> PCGameKey.pCGameKey);
        dPAD_DOWN <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_DOWN, (CommonPhoneStrings.getInstance ())#dOWN)) :> PCGameKey.pCGameKey);
        dPAD_LEFT <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_LEFT, (CommonPhoneStrings.getInstance ())#lEFT)) :> PCGameKey.pCGameKey);
        dPAD_RIGHT <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_RIGHT, (CommonPhoneStrings.getInstance ())#rIGHT)) :> PCGameKey.pCGameKey);
        dPAD_UP2 <- (dPAD_UP :> PCGameKey.pCGameKey);
        dPAD_DOWN2 <- (dPAD_DOWN :> PCGameKey.pCGameKey);
        dPAD_LEFT2 <- (dPAD_LEFT :> PCGameKey.pCGameKey);
        dPAD_RIGHT2 <- (dPAD_RIGHT :> PCGameKey.pCGameKey);
        cOMMA <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_COMMA, "COMMA")) :> PCGameKey.pCGameKey);
        sPACE <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_SPACE, "SPACE")) :> PCGameKey.pCGameKey);
        dEL <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_DELETE, "DEL")) :> PCGameKey.pCGameKey);
        sTAR <- ((new PCGameKey.pCGameKey (42, (CommonPhoneStrings.getInstance ())#sTAR)) :> PCGameKey.pCGameKey);
        qUESTION <- ((new PCGameKey.pCGameKey (47, "?")) :> PCGameKey.pCGameKey);
        pERIOD <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_PERIOD, (CommonSeps.getInstance ())#pERIOD)) :> PCGameKey.pCGameKey);
        eSCAPE <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_ESCAPE, "Esc")) :> PCGameKey.pCGameKey);
        bACK_SPACE <- ((new PCGameKey.pCGameKey (keyEventWrapper#vK_BACK_SPACE, "Backspace")) :> PCGameKey.pCGameKey);
        ()
      end
  end
let () = java_register_constructor "PCKeyFactory" (fun arguments -> Obj.repr (new pCKeyFactory (Obj.obj arguments)))

let sINGLETON = (new pCKeyFactory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "PCKeyFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "PCKeyFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


