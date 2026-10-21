(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.view.KeyEvent *)
(* import org.allbinary.android.ActivityFractureUtil *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class androidKeyFactory () =
  object (self)
    inherit ActivityFractureUtil.activityFractureUtil ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable uNKNOWN : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method uNKNOWN = uNKNOWN
    method set_uNKNOWN value' = uNKNOWN <- value'
    val mutable kEYCODE_BUTTON_L1 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_L1 = kEYCODE_BUTTON_L1
    method set_kEYCODE_BUTTON_L1 value' = kEYCODE_BUTTON_L1 <- value'
    val mutable kEYCODE_BUTTON_R1 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_R1 = kEYCODE_BUTTON_R1
    method set_kEYCODE_BUTTON_R1 value' = kEYCODE_BUTTON_R1 <- value'
    val mutable kEYCODE_BUTTON_THUMBR : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_THUMBR = kEYCODE_BUTTON_THUMBR
    method set_kEYCODE_BUTTON_THUMBR value' = kEYCODE_BUTTON_THUMBR <- value'
    val mutable kEYCODE_BUTTON_THUMBL : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_THUMBL = kEYCODE_BUTTON_THUMBL
    method set_kEYCODE_BUTTON_THUMBL value' = kEYCODE_BUTTON_THUMBL <- value'
    val mutable kEYCODE_BUTTON_START : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_START = kEYCODE_BUTTON_START
    method set_kEYCODE_BUTTON_START value' = kEYCODE_BUTTON_START <- value'
    val mutable kEYCODE_BUTTON_MODE : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_MODE = kEYCODE_BUTTON_MODE
    method set_kEYCODE_BUTTON_MODE value' = kEYCODE_BUTTON_MODE <- value'
    val mutable kEYCODE_BUTTON_B : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_B = kEYCODE_BUTTON_B
    method set_kEYCODE_BUTTON_B value' = kEYCODE_BUTTON_B <- value'
    val mutable kEYCODE_BUTTON_A : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_A = kEYCODE_BUTTON_A
    method set_kEYCODE_BUTTON_A value' = kEYCODE_BUTTON_A <- value'
    val mutable kEYCODE_BUTTON_X : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_X = kEYCODE_BUTTON_X
    method set_kEYCODE_BUTTON_X value' = kEYCODE_BUTTON_X <- value'
    val mutable kEYCODE_BUTTON_Y : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_Y = kEYCODE_BUTTON_Y
    method set_kEYCODE_BUTTON_Y value' = kEYCODE_BUTTON_Y <- value'
    val mutable kEYCODE_BUTTON_L2 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_L2 = kEYCODE_BUTTON_L2
    method set_kEYCODE_BUTTON_L2 value' = kEYCODE_BUTTON_L2 <- value'
    val mutable kEYCODE_BUTTON_R2 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_R2 = kEYCODE_BUTTON_R2
    method set_kEYCODE_BUTTON_R2 value' = kEYCODE_BUTTON_R2 <- value'
    val mutable kEYCODE_BUTTON_SELECT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_SELECT = kEYCODE_BUTTON_SELECT
    method set_kEYCODE_BUTTON_SELECT value' = kEYCODE_BUTTON_SELECT <- value'
    val mutable kEYCODE_BUTTON_C : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_C = kEYCODE_BUTTON_C
    method set_kEYCODE_BUTTON_C value' = kEYCODE_BUTTON_C <- value'
    val mutable kEYCODE_BUTTON_Z : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_Z = kEYCODE_BUTTON_Z
    method set_kEYCODE_BUTTON_Z value' = kEYCODE_BUTTON_Z <- value'
    val mutable kEYCODE_BUTTON_1 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_1 = kEYCODE_BUTTON_1
    method set_kEYCODE_BUTTON_1 value' = kEYCODE_BUTTON_1 <- value'
    val mutable kEYCODE_BUTTON_10 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_10 = kEYCODE_BUTTON_10
    method set_kEYCODE_BUTTON_10 value' = kEYCODE_BUTTON_10 <- value'
    val mutable kEYCODE_BUTTON_11 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_11 = kEYCODE_BUTTON_11
    method set_kEYCODE_BUTTON_11 value' = kEYCODE_BUTTON_11 <- value'
    val mutable kEYCODE_BUTTON_12 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_12 = kEYCODE_BUTTON_12
    method set_kEYCODE_BUTTON_12 value' = kEYCODE_BUTTON_12 <- value'
    val mutable kEYCODE_BUTTON_13 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_13 = kEYCODE_BUTTON_13
    method set_kEYCODE_BUTTON_13 value' = kEYCODE_BUTTON_13 <- value'
    val mutable kEYCODE_BUTTON_14 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_14 = kEYCODE_BUTTON_14
    method set_kEYCODE_BUTTON_14 value' = kEYCODE_BUTTON_14 <- value'
    val mutable kEYCODE_BUTTON_15 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_15 = kEYCODE_BUTTON_15
    method set_kEYCODE_BUTTON_15 value' = kEYCODE_BUTTON_15 <- value'
    val mutable kEYCODE_BUTTON_16 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_16 = kEYCODE_BUTTON_16
    method set_kEYCODE_BUTTON_16 value' = kEYCODE_BUTTON_16 <- value'
    val mutable kEYCODE_BUTTON_2 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_2 = kEYCODE_BUTTON_2
    method set_kEYCODE_BUTTON_2 value' = kEYCODE_BUTTON_2 <- value'
    val mutable kEYCODE_BUTTON_3 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_3 = kEYCODE_BUTTON_3
    method set_kEYCODE_BUTTON_3 value' = kEYCODE_BUTTON_3 <- value'
    val mutable kEYCODE_BUTTON_4 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_4 = kEYCODE_BUTTON_4
    method set_kEYCODE_BUTTON_4 value' = kEYCODE_BUTTON_4 <- value'
    val mutable kEYCODE_BUTTON_5 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_5 = kEYCODE_BUTTON_5
    method set_kEYCODE_BUTTON_5 value' = kEYCODE_BUTTON_5 <- value'
    val mutable kEYCODE_BUTTON_6 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_6 = kEYCODE_BUTTON_6
    method set_kEYCODE_BUTTON_6 value' = kEYCODE_BUTTON_6 <- value'
    val mutable kEYCODE_BUTTON_7 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_7 = kEYCODE_BUTTON_7
    method set_kEYCODE_BUTTON_7 value' = kEYCODE_BUTTON_7 <- value'
    val mutable kEYCODE_BUTTON_8 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_8 = kEYCODE_BUTTON_8
    method set_kEYCODE_BUTTON_8 value' = kEYCODE_BUTTON_8 <- value'
    val mutable kEYCODE_BUTTON_9 : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method kEYCODE_BUTTON_9 = kEYCODE_BUTTON_9
    method set_kEYCODE_BUTTON_9 value' = kEYCODE_BUTTON_9 <- value'
    val mutable sOFT_LEFT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sOFT_LEFT = sOFT_LEFT
    method set_sOFT_LEFT value' = sOFT_LEFT <- value'
    val mutable sOFT_RIGHT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sOFT_RIGHT = sOFT_RIGHT
    method set_sOFT_RIGHT value' = sOFT_RIGHT <- value'
    val mutable hOME : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method hOME = hOME
    method set_hOME value' = hOME <- value'
    val mutable bACK : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method bACK = bACK
    method set_bACK value' = bACK <- value'
    val mutable cALL : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method cALL = cALL
    method set_cALL value' = cALL <- value'
    val mutable eNDCALL : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method eNDCALL = eNDCALL
    method set_eNDCALL value' = eNDCALL <- value'
    val mutable zERO : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method zERO = zERO
    method set_zERO value' = zERO <- value'
    val mutable oNE : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method oNE = oNE
    method set_oNE value' = oNE <- value'
    val mutable tWO : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method tWO = tWO
    method set_tWO value' = tWO <- value'
    val mutable tHREE : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method tHREE = tHREE
    method set_tHREE value' = tHREE <- value'
    val mutable fOUR : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method fOUR = fOUR
    method set_fOUR value' = fOUR <- value'
    val mutable fIVE : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method fIVE = fIVE
    method set_fIVE value' = fIVE <- value'
    val mutable sIX : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sIX = sIX
    method set_sIX value' = sIX <- value'
    val mutable sEVEN : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sEVEN = sEVEN
    method set_sEVEN value' = sEVEN <- value'
    val mutable eIGHT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method eIGHT = eIGHT
    method set_eIGHT value' = eIGHT <- value'
    val mutable nINE : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method nINE = nINE
    method set_nINE value' = nINE <- value'
    val mutable sTAR : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sTAR = sTAR
    method set_sTAR value' = sTAR <- value'
    val mutable pOUND : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method pOUND = pOUND
    method set_pOUND value' = pOUND <- value'
    val mutable dPAD_UP : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method dPAD_UP = dPAD_UP
    method set_dPAD_UP value' = dPAD_UP <- value'
    val mutable dPAD_DOWN : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method dPAD_DOWN = dPAD_DOWN
    method set_dPAD_DOWN value' = dPAD_DOWN <- value'
    val mutable dPAD_LEFT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method dPAD_LEFT = dPAD_LEFT
    method set_dPAD_LEFT value' = dPAD_LEFT <- value'
    val mutable dPAD_RIGHT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method dPAD_RIGHT = dPAD_RIGHT
    method set_dPAD_RIGHT value' = dPAD_RIGHT <- value'
    val mutable dPAD_CENTER : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method dPAD_CENTER = dPAD_CENTER
    method set_dPAD_CENTER value' = dPAD_CENTER <- value'
    val mutable vOLUME_UP : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method vOLUME_UP = vOLUME_UP
    method set_vOLUME_UP value' = vOLUME_UP <- value'
    val mutable vOLUME_DOWN : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method vOLUME_DOWN = vOLUME_DOWN
    method set_vOLUME_DOWN value' = vOLUME_DOWN <- value'
    val mutable pOWER : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method pOWER = pOWER
    method set_pOWER value' = pOWER <- value'
    val mutable cAMERA : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method cAMERA = cAMERA
    method set_cAMERA value' = cAMERA <- value'
    val mutable cLEAR : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method cLEAR = cLEAR
    method set_cLEAR value' = cLEAR <- value'
    val mutable a : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method a = a
    method set_a value' = a <- value'
    val mutable b : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method b = b
    method set_b value' = b <- value'
    val mutable c : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method c = c
    method set_c value' = c <- value'
    val mutable d : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method d = d
    method set_d value' = d <- value'
    val mutable e : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method e = e
    method set_e value' = e <- value'
    val mutable f : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method f = f
    method set_f value' = f <- value'
    val mutable g : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method g = g
    method set_g value' = g <- value'
    val mutable h : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method h = h
    method set_h value' = h <- value'
    val mutable i : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method i = i
    method set_i value' = i <- value'
    val mutable j : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method j = j
    method set_j value' = j <- value'
    val mutable k : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method k = k
    method set_k value' = k <- value'
    val mutable l : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method l = l
    method set_l value' = l <- value'
    val mutable m : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method m = m
    method set_m value' = m <- value'
    val mutable n : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method n = n
    method set_n value' = n <- value'
    val mutable o : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method o = o
    method set_o value' = o <- value'
    val mutable p : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method p = p
    method set_p value' = p <- value'
    val mutable q : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method q = q
    method set_q value' = q <- value'
    val mutable r : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method r = r
    method set_r value' = r <- value'
    val mutable s : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method s = s
    method set_s value' = s <- value'
    val mutable t : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method t = t
    method set_t value' = t <- value'
    val mutable u : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method u = u
    method set_u value' = u <- value'
    val mutable v : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method v = v
    method set_v value' = v <- value'
    val mutable w : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method w = w
    method set_w value' = w <- value'
    val mutable x : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method x = x
    method set_x value' = x <- value'
    val mutable y : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method y = y
    method set_y value' = y <- value'
    val mutable z : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method z = z
    method set_z value' = z <- value'
    val mutable cOMMA : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method cOMMA = cOMMA
    method set_cOMMA value' = cOMMA <- value'
    val mutable pERIOD : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method pERIOD = pERIOD
    method set_pERIOD value' = pERIOD <- value'
    val mutable aLT_LEFT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method aLT_LEFT = aLT_LEFT
    method set_aLT_LEFT value' = aLT_LEFT <- value'
    val mutable aLT_RIGHT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method aLT_RIGHT = aLT_RIGHT
    method set_aLT_RIGHT value' = aLT_RIGHT <- value'
    val mutable sHIFT_LEFT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sHIFT_LEFT = sHIFT_LEFT
    method set_sHIFT_LEFT value' = sHIFT_LEFT <- value'
    val mutable sHIFT_RIGHT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sHIFT_RIGHT = sHIFT_RIGHT
    method set_sHIFT_RIGHT value' = sHIFT_RIGHT <- value'
    val mutable tAB : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method tAB = tAB
    method set_tAB value' = tAB <- value'
    val mutable sPACE : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sPACE = sPACE
    method set_sPACE value' = sPACE <- value'
    val mutable sYM : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sYM = sYM
    method set_sYM value' = sYM <- value'
    val mutable eXPLORER : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method eXPLORER = eXPLORER
    method set_eXPLORER value' = eXPLORER <- value'
    val mutable eNVELOPE : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method eNVELOPE = eNVELOPE
    method set_eNVELOPE value' = eNVELOPE <- value'
    val mutable eNTER : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method eNTER = eNTER
    method set_eNTER value' = eNTER <- value'
    val mutable dEL : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method dEL = dEL
    method set_dEL value' = dEL <- value'
    val mutable gRAVE : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method gRAVE = gRAVE
    method set_gRAVE value' = gRAVE <- value'
    val mutable mINUS : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method mINUS = mINUS
    method set_mINUS value' = mINUS <- value'
    val mutable eQUALS : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method eQUALS = eQUALS
    method set_eQUALS value' = eQUALS <- value'
    val mutable lEFT_BRACKET : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method lEFT_BRACKET = lEFT_BRACKET
    method set_lEFT_BRACKET value' = lEFT_BRACKET <- value'
    val mutable rIGHT_BRACKET : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method rIGHT_BRACKET = rIGHT_BRACKET
    method set_rIGHT_BRACKET value' = rIGHT_BRACKET <- value'
    val mutable bACKSLASH : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method bACKSLASH = bACKSLASH
    method set_bACKSLASH value' = bACKSLASH <- value'
    val mutable sEMICOLON : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sEMICOLON = sEMICOLON
    method set_sEMICOLON value' = sEMICOLON <- value'
    val mutable aPOSTROPHE : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method aPOSTROPHE = aPOSTROPHE
    method set_aPOSTROPHE value' = aPOSTROPHE <- value'
    val mutable sLASH : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sLASH = sLASH
    method set_sLASH value' = sLASH <- value'
    val mutable aT : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method aT = aT
    method set_aT value' = aT <- value'
    val mutable nUM : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method nUM = nUM
    method set_nUM value' = nUM <- value'
    val mutable hEADSETHOOK : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method hEADSETHOOK = hEADSETHOOK
    method set_hEADSETHOOK value' = hEADSETHOOK <- value'
    val mutable fOCUS : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method fOCUS = fOCUS
    method set_fOCUS value' = fOCUS <- value'
    val mutable pLUS : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method pLUS = pLUS
    method set_pLUS value' = pLUS <- value'
    val mutable mENU : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method mENU = mENU
    method set_mENU value' = mENU <- value'
    val mutable nOTIFICATION : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method nOTIFICATION = nOTIFICATION
    method set_nOTIFICATION value' = nOTIFICATION <- value'
    val mutable sEARCH : AndroidGameKey.androidGameKey = (Obj.magic 0)
    method sEARCH = sEARCH
    method set_sEARCH value' = sEARCH <- value'
    

    method init () : unit =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic logUtil)#putF ("Start/End", self, !commonStrings#iNIT))
        end [@@warning "-7"]
    

    method isSubmission : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr eNTER)) then begin
            raise (Java_return (Obj.repr (true)))
        end else if ((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_CENTER)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isDelete : 'any1. 'any1 -> bool = fun (_input) ->
        begin
        false
        end [@@warning "-7-20"]
    

    method isBackSpace : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr dEL)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isLeft : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_LEFT)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isRight : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_RIGHT)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isUp : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_UP)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isDown : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_DOWN)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isEnter : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        try
        begin
        if ((Obj.repr (Obj.magic input)) == (Obj.repr dPAD_CENTER)) then begin
            raise (Java_return (Obj.repr (true)))
        end else if ((Obj.repr (Obj.magic input)) == (Obj.repr eNTER)) then begin
            raise (Java_return (Obj.repr (true)))
        end else if ((Obj.repr (Obj.magic input)) == (Obj.repr cALL)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        uNKNOWN <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_UNKNOWN ()), "UNKNOWN")) :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_L1 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_R1 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_THUMBR <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_THUMBL <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_START <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_MODE <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_B <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_A <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_X <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_Y <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_L2 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_R2 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_SELECT <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_C <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_Z <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_1 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_10 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_11 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_12 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_13 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_14 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_15 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_16 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_2 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_3 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_4 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_5 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_6 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_7 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_8 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        kEYCODE_BUTTON_9 <- (uNKNOWN :> AndroidGameKey.androidGameKey);
        sOFT_LEFT <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_SOFT_LEFT ()), "SOFT_LEFT")) :> AndroidGameKey.androidGameKey);
        sOFT_RIGHT <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_SOFT_RIGHT ()), "SOFT_RIGHT")) :> AndroidGameKey.androidGameKey);
        hOME <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_HOME ()), "HOME")) :> AndroidGameKey.androidGameKey);
        bACK <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BACK ()), "BACK")) :> AndroidGameKey.androidGameKey);
        cALL <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_CALL ()), "CALL")) :> AndroidGameKey.androidGameKey);
        eNDCALL <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_ENDCALL ()), "ENDCALL")) :> AndroidGameKey.androidGameKey);
        zERO <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_0 ()), (CommonPhoneStrings.getInstance ())#zERO)) :> AndroidGameKey.androidGameKey);
        oNE <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_1 ()), (CommonPhoneStrings.getInstance ())#oNE)) :> AndroidGameKey.androidGameKey);
        tWO <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_2 ()), (CommonPhoneStrings.getInstance ())#tWO)) :> AndroidGameKey.androidGameKey);
        tHREE <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_3 ()), (CommonPhoneStrings.getInstance ())#tHREE)) :> AndroidGameKey.androidGameKey);
        fOUR <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_4 ()), (CommonPhoneStrings.getInstance ())#fOUR)) :> AndroidGameKey.androidGameKey);
        fIVE <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_5 ()), (CommonPhoneStrings.getInstance ())#fIVE)) :> AndroidGameKey.androidGameKey);
        sIX <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_6 ()), (CommonPhoneStrings.getInstance ())#sIX)) :> AndroidGameKey.androidGameKey);
        sEVEN <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_7 ()), (CommonPhoneStrings.getInstance ())#sEVEN)) :> AndroidGameKey.androidGameKey);
        eIGHT <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_8 ()), (CommonPhoneStrings.getInstance ())#eIGHT)) :> AndroidGameKey.androidGameKey);
        nINE <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_9 ()), (CommonPhoneStrings.getInstance ())#nINE)) :> AndroidGameKey.androidGameKey);
        sTAR <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_STAR ()), (CommonPhoneStrings.getInstance ())#sTAR)) :> AndroidGameKey.androidGameKey);
        pOUND <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_POUND ()), (CommonPhoneStrings.getInstance ())#pOUND)) :> AndroidGameKey.androidGameKey);
        dPAD_UP <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_DPAD_UP ()), "UP")) :> AndroidGameKey.androidGameKey);
        dPAD_DOWN <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_DPAD_DOWN ()), "DOWN")) :> AndroidGameKey.androidGameKey);
        dPAD_LEFT <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_DPAD_LEFT ()), "LEFT")) :> AndroidGameKey.androidGameKey);
        dPAD_RIGHT <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_DPAD_RIGHT ()), "RIGHT")) :> AndroidGameKey.androidGameKey);
        dPAD_CENTER <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_DPAD_CENTER ()), "CENTER")) :> AndroidGameKey.androidGameKey);
        vOLUME_UP <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_VOLUME_UP ()), "VOLUME_UP")) :> AndroidGameKey.androidGameKey);
        vOLUME_DOWN <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_VOLUME_DOWN ()), "VOLUME_DOWN")) :> AndroidGameKey.androidGameKey);
        pOWER <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_POWER ()), "POWER")) :> AndroidGameKey.androidGameKey);
        cAMERA <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_CAMERA ()), "CAMERA")) :> AndroidGameKey.androidGameKey);
        cLEAR <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_CLEAR ()), "CLEAR")) :> AndroidGameKey.androidGameKey);
        a <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_A ()), "A")) :> AndroidGameKey.androidGameKey);
        b <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_B ()), "B")) :> AndroidGameKey.androidGameKey);
        c <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_C ()), "C")) :> AndroidGameKey.androidGameKey);
        d <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_D ()), "D")) :> AndroidGameKey.androidGameKey);
        e <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_E ()), "E")) :> AndroidGameKey.androidGameKey);
        f <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_F ()), "F")) :> AndroidGameKey.androidGameKey);
        g <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_G ()), "G")) :> AndroidGameKey.androidGameKey);
        h <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_H ()), "H")) :> AndroidGameKey.androidGameKey);
        i <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_I ()), "I")) :> AndroidGameKey.androidGameKey);
        j <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_J ()), "J")) :> AndroidGameKey.androidGameKey);
        k <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_K ()), "K")) :> AndroidGameKey.androidGameKey);
        l <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_L ()), "L")) :> AndroidGameKey.androidGameKey);
        m <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_M ()), "M")) :> AndroidGameKey.androidGameKey);
        n <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_N ()), "N")) :> AndroidGameKey.androidGameKey);
        o <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_O ()), "O")) :> AndroidGameKey.androidGameKey);
        p <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_P ()), "P")) :> AndroidGameKey.androidGameKey);
        q <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_Q ()), "Q")) :> AndroidGameKey.androidGameKey);
        r <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_R ()), "R")) :> AndroidGameKey.androidGameKey);
        s <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_S ()), "S")) :> AndroidGameKey.androidGameKey);
        t <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_T ()), "T")) :> AndroidGameKey.androidGameKey);
        u <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_U ()), "U")) :> AndroidGameKey.androidGameKey);
        v <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_V ()), "V")) :> AndroidGameKey.androidGameKey);
        w <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_W ()), "W")) :> AndroidGameKey.androidGameKey);
        x <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_X ()), "X")) :> AndroidGameKey.androidGameKey);
        y <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_Y ()), "Y")) :> AndroidGameKey.androidGameKey);
        z <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_Z ()), "Z")) :> AndroidGameKey.androidGameKey);
        cOMMA <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_COMMA ()), "COMMA")) :> AndroidGameKey.androidGameKey);
        pERIOD <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_PERIOD ()), (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP)) :> AndroidGameKey.androidGameKey);
        aLT_LEFT <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_ALT_LEFT ()), "ALT_LEFT")) :> AndroidGameKey.androidGameKey);
        aLT_RIGHT <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_ALT_RIGHT ()), "ALT_RIGHT")) :> AndroidGameKey.androidGameKey);
        sHIFT_LEFT <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_SHIFT_LEFT ()), "SHIFT_LEFT")) :> AndroidGameKey.androidGameKey);
        sHIFT_RIGHT <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_SHIFT_RIGHT ()), "SHIFT_RIGHT")) :> AndroidGameKey.androidGameKey);
        tAB <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_TAB ()), "TAB")) :> AndroidGameKey.androidGameKey);
        sPACE <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_SPACE ()), "SPACE")) :> AndroidGameKey.androidGameKey);
        sYM <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_SYM ()), "SYM")) :> AndroidGameKey.androidGameKey);
        eXPLORER <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_EXPLORER ()), "EXPLORER")) :> AndroidGameKey.androidGameKey);
        eNVELOPE <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_ENVELOPE ()), "ENVELOPE")) :> AndroidGameKey.androidGameKey);
        eNTER <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_ENTER ()), "ENTER")) :> AndroidGameKey.androidGameKey);
        dEL <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_DEL ()), "DEL")) :> AndroidGameKey.androidGameKey);
        gRAVE <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_GRAVE ()), "GRAVE")) :> AndroidGameKey.androidGameKey);
        mINUS <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_MINUS ()), "MINUS")) :> AndroidGameKey.androidGameKey);
        eQUALS <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_EQUALS ()), "EQUALS")) :> AndroidGameKey.androidGameKey);
        lEFT_BRACKET <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_LEFT_BRACKET ()), "LEFT_BRACKET")) :> AndroidGameKey.androidGameKey);
        rIGHT_BRACKET <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_RIGHT_BRACKET ()), "RIGHT_BRACKET")) :> AndroidGameKey.androidGameKey);
        bACKSLASH <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BACKSLASH ()), "BACKSLASH")) :> AndroidGameKey.androidGameKey);
        sEMICOLON <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_SEMICOLON ()), "SEMICOLON")) :> AndroidGameKey.androidGameKey);
        aPOSTROPHE <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_APOSTROPHE ()), "APOSTROPHE")) :> AndroidGameKey.androidGameKey);
        sLASH <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_SLASH ()), "SLASH")) :> AndroidGameKey.androidGameKey);
        aT <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_AT ()), "AT")) :> AndroidGameKey.androidGameKey);
        nUM <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_NUM ()), "NUM")) :> AndroidGameKey.androidGameKey);
        hEADSETHOOK <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_HEADSETHOOK ()), "HEADSETHOOK")) :> AndroidGameKey.androidGameKey);
        fOCUS <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_FOCUS ()), "FOCUS")) :> AndroidGameKey.androidGameKey);
        pLUS <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_PLUS ()), "PLUS")) :> AndroidGameKey.androidGameKey);
        mENU <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_MENU ()), "MENU")) :> AndroidGameKey.androidGameKey);
        nOTIFICATION <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_NOTIFICATION ()), "NOTIFICATION")) :> AndroidGameKey.androidGameKey);
        sEARCH <- ((new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_SEARCH ()), "SEARCH")) :> AndroidGameKey.androidGameKey);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AndroidKeyFactory" (fun arguments -> Obj.repr (new androidKeyFactory (Obj.obj arguments)))


