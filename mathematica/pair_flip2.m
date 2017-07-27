(* ::Package:: *)
Get["base_runall.m"]
(* ::Input:: *)
p := (1/2*Boole[-r1+1<=0]+1/2*Boole[-r1<=0])*(1/2*Boole[-r2+1<=0]+1/2*Boole[-r2<=0])
np := ((-eps+1/2)*Boole[-r2<=0]+(1/2+eps)*Boole[-r2+1<=0])*(1/2*Boole[-r1+1<=0]+1/2*Boole[-r1<=0])*Boole[-1/2+-eps<=0]*Boole[-1/2+eps<=0]
runall[p,np,1,1,{{r1,0,1},{r2,0,1}},(-0.05<=eps<=0.05),(r2==0||r2==1)&&(r1==0||r1==1)]
(*
pks[p,np,-0.05<=eps<=0.05&&(r1==0||r1==1)&&(r2==0||r2==1),{r1,r2}]
ptvd[p,np,-0.05<=eps<=0.05&&(r1==0||r1==1)&&(r2==0||r2==1),{{r1,0,1},{r2,0,1}}]
pkl[p,np,-0.05<=eps<=0.05&&(r1==0||r1==1)&&(r2==0||r2==1),{{r1,0,1},{r2,0,1}}]
*)
