(* ::Package:: *)
Get["base.m"]
(* ::Input:: *)
(*f[_ DiracDelta[point_]] := Solve[point==0,r1]
f2[DiracDelta[point_]] := Solve[point==0,r1]
distance[p_,q_] :=Abs[p-q]
subs[p_, q_,params_] := FullSimplify[Abs[p-q],cons] /. params 
distancemax[p_,q_,cons_] := FindMaximum[{FullSimplify[Abs[p-q],cons],cons},{eps,r1}]
distancemax2[p_,q_,cons_] := Maximize[{FullSimplify[Abs[p-q],cons],cons},{eps,r1}]
edistance[p_,q_,cons_]:=distance[extract[f[p]],extract[f[FullSimplify[q,cons]]]]
edistance2[p_,q_,cons_]:=distance[extract[f2[p]],extract[f2[FullSimplify[q,cons]]]]
extract[f_] := Values[f][[1]]
edistancemax[p_, q_, cons_] := 
distancemax[extract[f[p]], extract[f[FullSimplify[q,cons]]], cons]
tvd[p_,q_,cons_,min_,max_] :=1/2*Sum[FullSimplify[distance[p,q],cons],{x,min,max}]
entropy[p_,q_] := q*Log2[q/p]
kl[p_,q_,cons_,min_,max_]:=Sum[FullSimplify[entropy[p,q],cons],{x,min,max}]
*)
(* ::Input:: *)
gaussianp:=1/Pi^(1/2)*Sqrt[Pi]*(Erf[1/2^(1/2)*r1]+1)/2
gaussianp2[r1_]:=1/Pi^(1/2)*Sqrt[Pi]*(Erf[1/2^(1/2)*r1]+1)/2
gaussiannp:=1/Pi^(1/2)*Sqrt[Pi]*(Erf[-1/2^(1/2)*eps+1/2^(1/2)*r1]+1)/2
gaussiannp2[r1_]:=1/Pi^(1/2)*Sqrt[Pi]*(Erf[-1/2^(1/2)*eps+1/2^(1/2)*r1]+1)/2
gaussiane:=DiracDelta[r1]
gaussianne:=DiracDelta[-r1+eps]

(* ::Input:: *)
Print["edistance"]
edistanceres := edistance2[gaussiane,gaussianne,-0.1<=eps<=0.1][[1]]
Print[edistanceres]
Print["edistance is linear?"]
Print[islinear[edistanceres]]
Print[""]
Print["distance"]
disret[r1_] := distance[gaussianp2[r1],gaussiannp2[r1],-0.1<=eps<=0.1]
Print[distance[gaussianp,gaussiannp]]
Print["distance is linear?"]
Print[islinear2[disret]]

(*Print["edistancemax"]*)
(*Print[edistancemax[gaussiane,gaussianne,-0.1<=eps<=0.1]]*)
(*Print[""]*)
(*Print["distancemax"]
d := distancemax[gaussianp,gaussiannp,-0.1<=eps<=0.1 && -100 <=r1 <= 100]
Print[d]
Print[d[[1]]==subs[gaussianp, gaussiannp,d[[2]]]]
Print["distancemax2"]
g := distancemax2[gaussianp,gaussiannp,-0.1<=eps<=0.1 && -100 <=r1 <= 100]
Print[g]
Print[g[[1]]==subs[gaussianp, gaussiannp,g[[2]]]]*)
(*tvd[flipnp,flipp,eps>=-0.1 && eps <=0.9,-100,100]*)
(*kl[flipp,flipnp,eps>=-0.1 && eps <=0.9,0,100]*)

