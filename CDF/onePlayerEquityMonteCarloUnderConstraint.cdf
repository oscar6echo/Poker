(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[    455171,       7800]
NotebookOptionsPosition[    455360,       7787]
NotebookOutlinePosition[    455934,       7812]
CellTagsIndexPosition[    455891,       7809]
WindowTitle->One Player Equity Calculator (Monte Carlo) Assuming Opponents \
PreFlop Hands Type
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`displayHandType$$ = 
    False, $CellContext`nbOpp$$ = 9, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Text[
        Style[
        "Single Hand Equity Calculator - assuming Opponents PreFlop Hands \
type\n", 11, Bold]]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`nbOpp$$], 9, "Number of Opponents"}, 1, 9, 1}, {{
       Hold[$CellContext`displayHandType$$], False, 
       "Display Hand Type Details"}, {False, True}}}, Typeset`size$$ = 
    Automatic, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`nbOpp$2861$$ = 
    0, $CellContext`displayHandType$2862$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`displayHandType$$ = 
        False, $CellContext`nbOpp$$ = 9}, "ControllerVariables" :> {
        Hold[$CellContext`nbOpp$$, $CellContext`nbOpp$2861$$, 0], 
        Hold[$CellContext`displayHandType$$, \
$CellContext`displayHandType$2862$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      DynamicModule[{$CellContext`deckPos = {0.5, 
          0.5}, $CellContext`deckStatus = Table[1, {52}], $CellContext`deckNo = 
         52, $CellContext`deckSelect = 
         0, $CellContext`tablePos = {0.5, 0.5}, $CellContext`tableStatus = 
         Table[0, {5}], $CellContext`tableNo = 
         1, $CellContext`playerPos = {0., 0.}, $CellContext`playerStatus = {0,
           0}, $CellContext`playerCardNo = {1, 1}, $CellContext`playerType = 
         Table[{}, {9}], $CellContext`update, $CellContext`statusMsg = 
         " ", $CellContext`handEquity = {0., 0.}}, 
        Grid[{{
           EventHandler[
            Dynamic[
             Grid[
              Transpose[
               Partition[
                Table[
                 If[$CellContext`i == $CellContext`deckSelect, 
                  Part[$CellContext`deckCardImageSelect, $CellContext`i], 
                  If[Part[$CellContext`deckStatus, $CellContext`i] == 1, 
                   Part[$CellContext`deckCardImagePad, $CellContext`i], 
                   Part[$CellContext`deckCardImagePad, 53]]], {$CellContext`i,
                   52}], 4]], Spacings -> {0, 0}]], {
            "MouseDown" :> ($CellContext`deckPos = 
               MousePosition[
                "EventHandlerScaled"]; $CellContext`deckNo = \
$CellContext`deckPoint[$CellContext`deckPos]; $CellContext`update = \
$CellContext`deckUpdateStatus[$CellContext`deckNo, $CellContext`deckStatus, \
$CellContext`deckSelect, $CellContext`tableStatus]; $CellContext`deckStatus = 
               Part[$CellContext`update, 1]; $CellContext`deckSelect = 
               Part[$CellContext`update, 2]; $CellContext`tableStatus = 
               Part[$CellContext`update, 3]; Null)}], SpanFromLeft}, {
           Row[{" ", 
             Item[
              Button[
               Text[
                Style[
                "Reset", 
                 Smaller]], $CellContext`update = \
$CellContext`reset[$CellContext`deckStatus, $CellContext`deckSelect, \
$CellContext`tableStatus, $CellContext`playerStatus]; $CellContext`deckStatus = 
                Part[$CellContext`update, 1]; $CellContext`deckSelect = 
                Part[$CellContext`update, 2]; $CellContext`tableStatus = 
                Part[$CellContext`update, 3]; $CellContext`playerStatus = 
                Part[$CellContext`update, 4]; Null]], " "}], SpanFromLeft}, {
           Row[{
             Item[
              Button[
               Text[
                Style[
                "Shuffle Flop", 
                 Smaller]], $CellContext`update = \
$CellContext`shuffleFlop[$CellContext`deckStatus, $CellContext`deckSelect, \
$CellContext`tableStatus]; $CellContext`deckStatus = 
                Part[$CellContext`update, 1]; $CellContext`deckSelect = 
                Part[$CellContext`update, 2]; $CellContext`tableStatus = 
                Part[$CellContext`update, 3]; Null]], 
             Item[
              Button[
               Text[
                Style[
                "Shuffle Turn", 
                 Smaller]], $CellContext`update = \
$CellContext`shuffleTurn[$CellContext`deckStatus, $CellContext`deckSelect, \
$CellContext`tableStatus]; $CellContext`deckStatus = 
                Part[$CellContext`update, 1]; $CellContext`deckSelect = 
                Part[$CellContext`update, 2]; $CellContext`tableStatus = 
                Part[$CellContext`update, 3]; Null]], 
             Item[
              Button[
               Text[
                Style[
                "Shuffle River", 
                 Smaller]], $CellContext`update = \
$CellContext`shuffleRiver[$CellContext`deckStatus, $CellContext`deckSelect, \
$CellContext`tableStatus]; $CellContext`deckStatus = 
                Part[$CellContext`update, 1]; $CellContext`deckSelect = 
                Part[$CellContext`update, 2]; $CellContext`tableStatus = 
                Part[$CellContext`update, 3]; Null]]}], SpanFromLeft}, {
           EventHandler[
            Dynamic[
             Row[
              Table[
               Column[{
                 Part[$CellContext`deckCardImagePad, 
                  If[Part[$CellContext`tableStatus, $CellContext`i] != 0, 
                   Part[$CellContext`tableStatus, $CellContext`i], 53]], 
                 Text[
                  Part[
                   Map[
                   Style[#, Bold]& , {
                    "Flop", "Flop", "Flop", "Turn", 
                    "River"}], $CellContext`i]]}, Center], {$CellContext`i, 
                5}]]], {
            "MouseDown" :> ($CellContext`tablePos = 
               MousePosition[
                "EventHandlerScaled"]; $CellContext`tableNo = \
$CellContext`tablePoint[$CellContext`tablePos]; $CellContext`update = \
$CellContext`tableUpdateStatus[$CellContext`tableNo, $CellContext`deckStatus, \
$CellContext`deckSelect, $CellContext`tableStatus]; $CellContext`deckStatus = 
               Part[$CellContext`update, 1]; $CellContext`deckSelect = 
               Part[$CellContext`update, 2]; $CellContext`tableStatus = 
               Part[$CellContext`update, 3]; Null)}], SpanFromLeft}, {
           Dynamic[
            Text[
             Style[
              Row[{"\n  % ", 
                NumberForm[100 Total[$CellContext`handEquity], {4, 2}], ""}], 
              Bold, FontSize -> 14]]], SpanFromLeft}, {
           Dynamic[
            
            BarChart[$CellContext`handEquity, ChartLayout -> "Stacked", 
             Joined -> False, Axes -> {False, False}, ChartStyle -> Automatic,
              BarSpacing -> Automatic, 
             LabelingFunction -> (Placed[
              NumberForm[100 #, {4, 2}] "%", Center]& ), 
             ImageSize -> {70, 70}, AspectRatio -> 1, ImagePadding -> 0, 
             ChartLegends -> {"Equity from Wins", "Equity from Ties"}, 
             LegendAppearance -> "Row"]], SpanFromLeft}, {
           Item[
            Dynamic[
             Button[
              Text[
               Style[
               "Run Monte Carlo", 
                Smaller]], $CellContext`update = \
$CellContext`stateUpdateStatus[$CellContext`deckStatus, \
$CellContext`tableStatus, $CellContext`playerStatus, $CellContext`statusMsg, \
$CellContext`handEquity, $CellContext`playerType]; $CellContext`statusMsg = 
               Part[$CellContext`update, 1]; $CellContext`handEquity = 
               Part[$CellContext`update, 2], 
              ImageSize -> {Automatic, Automatic}]]], SpanFromLeft}, {
           EventHandler[
            Dynamic[
             Row[{
               Part[$CellContext`deckCardImagePad, 
                If[Part[$CellContext`playerStatus, 1] != 0, 
                 Part[$CellContext`playerStatus, 1], 53]], 
               Part[$CellContext`deckCardImagePad, 
                If[Part[$CellContext`playerStatus, 2] != 0, 
                 Part[$CellContext`playerStatus, 2], 53]]}]], {
            "MouseDown" :> ($CellContext`playerPos = 
               MousePosition[
                "EventHandlerScaled"]; $CellContext`playerCardNo = \
$CellContext`playerCardNoDet[$CellContext`playerPos]; $CellContext`update = \
$CellContext`playerUpdateStatus[$CellContext`playerCardNo, \
$CellContext`deckStatus, $CellContext`deckSelect, $CellContext`playerStatus]; \
$CellContext`deckStatus = 
               Part[$CellContext`update, 1]; $CellContext`deckSelect = 
               Part[$CellContext`update, 2]; $CellContext`playerStatus = 
               Part[$CellContext`update, 3]; Null)}], SpanFromLeft}, {
           Item[
            Dynamic[
             Button[
              Text[
               Style[
               "Shuffle Player", 
                Smaller]], $CellContext`update = \
$CellContext`shufflePlayer[$CellContext`deckStatus, $CellContext`deckSelect, \
$CellContext`playerStatus]; $CellContext`deckStatus = 
               Part[$CellContext`update, 1]; $CellContext`deckSelect = 
               Part[$CellContext`update, 2]; $CellContext`playerStatus = 
               Part[$CellContext`update, 3], 
              ImageSize -> {Automatic, Automatic}]]], SpanFromLeft}, {
           Dynamic[
            Text[
             Style[
              StringJoin["", $CellContext`statusMsg], Red]]], SpanFromLeft}, {
          
           Column[
            Table[
             With[{$CellContext`p = $CellContext`p}, 
              Row[{
                Text[
                 Style[
                  StringJoin["Player ", 
                   ToString[$CellContext`p], " PreFlop Hand "], Smaller, 
                  Bold]], 
                CheckboxBar[
                 Dynamic[
                  
                  Part[$CellContext`playerType, $CellContext`p]], \
$CellContext`catNameChoice]}]], {$CellContext`p, $CellContext`nbOpp$$}]], 
           SpanFromLeft}, {
           If[$CellContext`displayHandType$$, 
            Grid[
             Map[Text, 
              Prepend[
               
               Transpose[{$CellContext`catName, $CellContext`catCard, \
$CellContext`nbHandInCategory}], 
               Map[
               Style[#, Bold]& , {
                "Category", "PreFlop Hands", "Nb of hands"}]], {2}], Frame -> 
             All, Alignment -> Left, 
             Background -> {None, {{None, LightRed}}}], ""], SpanFromLeft}}, 
         Frame -> False]], "Specifications" :> {
        Text[
         Style[
         "Single Hand Equity Calculator - assuming Opponents PreFlop Hands \
type\n", 11, Bold]], {{$CellContext`nbOpp$$, 9, "Number of Opponents"}, 1, 9, 
         1, ControlType -> 
         SetterBar}, {{$CellContext`displayHandType$$, False, 
          "Display Hand Type Details"}, {False, True}, ControlType -> 
         Checkbox}}, 
      "Options" :> {
       ControlPlacement -> Top, ContentSize -> {730, 1100}, 
        SynchronousInitialization -> False}, "DefaultOptions" :> {}],
     ImageSizeCache->{744., {604., 609.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`cumulUpNbDistinctHand = {1277, 4137, 4995, 
        5853, 5863, 7140, 7296, 7452, 7462}; $CellContext`nbSuit = 
       4; $CellContext`deckCardNo[
         Pattern[$CellContext`deckCardFace, 
          Blank[]], 
         Pattern[$CellContext`deckCardSuit, 
          Blank[]]] := 
       1 + $CellContext`nbSuit ($CellContext`deckCardFace - 
          1) + ($CellContext`deckCardSuit - 1); $CellContext`deckCardKey = {0,
         1, 29, 37, 512, 513, 541, 549, 2560, 2561, 2589, 2597, 11264, 11265, 
        11293, 11301, 50176, 50177, 50205, 50213, 231936, 231937, 231965, 
        231973, 1039872, 1039873, 1039901, 1039909, 4453376, 4453377, 4453405,
         4453413, 11701248, 11701249, 11701277, 11701285, 42834432, 42834433, 
        42834461, 42834469, 134322688, 134322689, 134322717, 134322725, 
        325808640, 325808641, 325808669, 325808677, 757340672, 757340673, 
        757340701, 757340709}; $CellContext`deckCardSuit = {1, 2, 3, 4, 1, 2, 
        3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 
        2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 
        4}; $CellContext`deckCardFlushKey = {1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 
        4, 8, 8, 8, 8, 16, 16, 16, 16, 32, 32, 32, 32, 64, 64, 64, 64, 128, 
        128, 128, 128, 240, 240, 240, 240, 464, 464, 464, 464, 896, 896, 896, 
        896, 1728, 1728, 1728, 1728, 3328, 3328, 3328, 
        3328}; $CellContext`flushCheck = CompressedData["
1:eJxTTMoPymNkYGBgARIgGob/QwETkA3DtADo9iHbSYw8uXb+RwNMVJTHBtDV
gwCt5fGpx6aHGvLMSBibPD7zyJWH2UeMPAsSRjcTm3245JlJkEe3jxh5fO4h
Rh7dPHLkAfyoQOw=
        "]; $CellContext`rankFlushSeven = Normal[
         SparseArray[
          ToExpression[
           Flatten[
            Import[
            "https://raw.github.com/oscar6echo/Poker/master/Tables/\
sparseRulesRankFlushSeven.csv"]]]]]; $CellContext`rankFaceSeven = Normal[
         SparseArray[
          ToExpression[
           Flatten[
            Import[
            "https://raw.github.com/oscar6echo/Poker/master/Tables/\
sparseRulesRankFaceSeven.csv"]]]]]; $CellContext`link = Install[
         FileNameJoin[{$InitialDirectory, "MathLinkExec", 
           "equityPreFlopMonteCarloUnderConstraint"}]]; \
$CellContext`deckCardImagePad = {
         Image[CompressedData["
1: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
T8EzJtP/pjBtRrf9F0kaGL8=
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1:eJztnAlsFFUYx7dQLFAgyC2SVJCjF73swSUJZ4km0gJyBEgsBGNFISkkSIyi
MZQY0YSEOyokFKFchQJFiRwCy1VKAUvLyqUItJTSdnZmd2fem/r3vSkE2u2x
jtvOTrKT/Jv07czb79f35s2872j/eYunvN/GYrEsac9+TElbNiYjI2351ED2
y9jlSxfMa8tbmRKZeCP8h//wvYPPS0t1dXUKUyETTCBuZ8pT2xvlstlsM33A
Vj1KaRTKYulUVlZW/OL50oNykHVboH68DMq3GyHdLzfa/kbHrQmukBfPdZ04
BzV2LEiXQSAhESDdwqBGTYTryGmjGRpUE1yDn50jPnwEEjMBcs9oSNuOQSq8
C2nvaZCwt0H7JUA+d8NwDj1cruw8KEEDIOZY61xrv3EPcu8kkPj5hnPo4SKb
90HpGQfJWux2PYmdDcUSaTiHHq7q0lKIP1+C8KDuOuEsvgvSNwFKXJrhHLq4
GpDIGGlCKkj3GDhOlhjO4Q0u8WoJVLaOKMFDIWUdM5zBG1xy3imor0WC9hkJ
accJw+33Bpe8Ow/05cFQhr4F55k7htvuDS7nmQLQXpFQYt6FcOuR4XZ7g8te
bQcdkwIaHAeh5GGd652n8uG6eN1wDj1c4sUrIJ3D4Fx/0O16OmIaSMoSwzn0
cJE1W1FjCQFZ/T3ozr2gWbtAsnaD7soFDR0HOuEjwzn0cNV8tRY1XUPZGhgB
9ZUoqH3CUdM3hr0bxoH0CAOd9aXhHHq4HFfuQNplhXggH44cpgMX4MgtgONg
AaT9FyCd/cNwDj1cZpQeLpK5ge1dfHZPqYvLteco1I79oHy6tsH+5JUrgfh4
ICHBK5IzM1ucy37zHuiAZKiB4ey9IwnOSzb3/pgt9hve2Wfai4q0v1FLcglP
qkCT54Ja2HoYNBzEEg0yeg6ESncuT77XmXUYQmnzc7klueylj0HnLQJtO5CN
1TDUtI0FbTcKNJCxLc6EvaLyP3HZi2ygQ6bDsWaXoVzSud9R04s9ryzsWRWY
ALUt43kpCbT9SNCg16FsyfOMq6qKvVveBU2aBdUSx+byWEi5JyGUNT5uLckl
CAJcG/aAdggFCWBjxbnaDdPmpDz1c7afLveIS3hUDmVSGmMKgxoQweYym9Nd
32TPwpOGcD2TkraCsTC2wHhm0xDQ6JkQ73t+fwlPnkBOX8HGO5yxhWrjLo9d
APFsoaFc0r0K9j44GTRgMEiXeEjWIvf+PLi/lFlLobaJAkmYi+ryCsPurxfl
yDkB2nEQnKt2NtyfB1zCgzLQ4fNhz2/+edBaXFw0fT2Ex3bdXFxi0U3P7GtF
rib785DL4/78XH4uP5efy8/l5/Jz+bn8XH4uP5efq5W47Lf/+l9cfP9HP1zn
U1zi5eugyRkQKqp0czkzd2j7dr5/9xWumqTZQLtRUNK/1sXF/Sqkyxuan4X7
W6S/HxvKJRVcA01ZCLSJYl8QCwSPgpzxDaorKz3m4v4vGjVD84dxvxj3j3E/
mZFczpxfgCDONAQIiMQ/ATGg4z/w3C/6sBxy6mea31LzX3I/JvdndgjV/Jvc
z9liXImJjX4mlJbBseMg0D6afUEE1KHTYbfd1fzAnnApPx7W/Mvcz8z9zdz/
yP3P3A/N/dHcL20E1zO5Vm5CTcg7EAvc88ia4uJxAB4P4HEBHh/gcQIeL+Bx
Azp/MexlFS3H5Yn/8H4pXKu3e9ZfvfuLx2/I6NlaPIfHdficpJPmsva6Y+51
LmaHePFik2uBp+L9NLQe8rgb7ZpUG4cbkAz7rXvudniZS161qjZe6SU1Fq/k
8VIeN3XtPdrw39fLXK0lHt8mqzY2Pm9MytWczMQlnbVByjkPR+4lOA4w7T+v
5ZOI+/MhZVu1PBMzctGZX4D0CNfyfHi+D8/7UftGaXlAPB+I5wWZkmvCQtCw
8aDZubX5WduZsveCrP6hNn9rzVZTcpHJGaCjpru18zw70jmUPReumpKL5zk6
z1yq0yYUPwTpyN4zx6RqeZJm5Kov4VYZlOhpoL0j4bRervOZWbmcp29DiZgE
2m0Q5D1H3D43I5f003G2Bo6A2n8o5CO/NXiO2bikbb9CCY6EGjcR4rXG4+5m
4nIcLwbpzvYoiansPcp9729WLiX2PZBXE+Es+bNOu3C/HOKRfLaffp4rbiou
SySUuDnuc9NarNU7kc05puTidWZy72Fa3dmL7eI+K5Sg/nBlP18XzcTF6wJ5
fSCvE+T1glLhHW0dkXtEg8RM1OoKzcjFxes5eV0nr+8kIeEgXQaytXEcXCfO
1zmvKa769bC+Il6HK3+3CeqiT0DWb9HqdOud02Q97KFDh9KNZtCpyU1wdeJj
xtl8ddzqi9tps9lmoJl686dsIZzPBOJ2dnrK5P/fFP7D545/AfqTv0I=
          "], "Byte",
           ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
OXjpN69ni2A+HQjr2bOeKfi/KYJbwG3/ARxgVV4=
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
iI8HIjtNnjEt/2+K5WPJHf8HyymuHA==
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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

          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
TYFPQASaW9sVuEaF+m/27j0CgcCK+XWof+fPh4+MGws1xVWp5H3ypEKfu/Ly
cqXveep3MxOKYCNxZf64oNDlCnnUzUX9i2xMVJMo81dSPyn1l0okzsx/mpic
oHGu/4VQvzb1b1M/9xsJcczvPRW4RkVVXIKucVFfxuAk8ukSl1TaAt/AlQhe
uRbzF4fi02NfTQkuGodF47H4xmYsPqui4ocpwUVFVt8Fe/vZaOlUHROjK1zd
3X3I/+IU0jL+QN7Hjti6ax+Lg6TxkDQuksZHFp2uYPGSusTVcKeFxaXS+FQa
p+ps7wIfzwXwdp/L4lhpPOssDy/cbazXKS4aP0zjiGk8sdjaATVV11mcMY03
pnHHNP54Z24m+Z7SrX44KpcuVrE4cBoPPpqWvG4r/Bf5on/gP7G4usZVXnKF
xe3T+H16/mXhWRbXf63qx3H5dI6rdISLzke6uvrZ+ovdu7MU8ukaVxlpL7ou
hq6PiYvbhLlzPZTm0zWuc2cvwdXVDZk7D8LGejpqb1dPCa6Sc5Vs3Zm5UII9
e3ZNmE/XuMpKKtk6wcjIlWNj+lTgOvP3i2xd5607tSrzqeJ63HpYbUhjnYyt
w31MPpXrYYuLizdqm+MpZbUKLgFtM8r2PLabMqF6SqXSWDxmvfkjNifKpwNC
9RQ8YtL/bwr99txt/wbwHJlO
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1:eJztnHtsFEUcx6+l+KygUdSgUh9QqRRa+jqRh9RYwD8IBUSbKCIkqGikgdog
xlcQVFBRjNoEEdAoWFRApahBqLU+ahMtSGl7grY8lEJP2t293u52d+7rb6al
SK/dUrgHS26TX3O3nZn8PjO/2dn5/X5zN8zKnfJQtMPhyLuA/kyZuSBz/vyZ
C6fG0Jc7Fj4xe1Yvfpckg4TfROSKXGffxe3S0dTUlE1SQQIbCNczu033Lrlc
LlfOWaDr6Uh2l1AOR2x9fX2VVX25eh9YXyfU3/aGm8Nv3Cy44qzqSpIEMycP
LDoRkqs23Bx+YsEVb1XPu2YTfI7hYI4xxFUXdo5AcDXv+QPsKifMayeCRY2C
VHNucLGsB2AMGQ/9k2Kw2FuJ60DYOc6Uq2Xpe2AxN6O5uApq0fY2roNh5zgT
LmWPi55/qdBnLRPftfc+gxk7guaXvbnMMdNg3DABcp27lWsVcV08wtZ2qL26
mhiS4Sl1td9TN3wNs8/osDOcLlfLjjKwy5PBBk2GtqEI+jvrodFz3pi9GOyi
kdCKSqFVVIWdpadc7LkVNK/iwfo5weJozRqQDnZjGtglt9H6NRrspiSYQzLC
ztJTLk91HfTSSuglv0P/7ndoxZXQSqtgTH4K5mWZ0D4rg761POwsPeXqTGRZ
hp6/HOYtd4edIVBc/N3QyHserH8G2eF10BcsguxWws5yplx8rMy5r8B8MBds
Ri7MOc9CbrA/1/ExkxVFCP8cbo5A2SEfs3DrHmguz/bv4aO1K9y6B5JLPnQY
ZsoU+KIGQtv2m9//tSVLgLQ0ID09IKK9+GLQucTz4v4F8PVOAutFa3RSDuT6
oye3R7rINTUB6XO5slL0UbC5tFdpj3I+vWfEjCS2MTCjBtEzMd+P6/hn6Z96
NH9R3CN9lF92Qtp/Yn8QbC515Tqw8xJovaI1q7eTuEYS3yiSwfAWrEeT2+3H
1bxxG8zEe6H86G+vncrRBrRMzIX65JtoanAHnUs+JtMeeTp8joFg0cQSTTYY
M0KMG3MkwHelE8rP+05wNTZCrthN75DjwKKGwxg7G9Kf1r4Cqf4I1KeXU9+l
kk044dm8XXAGe7ykv/6BOXQacaTQeI2E2etWmmPE1icFasHnkP6V2rmkuv1o
GXsf9cPNMB1DqB+SoN89z1IP79sfwbyQ9gyiTgLMfpnwbCwOyfzy/vonzLgJ
NE58vOhdPmoY1KdW+c0v6cBB4niceGgP4IgnfVPgfeYtSz2a31lHe7l0YuJc
g9GSTPa79eeQcHHR3igkJj5mw2BMXeLfXtv8kg4fgZE4kcoS+/zlp6RL87KV
ZAeJMPpnQd5ZE/T51VGMrEdgXJcJpdbdJRcXT1EJWu58jJ4pjaesjzbuYXhW
bz7RXgi5mgu30/v8B5239z8uLnLlvh7pI+86ee0LJZdlex24zlQiXBGuCFeE
K8IV4YpwRbgiXBGuCFeEK9Bcyp6e5RjJtSfHqrviMvLep33gt2HhUlesg5Gd
d8p1pSNHYWbPg1K2y5JL+atB7NeNcXNCzqWU74Tvykyg9wioBYWnVFef9zJw
XirMO07o2xmXMWWx8K9wPwv3t4SKy1v4JVjCXUBUAjU0DL4rbof67gbLetpz
K4CLUqn8LUBMKvSHF3fqP1QXvgsWNbTVHxbjFP4x7icLCdeqQiA2FT5HPDVE
bOenwbt6k2U9c/xsoFcilR9MMpRs7FFIhw63c0luSfgpWZ/hwm8p/Jfc5+xI
gZk4Tfg3g8qVkSF8bN4PP4cvJonGIB3aCyvRdKTBsp68txZmxj2iH3zxkyBX
VAu/8XEu5ae9ZNcZwr8s/Mzc38z9ztGjWv3QWdMhN8pB5RL9Sxz63KUwJs1v
97V3J56vSsh+s+H5osR/frnd8BZ8LOIBPC4g4gO9nW3xggSoK9cH3Q7bx6D2
EJRfdveovrdwG6S/6/25jtvrg/kijsPjOWLcLkgXuUBBn1+kh1JejqZjx3pc
t6Pwdjpy8XgbS84R8TcRh5v+ZKcx4UBzaS+91BqvDJB0Fq/kcVJf9ECYKVNF
/LTT/g0wV6jE99BieHZ837Xd2JSL255VfoWduDiHoihCussZsQuXfFQReT3s
gVyYM+bCzH3FMofENlxuBdqCRbReDYCvvxNG/qJzxg658Pw5Pf/1bvN97MKl
F5VD+7QM5qVjYUxeCK10D7Ti3SIfUuRFluwWeZJ242JDnCIvVeSn8jzVG1PB
BqSBxSWD9aN3qb6DRF6r3bi0XdXQtv4g8okN2sNoazdBL1gPbcNWkXfM849b
istsxyWkkeZX39FQP/mm/R7PD+d54upra04qaycuqfqAyNfXVm0U33kev3H9
eJhj7vErayuumoPifIW2upVLn7lUnL/g5zDszXVAnIdRv9ohzsfwczIty/z3
KPbj2i+4+DkmIyELbMKMLsvai6tWnDczr5kIdrUTzVV/nCNcdeJ8IPfVeNdu
tixrKy5XrTjPaeQ80W1ZK67uzsOGWtSKvfT8y4Bc4+8v7CCW52G3bNkyJ9ws
pymTLLhi+ZhxtrNt3LoSrqfL5boX3Zw3b2OL43w2EK5nbBtT5LcpItdZd/0H
fd2RAQ==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
sg3gfCYQrmfvq0zB/00RPLrc8T/wLBxz
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1: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
PyXDTJb/TWHZpt32f/Z3xTk=
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1:eJztnIlXU1cex8MiCSQaAoQdAmGRTRyLQB0pwqAiWiMCWnABQaro2FHQGYvD
zPS0opZqhzNKqx6XVhA3RisC4trOyCZhU5ASXFBZRSHo/AHfufcVKAgiKDG8
Ht45P07yct/L7/Peu7/c+72/H7YxG0PWaHI4nM088ickeqt/QkJ0Yqg2efOH
xC0fx2jRvcS8iNGdGN/Gt7G30eeS09XVFUyskhhYYNTP4G7fX8mlUCjCx4Cv
b2LBr4TicARtbW21PW2LCv+DU5npyM7OxgVi+cRyiF27fBXKTqW6OQbctyG4
JD3tXrx4gcjV0eDyBJBIpJBY2cDOxhZWVhJ4ec1GS/NTdXMMsCG4HPtyBckW
Yd6CZSiqUuBagRxXC0qR92MxrhRWoFOpfo435ZoTtBCfJX2ldn9Hk0v5/Dlm
+PphU9xWbN60Du7u7vCbMQNnMrLwnHymboY35Wpua4HU2QFcHR6snbywesOn
8AmUwcDQDNHLY8ck23C46h80wIjEi7gNiWh7+ss+yrL/dDYmic3wRdKXzLOq
bpaRcnWSOC6/VQdlV//7Qtk2b0/BZEcPND5qUzvLSLmGssraGkjsXJCXe03t
LKPJ9UTZAamdM9L2ZaudZTS5mtqaYWs/BRkZeWpnGQkXjQenz5zCjf8WD3r8
uYs/wFLiAnlZtdpZRsJFY8OcoEB4uHmjo72z37EtLS2wc7aHf8BSKJX/UzvL
SJ/DgrIK6Bubw8/bBz9duopbVVXIO38WU91dwJtoiRL5z2rneBMuapk51yBx
ngZHRyc4u7jCwcER9k4+yM4vUjvD23BRa2hqQ971AhzPuoD8H0vw8HG72v0f
DS422Ui4aAwpKS5A8j/+hpPH0tXu+2hx5V3MhY3UFiKRmIx5DfHXLZ8POF9y
cjI8PDzg6ek5KrZjxw6Vcy1fFUX2cyG2sAff0BT6kyzxqKH/uJD6Ul5eTuL+
22sDNTU1mD59usq5knbugIYmF4YmtuALjSAWTyb+9x/HU66e1xUVlfCZFYAv
Pt81LF++OXAQ0av/iMbHjb37VMlVV1eHnPM5uF1TC5+5MujyjWBkYo20bzNR
VlqC2jt1g3ItXBwO7UnmsJS6oqrq9pB+lMrLYGrrBl2xPdb/KVHlXLn5eZBK
pTAyNsMU5ylYujwOXD19uLi9jw9lITAxs4C1pS2+O5g1kCskAhwtfRhbO+HO
naF/u8srK8EX20BD1xQfrdygcq4P5gZAgyuAFt8YWnpCsp8HbYEYHG0eOJp6
4OjS17qYJDDr5Tp77hx8/QLh5u4FjgYf1lI3zPQLwPbklEF92JO6D0ELQ0m/
dYCmjhH8Zi/EsshYFNwoUhlXQGgoNLQFhMWU+KgNt+lBCIuKx3T/IIZrgr4l
4eKT9vxeLgvbyeS9gLkG+oZW0ObS66ELEemXrS3948yT9nYITaTkXEJo6OhD
T2hBvkcETT1TSCd7qYzr/JXrMLZxhK6BOUTEx4PHciFbFIEjp/IwgatL2mmD
x9fHqpikXq79h48SNldM9fDFuk8SmGsvNLJE7Lr4AXGSvg8Oj4KO0Byy0JVY
/8kWWDm8BwMLFySnpKk0bpSSuLD7yElU1z/GocMHocvjk1hXg+9P/hvL1sbj
671H8bxb3+jpXy1t7ejoVMJrpj8yM7PwqLFpSD+qaxU4duI0pr0/G48eN+Pu
vQaV9q++1tLaDImNNf0MkeExzLV+WYvqGzeo1SruEj8bh+WL4t59FJaU9dv3
Lrhq7z3ANxkXkPrdWexJOz7o+V7melt7F1zDsXGucS62cO1KSYVvQAj2ph36
zXA96+iAyNSR/J5LIXH2JjF1aG2fLVw3i4vh7TMX2nxLBMrCUVFWNmR7NnDF
b/4UeiJzMvYg41uuCcRkPCwyt0di0nZWc/kGLABHxwDcieaY8UEQM3bi6JnA
LzCU1VwlpeVYsiIWu1O/RcTyWKT8Mw1LIuNwU17Faq4ea2pqxuKlsbj/4PXj
KzZxjcTGuca5xjLXbjKfSD2ahbT0bGae8a65Ll+++lrNpsfuk/nXrZd0q5e5
6HyPzvsiI2KYeaCtrQ1aybzwXXFV365Gff1d/H5WII6fyEKZXI6nT1+db/Tg
/n1kZJ6Bt68Mz0i7pu75dS8XmY9/vfcIItbEM/N0Ol/X5Qpw+Mgh3FY8Yubz
pX30PlVwbdmyDQIDG5hZOSFu/SYEzl+MiUZk3DQ/BM+edfRrr1R2YlnUGghN
bRG+cjU2JWyD23u+sLKfiq/27O3liopOYnQUqqdQXeXIyTzIgiNw4Psc6Bta
MvoL1WGoHqMqLkOqL2kZMNqh7kRTaE6YBI7mRBiYO6C5ubVf+9bWVggMJaSt
EBP4xhDS15oiMi4xhIX973q5qN5FdS9G/9LUY/SwsMh4uHrMY3QyqpdR3Yzq
Z6riqiB95OO4TZgzLxhaXBFMyBgwLGIV9h04Ougxu3b/C/5zZbCWuhI+EaZ5
+mPOgiU4e+FSLxfVJ6lOyeiVVLfU5pGxs5jR8qiuqUmuCdU5qd6p6rixOGw5
+X59cj8sUFhUMuRxNTV3IBRLiG9iBIdFDogbVE+murKJmSU+lIXCxW0GuOS5
pPoz1aGpHm0nlSIvP0/lXBsTEqFDnkMrB3eUyIeej1SSeyyWOGOC0BphK9YO
4KJG1wHK5DeZdQG6PkDXCWaS+0zXDXKyc6FQKFQeD6nRGLF522dIP5E1rGNT
UvcjQBaJmtr6Qbl+iTMvYCR2ZNZzaD/W0OQhaefOAedSBddorX+VlpYO4HrY
0ArhJCvwDUwhtrBj1uNWrIpSOddOcu2oL6Nlg61X0nVSul4qEhnBhvSpi/kD
c31Gm+tdGV3fpuvcJSWFg+Y/spXrdcZGLpo3kn+9GOlnspF7vYDJK2E71/mL
hbBz8mHyfVxcXJn8H5oHRPOB2MpVUloLrsAc06a64mL2OdyuqsJPl65hlrcP
k79VWF7JOi6aL+cfsAT2zg5MHl3fz2ieHc23mzN/Xm8MYQuXXF7N5Dn+kD94
XirNjzyddao3f5otXBnpuUxeavOTgXPIwYwtXPv2nYfU3hntXR3Das8WLprv
TfO+q36+85vianzYxuTp03z9l8cXnV0vmPz+js5f83TZwkXjAa2roPUVtM6i
h621XYm16xOZeoz6hoes46JGWWg9DK2LofUxMRu2wtrJEzwdHuycHdHy5FeN
gU1cPWy0jonWM9G6pj8nrMfGdX9h6p2UfZ5PtnENZn/f9iVTn9a39odNXJ1k
rnqloOKXOsEbpbhaIEdRZR0C50dgvmwRa7mam9vh6TWbqeuk9Z20zpPWe9K6
z6jY6GFz9a2HHQtG625p/W1Odz0urcul9bm0TpfW6/ZpO2Q9bE5Ozjp1s7yh
LRqCS0DvGWUba/ftVUb9VCgUH+E19ebdbBLKxwKjfgq6mcb/N8X4Nua2/wMC
VEEe
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztnA1QVNcVx1dFTVtimqnT8aMJmA8xKh+VLxE1GDUwUyvUxGJp7Gga06mN
7QRsbdrRGZOonSZmUjGKSdNoXYxarRDRaSWiJs1oCApEqq5aoNEgCAj73u7b
r/fuv+deJe6WZd0FluU5vJnDfrx7757fu/fdd+655zDu2V8teH6wwWDIu4f+
LFi6alZu7tKXngqjD0+8tHLZs0P4tyRJJPxLDBwDR/87+Lg0tLe3Z5FUkkAH
wvXMuqV7l1wmk2lRP9C1O5LVJZTBEN7Y2Hiuo6x8uhrs7Z1gBe8DJGyLEWzb
HrB8I8zXmkLN0anffHBFuJd1LFsLZoiENiqRJA7a6Dioo6dBGzMVZlNdqDk6
iQ+u8e7l7Nm/gDYvF8rxs7CWnYH1WCWUE9VQPq6BueVGyDm6wyXLMtTZ2XD+
/vWvPnMJte495bJYLMD0HLiezoW6JA+ITwOS0uFa8yeYG5tDztDt/mpug5aw
EGzog1AfTIe6/GW4MmlchtM9lvoMrLX9bt7wr79qr0ObkgHHM2tgbrpd11py
Cur9U4lxOaQbUshZAuVqb22HUnGeXs2d6isbttP8OB3y5xdDzhIwlw+xmupp
zk+Dc9vhkLP0JhcX1wNPQnt1V8hZepNLvkFzygOPQ92wL+QsgXLZC/fBdqDU
a33bwTKwb6fC8o/TIWcJlEvLXgE2aiJs9a0edaWGZmixGWAxT0FqCo3+PeFS
jldBu+9Reh6nw7mjCI5TlXAYi6BNmg1tWALkI/2rr/zl4mItKYcanQk2LhZs
fJx4VSPnQ/7g05Az9IRLjLsrdK+VnYV91xHYjlTCXNsaEp17m0tP0h0u+/l6
SG2dbY/+JIFyyc2tYDRfOLZ5f17Z160DEhKAxMReEfv69X3CxRavppORUMfN
hXT1euf2SBfpwoVeueZSTY24RsHmsv+5EKohCiwsFVrYBLhyciFJnnY85+p4
b77aAKX4aGAs5y5Cqv3v7faCzGX7VwXY2CRoQ+JpHZZIr/R+eCwcG41dcimb
6TokL4ZU94V/+rS2wvHcWtiXrfvKFxRMLseJcrComWCGSdRPKWDDU+h5TFyG
JLDwSbC+s9eTi/STyz4B++ZU6tt4OHNWwfzFVd+6NLdA2WqEOmIG2LBUWN8r
EmzB5LKcqqZn8CziiiGu1JtM1GdsCDEaJsKR95YHl/xZJdTx6eIcvxZs6BTY
V230qYe1qJRsGrpehmgS+p17U2F7c1fQx6H0n0ZoD5O9Qb/LhiUTF0lYFFw/
K/C4xwRXdQ2caYuhDXqMyk+A9q3pUN5636celsIPoNI6ThvEuSbD9dA8KFv2
9c288bej0EbS2AvjTLFwZvwSUov3ecN8qR7qWNJzaByUgr1+6WJ9bz+VnwJt
xEzIH54K+v3lLo7cfOqDR2ie/x6ky9c6t+c+b2zdA8cPVwWkj/MHebC9+u7t
9vqIS7pG68io78OWX+S9PTcuUf6yn3NhR/l/X0Z7m1t7fcTFRT1sgtzo3Y76
f66eSl9y+WxvgGuASydcwm7c/yGkatNdxWUtLAEbtwC2N3bfNVyWYyfpOTEf
IHuMs1kPHtM9l3ThEtQ5S4FBscRF60ayL7XkpZCrzuuai4uyhWzZEdPoB74L
jHwSSr5vG0svXFwcua8D35gJ+7odd25PR1yW4xVwrMyndf6lu4oroPYGuAa4
+jGXfM1M64qu/XnB5pKufBlQffOXDX5x2TYdEOtAvh7say7bxu1wLlkdUH3n
T1+BsvOQTy6+TufrdWZ4lJ4Zm/qUSy6vArt/BvC1FCi7/dtTV3YWg90zHSwi
E9LFOq9c3J/izFgh/CvCzzIySfhd+oJLOVgKLZpsQMNkYDD9/tg5UIzFPutZ
/3oAbPSsm3bIkCSoac9BPnnGg4v7vbj/SwsbL/xh3C/G/WPaw/OFvyzoXMYi
IDyBGplAMhEYHg+FbHhf9exrtwJD48V1gCEObEw6rKUnPbgceZuJ4zHht+T+
S+HH5PazIUb4Ny0nq4PHlZQEc2MTlL/sJ9s2BuzeFNhe2w7zdd9xVOYrDXD+
6DdkE8cBX58Gy6GPqE6LBxf3K3P/Mvczcybhd+b+Z+57jXocjo/Kg8ol9Gxo
hPPHv4Vr4a+FX9ufutKlOmgxi2D7oxHtbW1e7y/7G4ViX4DvD4h9gsHxYN9J
hu0Tzz3uYM0bXC/LZzU0lgLbf7Zt2gPz5a73U8Q9lpMr9nP4vg7f37G/2zkm
pte5SA+5nMbDjZ7HWvJ2vM7zV69DfWiu2IfTfuL9OdLbXPYNG27uV/aSdLVf
aX97P9jk2ZC7iFXtba6+Er6/bb9Q3/W40SnXnUSPXObaFtj+eQZ24xERTyJd
6exT1xsXj+9RI+d5xv1EZ4l4IL1y8TgsbRg9r6LnwrGrGI5Pq+DcUSzitrT7
HhFxXHrjkprawGIWiPg5Hkfnfs5W1wo2imyO7BW647IerhBxjkqJdz+q7e+l
Ik5Sb1zq+r3QItJEfKo/5fXCpb1SCFdEht/l9cLlLDgk4r55/PfdxCVXmUSc
vvKH7Z3Pt5qhVJwTcf5645LayI7PWi7yK3ieRcf3PP/CmbNa5GNY6m7Pk3rh
4sLzYNSUHJEX48p8AerytSJfhufNaIkLRR6NHrlE/zQ2w7XmTSA5XeQ1qUtW
wvX0i2AzckTek165OsQ9B835u9egzlnkkZOmJy6eF6h8fBbKiSpYy07DevQ0
2U6fQ5v3IuyLXvAoqysuU63I51THpNCcH3szz3NUItigSDief9lvLvd82P4g
PB6Rbb6Vh7vFCGzbDVZA8o5R5Ou6lfWZD1tSUvLzULN0UzJ9cIXzPuNs/a3f
uhKup8lkysYd8s1vsUVwPh0I1zP8FtPA/6YYOPrd8T/OinbS
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
Lyf1Jg==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztnA1QVNcVx1GsQmsm0WZsNFPRKKJ86AKCEZMIgTTRzCSIX2knSRtbdQzJ
tAEda6ZpZ4xImonGNqEmoCaT0YzC+AFlxKDT1ARqxEkh+BHRGMRU+TAg7719
u/t2333/nnsR5WN3AyvL7s7wZg4fb9+5nN+799137rnnMHnF7zNWDQ8KCsoO
oS8ZL6xPycp6YcPiEfTLoxvWrlwRzM+SJJLwkxg6hg7/O/i4DGpvb08nqSZB
AAi3M/2m7S656urqnvEDWz2RdJdQQUGjm5qazvXUMdd+DfPBYhjbd0H97KSv
7XfZb264wrpeK8sy7JvfgfGACUbYgzCmPgZjfAws23b6msGpuOGa1vU67c0C
sHFx0DYUwFJ7BZbLbdD+/D4Ysdn2HfU5hydcSnMrjMg0aJnbeunb9hyDueaC
zzk84bKUloNNTYbcKEP5rhnKJxVQjn8JSZJ8bv+dcLFN74LFPAVt934Y02Ng
3D0LRgh9T1sCy9nLPmfwlMt4dRuMEbPAfhoLx9KXYSkog5a7FyxsHvS4DMhX
r/ucwxMuZG4CRk6D/Y87ING82HneXHEO7CczwTZu9zmHR/21LBMschEUxdxL
35G+BmzyAp9zeMLFHl0Me/rLTvUdm/NgBE3yOYdHXGm/hOPJ1c65cvPAgiJ8
zuHROHxlI/TwJ5zO6/qqLLAJKT7n8ITLUnoSbKwJluLj3XQVWaFnKxmO7L/5
nMMTLumGBHvyChjjoqAVFkP+72lolVXQ5z8FNikN8sUmn3N4wsXFXNcMxyPE
NnE6jDETgakzYdw3D+o/K33OcCdcnf2mVtTAVlBMfuFRyBcafW7/QHAFknjC
pV6+6nO7vcGFuYugHqtw+pktJweYPRtISBgQsW3ePChc9uyN5F/cDyN2qdP3
GbdFPn9+QO65fOaMuEfe5tIOlMG4xwTjR0nEFkE+/T+cct2y69wFWAsK+2WP
euwE3ZdLt9vzMpdy9iKMSanEEwVj1FwYwSbgZ/GwVtY657r+PbQNb4PF/wpS
w3d9s6flOhxPZEL7w1uQmq97nUuuvQTHjFTyAyPBguPBRiZSn5HQ7/qMBVBO
nenGJTW3wPLxIbqG1p/BcXAsyYJUf8WtHVJTM2x/2gIjNAEsZC7U3SWQGpu9
y3X+GvSEZWLsGZyLM4XMgTGc7L4nGtrOQ9241MP/ojV1LF0fTkLv8RGxsK3b
4tYOy4591CbpDIum+xcFdlcSLB+WeH0cypcaoU9eSCyxYKH0fI2k+So0Cra3
uz8/nEs5WQNH2q/JxnBqKBxsYhrUjw+7f64+PEB+2kNiDHA2h2k5zCX/HpR5
w1r0KfUP9dOoeWD0t+2res/Bnc+X/E09jAmP0LVxMO8v75Mtlp1FNHZN0Mc/
Brn6a68/X7eeAZrXHUvXi3UkMz0Hqc35PH/Lzvf2QVu9qV/22BdlQ80rut3e
IHBxMZ9tgD5lIdQjVc7b68Il7sW15n7ZI5+v797eIHGJ8Xi41mXssCfXncpg
crltb4hriMvPuJQTNbC+u7df+tb8/VC++MpvubgPpCc9DyM8HcqXp/ukq1Sf
AZu2GPr81ZDIv/Q3LvniJWgrXwPIz8KIeOipKyF/2+BWT6qn90fK74BgWruN
nAvtlb+Kd7s/cWmv55GPFU+NRAHDIoGQePJp/+5WT8t6Exg1h7i4Hq0VxibD
Su91f+KSrlwlO98gJuIin96+bB3ab9xw31+ko6fy/iKmkERYc3d53Z/vL5ew
81oTWGR6x/qrqW/7SMqJahj3Pw7HslfR/n1rR3t+xtXe1ga1rBJq4bF+6du2
7iZf6tvb7fkb1wDJENcQlz9z8fWE9bDr9723uXgcqz/6co/4jisuteykWAfy
9eBgc1m3fgTH4nX90rf/5i+wbtnjlktqlcBmPSvW7Xz97jQ+6yUu5Qt6F937
MPlEc8j33dMnXctHh8jnmAdj3C+gfOU6vmFfmSPiKzzOwuMt1sJPB4XLUlQK
FrHwph8VRXwP/WDc15JfCOO+lA4fapgJLO4ZEfvtyWXbQr5VaLSIh4m42PBY
ESfj8TKvc31QBNyVSI1EkEwHfjyb+qLYrZ41N5985FhiiiGdSBgT0mA+UtmN
S9t5EMbddJ+Gm0T8UsQxyZ/kcU0e3+RxTq9xJSaK2K26r4zG4ExiSoAtZ4eI
UbvTk642Qlvzeod/GPogzKXHRSy8K5dy6jT0GU92xBiJicedRfxZxJ1TRVza
m1ziZ+LQ1r4FR0a2sK8vulJTC/SHfwtrzi60t7Y5fb74fgDfF+D7A2KfgO8X
TEqjefcbr4/Dzp/lhmswnzrbL331kxOQuuwbOps3+D6OiKnzfZ0xJmgHj/S2
Y6C5yA6lqkr4vZ7odxXejtN5nuZ1I26p2Iezr3Uedx1oLltubsd+5QCJq/1K
9ejnQFKG6/s7wFyDKWqD633uQOZyJ4HIxfNGbLvLYcs/BLWiWuSVBDqXWlIh
8nxEvs+Yn4NNnC7ygHg+UKBy8Tws/q7SkxdB+88pkadlKyoReVs8f6trvwUS
lyNrG9gDKVAUpdt5nmfHxsaKvLtA5GITkqGvzup1nr/P9IgFIk8yILnIx3C8
4TxHmuez8rzWQOQS68jcPKef8fxjnocciFw879uR/mKv84psFjFYY3lmYHJt
3A599CyRt995jufz29cXiPx+vJQTkFy8rkKPzwALSxL1Fpb8MjiWvAR2r0nU
Y/C6jEDk4sLrYXhdjKiP4XUyM2Kg7TkAFv20qKMJVC4x9mhe5/VMSnkllP+1
QG6UwKbMF3VPgchlrqkTecU9z2svbhX1aUpLa0By2faWg42Phvba+7DUt8FS
2wDb+nywcbGinrDrtYHExYXXc/K6TlHfGTYHxhRiyn1H1H/2lctZPaw/iPp5
FYztH4i6XHOt05xbt/WwpaWla3zN4KE87YZrNO8zzuav/dZTuJ11dXXL8QP1
5jfZwjhfAAi3c/RNpqH/TTF0+N3xf64MU7w=
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
1gy1vg==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte",
           ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
RiZsxk2Eb0gkO3c9XHWN7YhflsPmU2heheZXeNZ2OHnuLLbu3I+Q6ETsOHio
l08WXI4fTCE+A80vmhNfijxqG4MxMIWFk0BCv/T2HfIZ2LJxmQ75HLTJ58Ho
mrN5m8/z9/dyxSdvZPNebP5LRRVpG7cT3z8L6Tn5bJ6M5sto3ozmz2TF9eBh
LdZu/BwzAxdChdhrPWYcFiWk4OipsxL6ND6hORy3ab7QI1zqptZwcPfC7DAh
qh887OWi+Umap2TzlSZWMHUWwMknEPo2Y9m8Jpvf1DWEg+cUma8bHt4z2Zyg
ls0IPKwdeG/YEXINahD/UI34y1t3fyFxfdF8Ms0rs/llPROomz/PO7P5Z33D
5/loHX0ECSNkzhWXkgFNKxuMneqLmke1A5731eHvocbhQ5UzCnnkenmVi+b/
aR2Aa2uNjOx1cJsRyNYJhMtzkLQ0na0fhEctZusJsuZqFbUhd0cBrt24+drz
RERXMOtDjJwcgLr6JxJcVOh6WF9fz9ZxtCx5YEjsQ+s7569eF4vHZcUlrfpX
cXGxxP2rrb2TrbvR+hutw9F6XGRsrMS50ubatGkTa4u05NV6Ja2P0joprZey
dVMtAxILJcic630IrWuPc3Zl69xT/XxQcqd0UHBRofsR6L4Euj+hr9eVlet1
osxcza0d+PbEOXYf0GDiKquogTHXHjsK8gcVV+HJy+z+upvldwYVV2zsxxgj
ELD7IgcNV9czODhOQWJGSp+vKyvXqTPX2H3Gl679Mqi45i9IhIv7eHZ/+GDh
qq0XwdDcFmvWZ/ero4xc2Z/uYfstqh7e71dH2bjqH7eCw3dBWHTEgHrKxpW1
IZ/tYyqrHDh3p0xct8pqyffPETEp8RKvFXz5A46dv6B0XM2iLvjNE4Lj6ILG
dvE8JI2j/WZHIXXdy34FpeFq6YSn9yxo8+3Yvk7a30n7PGm/58wwIdv/uXnf
Sz9xIK6eflhFEdp3S/tvaR8u7celfbm0P5f26dJ+3e0HCnp0B+yHLSoqSpY3
yzvK/AG49OicUTZFm7f+hNpZVVUVhtf0m79gs6V8SiDUTr0XTEP/m2LoULjj
/9wOCDE=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
Qx/15p1sExhfFAjTM76Taeh/UwxdEXf9H0XBb4s=
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
zaUkzaAG4tu4RpMkQNYW8Ny7p3uEs/9T+yzLe4QnqjE9sSnJ7flelk92lr/G
axwsz8zyzSzvzNnCyGZ5JW61Kn9wOVbSenjAeMgjciDOLCc7JELMX9L52piO
i/kVPKcjzn2Bxlc+lCFZsL+8w8VlOneD1wF43jQyRa0P0DNg9QJeN+gfC9v7
h/3KxdZTjsptsP92F4QLDRB/thqWIye9j6+az+Fc9Apfm1hffw+29eTnbja5
uKwHT/K8OK9L8bxsIq/rsPoOq/Oweo88/5f+HV+HDpE/O09MF1Rh3+/8vYti
2b/fVf+y//mjthqcTq27sfrbgDS1HsdqBnROKSjzGxevV5IuPhGdzlWvNNFa
m9VFWX2U1UlZvVSs2Mjrp6ymw+qpjl17/MblL2E+gdWxWT2b1bWtxz/mORJJ
X8br3rbtO937TYhw3Za730FgvCZTx1gq1Lg62LGT90lCmct6+iqkac/z94B6
E5f4p+NQomNgP1LT4VwocznmbyBfr+Xv2fUWLuY75KTZkCcXeDwfqlzmr67w
91bt67f2Ki7npg/4e8aWk1/2Gi42Z4lJT0LSTubvh/cWLuuxWv7+vli1o9Nr
QpFLKlzD91uY6i/3Gi6hrpHvi2H7Y7xdF2pc9tINfB+T6dRZ93M05vy5Xvan
sH1m7H0Y5+K1Hc45V22l42tCjku42gpH9nPElQEzey+C1Qjv2D8o/aQYckJW
yHGZLzfzfZxyeLy6r/OhHHWf57CJ6r5Ptv8zQ98lrtv7YYNB2Nhh+27Z/lu2
D5fvx80t4vtz2T5dpBfwfbtt13vdD3vgwIGFgebppszwwhXNbMbYgslu3oTp
WVtbOxffst+8jW0k4wsBYXpGtzH1/d8UfZ+g+/wfV8jBbg==
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
aHA=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
evW/KV5tCrf9H6FreTM=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1: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
m+LBK+he/wczwx1k
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
N7Uf
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
jA==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
m+LRx+s+/wclHBuj
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1:eJztnItfzFkfx+da00w1TbqoSLUhPdi1FVGxkktlFWvduniETUsu4UWFlC62
x65LeFgtPe53u2p37RaWJYnYR4WeklTTBV34Bz7POaeM0hiarWbm9TKv19f8
fud3vr/O+3fm9z3f7znnyz5s2bSveBwOZ6WI/DNt3pqxUVHzor8QkBPv6FUL
w/i0lMhwIrQQHz4fPtr3ob9LTnNzcyCRu0SgA0LbGdja9rdylZSUzNKCtqoj
gW+F4nAM6+rq7rer3/gMsVHhMCImhtgc+LoPx585f2iaQWm/qeDq17ZuQ9Mz
BM+ZBhsbO0zwn4Og+cth6zgQvc0s8Wvmr5rm6CAquAa0rbchKQZ6ehLk5NzE
ixcvWFlF7VO4j/PFIIchqK2u1TiLOlwmJkZYMH91B/0rtwrQS2aJs2d+1jiL
Olx02N6+fV8Hfdp3DgMHIWZ1ssZZ1OXatXO/0nu4eXpiVsBCjbOow2VmbYWw
2V8rvYfjACfMnrZI4yzqcK1LTYWJWILCW3fYb49JcwM2xkVDKOBh7oxIjbOo
w/WkphZDXdzRy0iKZYu+RsqmRHzm6QJLKzuYmFoiYv5ajbOow0XlbvFDBC+M
wGCXURjyqQf8p4Xgal4RnJydkZSwV+Ms6nK9ksd1zSiXN7HjR48fwq6vI7LO
X9M4izpcGelpyDxxtoN+xKIwDBroihr5c42zqMM1fe5sWMrMcOVCDupraojI
ceLgPkiILYmJ/U7jHOpyVRKfafzUL9Hf3hGOdvYY4PAR+vXti9mhUWhofKFx
DnW5qNQ8bcD+Yz9hwZJ1iIzahLOZlxW+oraJOnZDF0RdrvrqGo23vau5Lub8
hsle4/Hy5UuNt7+ruCiLr58vuHwBdm/Z0eF6UlISXFxc4Obm1iWSnKxenNBZ
rv8c2AOZ1AQSvhg25ja4duVGu+u0LQUFBWhqavrbz7yoqAiurq7dzlVaeh8O
tjbgcwSQCiQsdvFy80Lj89cMlKutzs+Zv3SqPZcuXkZDQ4PivLu56O8vPHwe
Y5EIDaHP4UHE0yfnPKTGvx6X23Kl7UiD88BP8ORxxXu1pYaM9UOHjkTa9j09
xnX79i1YWphDwOVDXyCCHo988/VIPS4+snFEafGjdly5ubkQicTkOh8+oyeg
uendbZkyJZDU14ehxAp5ufk9wrUhfiPrKyFXCD5PACFPCCGxHTzCR8sz0s8p
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
z/8BsW5oXg==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztnHlU08cWxyObQMImWyABwqqA4sqiYQkgmyuSQBJQMSqigqJoZanVVkRr
j33teT19tYpatVZBWzds9WlraxUoykOtSNECiguoCGr7//fNDBBRKC7HSHKO
Oed6fr8fM2E+3Ll37r2/GV1nZyXM0+NwOMuMyT8Jqpzw7GxVntSA3ETkLU+b
rU+fEgkgQh/i7eftR/s+dF5yHj58GE+kmgh0QOg44zvH/o9cdXV1Ci0Y66tI
/D9CcTi8lpaWK48ePcJPJ4/jt4pKdb87LbdwuPQwjvz3e7S3tfU3Q69664PL
hbb5+++/ESwJgUKuYn3q6usQER0KcwcBHAd7ITx6Ai7VNPQ3Rw/pg8uri0tM
uBIT55D27chakQUbgRf2n6jAkZ/LwHf3xNy05f3O8Spc48KCCdds1j42KQFJ
05eq+2fk5iE8UoG//vqr31leWl9hYiTKOrgmKuWQyuer++/atQsT4+exdv3N
8ir6ksk67GtSsgLTZOnq/nkFBZBEpOgsV2In10RlEhKSFqj756/5AJJI3eXq
0lecIonMwydcS1euQli4bnKN7WZfE7px0bVtYV4OwiTJOskVFDIOcvlc1j5W
LoVMkaHmysjJQWTUdN3lUszr4EpMQGJKpporMycPKSkp/c7xKlyBwWOhlKex
9pHTpmK6KrsbVy6mTFHi8ePH/c7y0lxEXwo51Vc7IhOmIj5hLtrb21n/xXm5
mDhByhj7m+VluQKCRiNROotxrd64ERbmVvhi02aU7N8LeyEfC5YU9DvHq3CF
TFNgduZ7rH1DcwtCp8nh6OyKwT6+CI1OwdWGB/3O8bJcVGobb6G+qVndp5XM
uYqqi6isvoSWVu2yq5fhela0zZZeB1fRzi2Qy2TY8PGnat+hjfIyXJu2FWGQ
jRU4FmYwsbJGbu6aHt9XWFiI0aNHw9/f/7XIunXrNMpF595UhQIcfUNwRG7g
2PNhJvTE3XtP1wHoWKqqql6LLi9fvowxY8ZoXF/L16wFx8gIHKEzODxTDPWP
7vF9lKvrupLwOQ/zw9zMrBcay3elh8l6uBKt9+6rn2mS6xwZX0nxPvxaXkV8
vgwcK0vwRT7YursUe/cWo7y8ulcu6YxUDLC2B899MCrOne9zHFf++APOI/1h
5OSJhTmrNM51+NhRiNxcYeXAh7OLCJLJCeCYmUI0KhhDRg2DhZ09hEIR9nxz
uAdXUqoKHK4FzN29UH3p8nO5DO0E4JjbkZhmhsa5AmMiiE0ZgGNjQ+aeGX3e
ec0jfESsyLW+MRxcRqm5DpUegTg8Ct4jRoMz0BSOHoMRFDUeq9Zt6HUMu0tK
kDJnDgRe3tDjDkKsVIlFK/JQU1OrMa5JKvI3H6BPfCDxgwYG8AmORUxKBjzE
EmJrxIcMsgXH0Bh8t2A1l8fwkeDomZDvMIS5rSMMjMnfw8AIJkSvd4ntVF+8
gE1FX6G+vpH1MbUnehrIZaLHJb/HlIilLSxE3hrjOlVVDTdi+1y+EDa2Lvjo
yz0Ii5qAD7fsBc9qENOfhY0LPv3ioJrrqz3FEHr5wntUIOYvzoZ8hgo8Gzuk
LsgiXPdg7eoFPWshhkqiWJ9oYrOGJOYMlERj7oJFsBC4wdBWiOnzlmjUb1yq
v47P9x5EbcNtbPlqK4yMTVFW+TuK9h9A6qIV2HnghDpP6bKvOy13cb+1DX7B
Idi+uxj115vY8/ut92HjOpjpZLA4vGMcbW04eboMu/d9C9/AMFQRWzx1pkLj
/rBLbt6+BfehHkxHypkdtbZnY6rufoPKtcbruP+gY43bvmsnwmPiIPL2A8fY
AgGRMZBOn4nKc1Xs5w3Xb+DoiZ+f6v8muC5e/RP/2rYPG4pKsP7Lkl6/rztX
6Q8/YHz8VCzNzUMb0Ymjuyexs4HgmJiBa0vWQFNidzxLRMQnsfafb9mM/IJC
1F299ka5XkS6c40MDiXjtoAeiU2qL/6OlQVrYWpth9C4KUhfvAw+gWIMtBXg
sy078GtZGfRs+cQPOSImKVVruWpra4nvnocBXDPwvX1x5mxZx3Oii9Nl5XAd
EYDaugacI7kOff7jL6dJXCaCnqU9VJnLtZJr5QdriF4cyJrtSOzIBOZ2DjB1
dMAkZYrajn4pryS+sZXdK2fPhWjYcJg5OJE10Rre/mKMCI3Erj0lWsXlPnwU
sSELsr6ZYMjwMeAOsiNrnCF4rp64Q/Lt7u1vNDXBxF5I+LlkTjrAjvpK2pes
Xw5D/bWKq6r6IhKmqzAnYwlU6RnIf78AwdGx+Pfm7T3a07g/851cOPkOx4Jl
OchYmoPQidPgPS4cu/cf0iqu7vd07h36/vhz+7U9fIR9Bw5j9PjJHWtH5/qh
jVztROrJ+tV4o+mF+t663Yzm5ntP5W7axtXS3Iz7JBb0k0SSuPY73H3GrnqT
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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
AW4LqgE=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte",
           ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztnIdXk8kah5NACCUIUsWSAArSrAEV1AWsa0XFsogNvOu99rrrWteyAaUo
ip1FDKCgqICioufay3VB9OiqK4KIikJQbP/A785MQmLcyGqOIck55pyXfGXm
yzzflLfMDB6x88fM4HE4nMWW5M+YmKXhixbFLIs0Jyf9li35MdaMXiXSgwi9
iG+fbx/j+9B2yXn79u0oIreIwASElnOUsuyf5CovL//BCMqqi4z6JBSHI6yr
q7tvBGXUqd6a4BI3phvSsyvyMnLY8fv377EjYT0GSDph3rQYVFdWGppBqzTB
5d2YhqqAxI072XFSghTODo4ICRsORzd3jBg0AnU19Qbn0JUrJfl3vHv3Dt0l
3bFg/lp2/XZ5BcRibxTlFxmcQ1euzclpjKvPdwNQcLBYld/H2x/79+83OIfu
XHsYV3BIGHJl+ar8HcReyMrKMjiHrlxbNqczrp69vsPBrEJVfk9RR8KVY3AO
Xbka+1ev4FAclBWo8nuIaH1lG5xD93ao6F+9QkJJOzymboceHU26HW5KUvav
3uGES90OO4h9TLq+UpLTleNGOHI+4Gov7ojMTNPnCgmh9VWgyu8ubo/CwkKD
lP1rcKn6FxkP83PU+svP1x8Z+w4anENXrk0JuxhXj+A+mDd9NuS1tSgruQqx
yBtnzlwwOIcuXBYCAdauSmbH29Kz4eTaFv6+fhC1a4eI0bF48+a9wTl04UpI
3Ysr18rYMbXnDxWcxLqELdiWlovq6jqDM+jKZYqiCxftZ4Yutz64/hMTC3nd
G633pFIpJBIJgoKCvorExcU1C5dMlg5zczNIVyZqfR4tS1lZGRlLtHN/idy9
exeBgYF656qpeYLOfr6wNrOCq70L7t36UytX43FlRQUyM77MFolbn6DxTpqD
a9HcWeBzzOBkYQsuxxxD+w37W19r5KJlW7RgCUKCwgjf58VAzp49Bz+fnshI
z242rtLS/8GxZUsIOBZoYW4JId8OFnxLHD6Qr5Ur71Ae+ObWMOdaYWLkJLx8
+bLJclRXV8PHpwv5XSFaOXvhRkmZ3rmozpoUPZ7UEQ9WXMLEuGyZHdI/7Hu8
aXinwXXp0kW4tWrN7lOx4tsQ+3KLxu++rFdzvn79GhOjJoHDNSfpeUQE6BUU
joqHlXrlqpXXQUKeT8toyRMQJgGseVbgcfkQChxwrviqBlcgEfoO+BYWsLOz
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
ZwJCyylUMn373xTfPkb3+T8PIine
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1: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
v2TTpny9QGg7BS+Z/v6/Kf4+JO74L79XFs4=
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
5TLVn/zYkv+r4oPPH/v7dGT/mOQnexNcZobN8HLQZG+sq1x2LtmN1N3NObt3
CJuisjCwy+TE6XxWBOdh75XC1fRUFDdviWsnVfqQ6/WlfJgRBTeyqnAVZeZS
MXSa7LeU/ZeSH1PiazdA9m8q/s2P9Lq5yvV0cXF4n+SUULZt/pT0q8dJSz/F
9k2dOHVYg/B9x3EOLCMxtZTYlBK8N5VVtq2tsVC/j/jhHrKfnHd0yF8d9f/+
SCk+ZbRAHG8p+5llf3P9XpX+Z8kP3XEwJcmp1cq10vsj+d7l5hfye3YmMZaB
7NUdyc7R3dhuZsF2r53EBySwf8UuNs8I5MLvlXljj6baVzLV68OjL6zIu3O3
ir2kOIAUD5BsKscHnsQJ3uPRuGlyHKE622F8QiD3Hn8/tCWZC0LH+yHRPDT3
odjInbsW3uR+ZkPB5/MptvVh22gH8gqlmE0uqvYjUbUdjSLrDnkFT/cvKX4j
xXGor1MZ11F7X47zSPGe6uxfUryq+Ndf5Xt9+WImCaOsKLP2pPTjSShWbaTU
zI2H3cdR6hRAiV8EJR4/cutre8IM/eQ4mWLNdoqCdsp1SfU8K/4lxd2k+Jsc
h2vXi7IzZ6r9uaFcvvxxvPKxPCtOqaf37LJ/v06IVM+z4pVSnFSKl0pxU+Wa
8Gff39fM9aZEim9Lce4/4lNvC9dL+0Md5pLySMqknK17bwdXWXg85UOnynk/
Uv5P+SgjOR+oOsfl6pb7IbFyXpaUn1W+ZImcr0W7HnL+VtnxC3WSS8qbU/X6
DFW/EZRm331SLuXZSfl22HjWTa5r2XK+o9JqUVUbij4m5UcyxrBucl29happ
H5SzPaqUl2Tly/msUl5r3eTKkvOJlXZPj9V/zj+uU1zpWXL+t3Lu4peeW6e4
MrLlfH2lmcdLz61TXNduyesrlObebxeXZK/WYm5s7PZ2cd3IkdcvKc08X3pu
XeKS1plJ682U896edlj2203uRyWhaj5IXicorReU1g3WdS6V/Up5Hafsf2rU
Bzr1ldd5vgrX89bD1oi9DibL627xD4SVP8nrcKV1uc85/4XrYffs2WNR0zyv
KF+/gEtdspnEVpvs9iKR9ExLS5vKS9abP2bTlvjqgEh6qj9m+ut/U/y11brt
/wBVTEbS
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
xllovKX+9PnnwpVo8CouXP4ZWcv+jco71ThxKAm7FndDXmI3bEntiY25aVzd
/N0ViEkpweXLj3JOsnGOgMgCDTuOPFFfNP5F42BcLJOLi2lBNtXnD3k4RXBl
6Bpj+ZooBId745cbUpRe/AL5ab2xObk78pIG4tDRUlTdleDqLzXYe7gCO/a2
xd0aF+cCglfJlw8DqzMR1RW//YGrKWMzF7fk4pcPYpkifS6+qXB9aekiNkID
UcHmOHaiApUVJdizTBNb09TwcfJg3K2qRGlZLbyDipGSVYby3ySQlpUBPU3J
Fw8FeMZEhqEudePD+BYVGlem8WUaZ6bxZhp3pvFnTnfjHdrpTBFcmUMNsfbj
OIQE2uNiiRTlt2vhNX0AEsjcm52kjTPnT3H3Uu6uO4jMvoJLEinubdxEWAgT
Y0RkCMfXZDmnnb4al29vi8vyTLj8AJcnoGw0b6BmyOURFMZF5q89H0XjLvnt
ElLbYty7QlfgwHueSB0zHoED+sHXagLiZjoj8X0HRL9jh/SA9ZB89iUgNAFU
R4A1nEA6YIwGG/92XDRvQ/M3bXkcms/R5/I7NM/DEl7WJ0phXDT/da+wEJKS
UlT8dBknc3fh3CQPtE52QsvCdLQ6hKDJPRK1TsGomx2MlnkpKJ7ghaKle9GQ
shL3Vm1GfdFXaI7IQn3+9nb5L5pno/k2mnfj8m9cHu4VLi/H5edsHRXGxeUr
SV9Yswdixgn+RNrqmD8Sc3Ou/PF8Jc2L0vwolydVJRxh2eT9AI6J5lNblq5V
GJciheax5fNCAdt3IQsK5/LcrY6egOUbYP1CyXnF2Q2Fs0mlqCdzxOO5AbpO
4ffrEpSN64FIyqrQ9G0xmr4v5daV/P68snHROaph03HIB1py63649T8mE7n1
QMrM1bDtS8j6GHPrs5o3bEUz9VF69uPWb9F1XErJRXTVbOPMraOT3H60Foau
s6PP5XTdnTJySevqIH/dhlv3+Hh5/RcXuPWRWLddObmIzZObW0M2cw7oetUH
5XQdK+sdhuZjJ5SXy+wdyGY4c+uLH5RTW6LMdp7jMn0bMju3dlxPEuXjsoL8
BeRiR1px+yxeKC7ynMYOt4bcKeDF4qoh4/DVsWBdg/60rjJxcevPRlgT3z3m
heGi+wEbD50GO8AK7HsBaPjmErdvUNm5ZNRX0tAlHTPg9ijQ/Z10n+ezcHW0
H/Z5S+MPF+/vvyXPyIvIa8Lijup3uB+2oKDAt7N5nlGmdsClRnVG2bqS3joS
2s+SkhI7/Ml+8/tsupRPCYT2U+0+0z//m+Kfo8sd/wV+5m76
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztnAl4TNcewG8yM5mREFVLLSVorKkGFZRSS4uqKvoUr/aq5T1rbLHVEpES
Iq1oFhJifbZaXsS+l9ZSRC1JqKVaInsmRiSS+3vnXERVqv28Rma+r/f7/iZz
zrn3O785y/2f/6JK/xFdBtorijLaJP7p0m98S0/PfhM+1IsvrSaM+bS/TpYK
aShEFvL39fdlfZecl0paWlonIaeEYAMi+9npQd9/lys2Nra7FfT1WaTT70Ip
StH4+Pjzv73HfOMWWSvWY9m6G7PZXNj9/91xewqXy2/b3zkZQ27D9qLSFUw1
yO3Yj/SfbxU2Q77yFK7qv26Xnp5ObtuuqC81Jct3HdkDfTW+3BF+Wl1hczwr
l/nqL1D+dbImLM4rUxv3gvodMada33z801xiDqrOdbEs35lXljt2nmBtJtZc
cqFzPDPXsXOoJjcsy7bfL0tNRZ0UBKWbYP45qdA5npnr+Hko6o5l7d68sqzZ
oVBRjNf1xELneFau9MtifZWsh+U/e/LKLIuWgktrsfasb0/8M1yWuCvcCd8C
zoJr0+G8e+/4h6NWa4v5F9tcX2rISjCWEoV1yK3fmcx1Udreblm6HLX622Lf
SCl0jmfhyjwVQ86cZaBzQ634JhQrR86CMDJXRaG6NBXryzbHS4o50Qxl3Mlc
8y1Z4/1QnSpD3c6otduJOht+L8f+JPb02txdtFr7nt13smhUHvWDiaRboZ74
p7lShR7VsJ0YMzcyFy8l0ztQNHITe+Qb5Hj5knHhYqGzPAuXlLs7olFrNkMt
VxMquJHTYhA59T9CrVSP7Igdhc7yrFxSMm6JfT/yFJbdZzGnZ5CemIJlf5zY
OxIKneX/4bIVeRau7PBVZO49Wuh9/yu5zOfioGw1clt2x5yR8UT9XR8faNCA
3AYeT5fXH36Ktq+/nidqg/uSK56Bhwd3Z80qcC557s/p2Afsqovzch2y/SOe
fJ7oizkm5n771VvJWL6FVPF3csoj2bQjkbkhN4iITCNg0mEO2tXh3VeLM21k
ccYNKsZyPyfO7HgP89mz2m9U0Fz3/ILBIJjs66LauaOWbsidb8881kYVYyA/
0xMSxL7ZAvXlt0lLeVzP2r43mR8uJJOaksqKg5lEfriQDUopunRwoFcHE4eW
G4nb254LcWbxvILlsmyOAkdXUfGqGC8h9oJLqYVatxOW2KuPcaWKs9m9bv8W
9TW0ttmDPsur//n6TwwZEsj6zSkcP3GLmX6X+WJDKpdrfcRU+2J80seBz0cY
eP9tN85eSC1QLjn/1JZdRGEFwVNPyKuoutdQHZqJsorc6zXtMa700NWijet9
+45kc3DnzspIrb7vPz+m1mv/or9nEhsjb9BjUBxzw+IJX3CaeFN9upR2wtfL
yKCPXubE8XMFPl4Zx2NRKzQRFdXEGAgmnZiLYuxyK7wt6i4+xpV26Rq5dTuI
tlU1yXUVOmTsFc6cicbJWJp/D5nA0WgL359J4tK1+/dFnbxDZL9FnBW/3XsN
HJk7zpnwkAV587og19ftrYdRi4rxsqutiVqsMbejTuS7vjKixfnaJMbV6E7G
oZNameeoMZSyK8HRHiPZdSSFiTN+JCEhVav7+r83CduZTUz1j9mkr4Zv2DoO
HDpf4OOVt3eMmi2YXMQ8cyF7SvgT9b/+fe96hZA92Dvvu1s9Dzoozlys9S+2
HL3D2q0WklLS2bnfQsDiNOaH/8La1VdI0nkQO8b3wfOeD1d6fDJq1bdQ63Qm
PfnJ84nkuhV/i/171nN4VxDJN29q5fE34ylavCyt7J2YO+ANpkwdz5rVEcya
E87oMTMYO7QD/hOrEbDmEpGDN5Ai5vs3K7c8l3n4ULLnrCTLb2O+dbIfZ88c
ZeO8ymzwd+Fk9H295PLlqzgXfZGRnzqwYp6OhZN0zJ9YQrAY8RmmEDFTIWSK
woyRNZm17EfiPAZyraTHcxuvPxLJdfjgAbaHlmXnkmocP35AK48+eYyg6XqW
eCvMHe3AlxMMfDXFhJ/4O2KWibljHQiabGDRVIXxw2oI/vXcUOqhCh3EWri2
bpiD/+zBBAYMYNumqezZn0HFyt/Qqe1IPhvqzOKZOvwnGPH3MvF1gIE5njq2
Bin4ji7HnPEvUtt1IIrxDN0MU6yKK3LXHby8Y9lz4EcOirGbM7U1ZSuuRK+P
oX+/KbR4oyLBnzkwb5wjfXsU5x8fvMiUCV6Eb0zi3W4rcLAviWK3FMXxkKY/
WgtXYHgai8UaufJjDJ+Pr0nHVgojh1aie5mxqJWb0LhKBb5f5Uj7xkUY3awb
X4xfw8KN2Qz+cBdRLzcUzEacipRB0a21Kq41a1YRteMIM8e8wpRBdkSFmhjc
R2FNz1oEKC/Su60D+5YWoZ2js3hfVGNd4LeMmHGFfUp9LHVK0bdPEfzH2+Fo
qm1VXPt3BzJ2SEXaNVXEvmdk2Ww7Qua3Z+6iaxR/qQL2zgovlNdTWXFgtOub
rDx4j3Fu0u/0EpEtSzPoUwM7FhXDe7iTdnaxFq5xQxry3psK7ZsZeLmsPUuG
6vis/hQCt2QT0KgrQ8W7uYXyAu6KiXat/0nYrhyCnHuA8SWm93LCzVXHyF4m
PHs7WdG+8TqtPOyoXFbHR20NeI3Vk9SoBCsduzN5fQ7nO3re15/taorPKsS+
48nnu3IJdurO1SbFGDlMzz/aGGnV0IE2TRythitXcM0YahSip15tPXN6mkBX
htASvQncfI932/aipqKjqeJEPyG+7u1Ztjubye94s1C8n13E/OwpzmHd2tox
3rO11byXc8TvO6anPZELHBkz0p7D75QUDyvFqEYLCduezbzqzXlFMeBSS09Z
FwOOxUoQFn6QhfNasNjbnjDvIrzXzI6Rg+uybcvz0ef/HJcH9kpTvPorjB6m
g9pF2ai0YrBPEptm7xP7XyWaFRNn4ggjfTvpWayUZEvnmnTqqBA208isEUK/
8mnEqnWniIj4rxWNlweKYT86O1fmDVdYXfUDBn5ykfkrspjvuYgBDTvRpaWO
w6E63F3Kca3WOzR3CmBA3zd5/y0F7wkNOHPuKrPmXyBkeZLVcMn3jWI8iKLf
Jp7hwpudAlm+KY553gPp093ApDEmQqY7sHK2gTYtStO15wB0utMYHXcxaewA
duzaw9ebTjB26gV2HUi3Gi65f/UzeIoxu0D9Op4Ez7THZ4SRr+eL+eVlYPOX
egLGGzQ9asMXDgRPNzKkdxte84hk18HbHNg+k+CFH+Pn05lNG4KsiitBcWXY
J6uZ4lmBUHH2CBR6uvcwA+E+ehZM0hMyTU/QVBOBk0yETjcQMFHP6dNHtPu/
P7Wf7xZX4mBIVQ4eOWk1XNLWebVyYy5U68LMZTHifFVVcCiEz1CEnqvwxWdF
mT7KGb9RetZ/pWd4XwccHUoRE3PfRnL01Dfs9K9C5Fx3zl34fa6suV+Lc+CK
5zdeHh6c2H6INKUcG3ouZVroOWaPq8LE0QMZNjqCwEX7WL95D77+y5n3SQda
G0wUKVGZn67/ot2ffPUqR/aEcujIbhITk/Plkud0eV5XqzTXzu/PhevB++aS
91ck2dVgcXAMMwIT8f3SzN4jFhIS01m3KY2t31mIq9KL1uLdXKNe07z7s3tP
4u7Y4F8970mu7Mnhmn1F2lmkveV5ce3bfwK/4ADW2ZXnQtXu+CxPZ/2Wm3lt
Rk+6xP7vUtn3fm9K2L/AiOETtfLb+46AqQEUacrtI6fy5bq99bhmB3toE6No
Pc1O9jy4VkX4sGCyA11bOnJGKc+yjiFEfn+HlORUvv8hWbyfkvnu1G16fTwM
Z6dyHD1+GvOly6iube77QO3qor7SgfTTj9vZMo5dRK3QSrNbSvultGNKe6a0
a0r7ZsGur4acPBEtzogl8R5loMfLjlyxa0BwQDQ+QQl06BXL3gO36DsiiWp1
htO1y0fafZYtu0Ev+mnn9sBOXp+MxRsf45J2ZWlflnZmaW+WdmfN/iz0aLXV
h4/FQxYE19nzybzTvCqzPcV+N9jITGNxLrr1JigqA//Q60SfTWbt5jR69vuS
2LiYR3vcpAChI0s2d7L7THtiHko/gPQHSL+A9A9o/NJf4OgqfpdtBT4PYy+m
c/XIG+yLsKO/0M17djWxRinL1p7h7DyfqbU79UMS2/c9GX+U06AHapk2pCcm
57u+pP9G+nGkP0f6daR/597ckAJfX9JflXHsGNFRjQgWuvlgcTYc86k489cy
sUNXh0DvY0KvSiVo6U3Blcit+FRu3kzlxg3xGZ9GQuR3JIdFkZCcpj0nP/+X
9LtJ/xtiv835oG++8bh/NdddX1+tL+qvRfoh8+Rh2W/a5CPyOfn5K6WfVPpL
KVsd87n84yv+aq7nJdK/nb1k9e/PGxvl+sP1YCNc5msJWpyIjBeRcSOW3T9g
iTypxZPYMlf2ku2olepq8T05bw2E8rVRy9VCrdmcuzujbZYrI+YSOV6fa/FY
UieR8VkyTkvGa8m4LRm/ZYtcUmTcnIyfQ5wVsvtN1spkfJ2MszPHXbdZLhnn
qNZqh1qvsxb/mDVuDplrhK5c5jUtPtJmua4nobo0IXP1NnICw6BY2fvxqzo3
cmYvI/P0I53Mprh+EefM6q21uGIZXyzjjHPqd9HijmX8sRq80ka5krT4bxkH
/rBMxofLOHEZLy7jxm2S6+otMQ/FeC1a8ojrP7u1uH4Z3//rtjbF9VOiWE/N
yJoT+ohrzV6xzty1fAyb5fo5ScuHUScHa/kxGlfENi1vRubP2CzXjWSo0Izc
cfMejdeyHVqek8x3slmuFLOWb6Y27plXluW1SMtLk/lptsql5QwO99Pi5GS+
oMwblPmDue92eyJn0Ja4NLafb2l5nTK/U8uDbNSBO6djnmj3NK788mGtQeS5
37J1j5aXa76Zb3z7U/NhIyMjhxQ2wzPKB0/hKirHTLJZ67j9VmQ/Y2Nju/EH
+eYP2Fwknw2I7GfRB0x//98Uf19Wd/0PmL7Bhg==
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
JEBoO3u+Zfrn/6b45+h0x/8BK6ODoQ==
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1: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
12If
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
CvNRC9iZeAJ5haLuWSUlP7/uLSqR02PAmBo7cMAnlMpK/xSunXufcOFqKYVl
FcQmPCR0eyVROyqIjJOzM6mUlMtyEvaWcfHqc7YnlLDrkAJZWY3NLS8ro+yV
jV0iq88l2uWifS5+dnZaLNntHi5Okh0v2vMN/n7teULqpRKhH1VzP1dBnMC5
KeYJyadlXMkoI2JrLkt870v+i03x+aSkyevunz3HCf/ALygV2MT21nJdzbzP
8PFWkj9F9KukpF7GyLCb5G+ZYbdE8r+EhG+W/DEN1g93PyHpZBGlZTV9Kr+g
UmAr4sjJYgoKFZIf6ujpYslnk3hIxrWsKsI3fImXty+Ozp4EhkTgvHgZ+w8c
r+MaMHSK5PeS/F8tlHHzDmb+wuVMm+sh6U30l7VUVpH8Zw3FtSU2j1OpJT9x
Pa0i+XwVh89U4O7/iMDIx5y/WobDivuERP9IfMJpuvQ0Rkm1PWM+mUwPYzOU
WuvQ3XhwHZeSUss6f2Vr4Sz6L/uaWdCqnR6t2+lK/k2l1urMX+DYYFyiv+z0
+RLh/a7xB+bclRHse5P16/JY6V/I+shiUs6Ws9TjDiHBMi5dyGLwiJG00zMS
2tgRrY49UdXshMXE2XVcoj9Z9CuL/uW3lFuj2V5P8jt30DdASVm5xh8t6DNq
U1SDcZ2+UMKR00VSubyyip2bd+LUpTee+h8QZDKJNcbTWdNnCis6mTK/71Bu
ZGTz6Ek+i908URW4Ohv1Y8u2HeQ8+snPduVKJjMsZ0j7AW5L/TB8t7+0TzDX
3g1vLy9p/yA4IIgqRcONG6+X09O/w272AEJWvsVC27dZ7SbYzlYqhK3QYPUy
wd501yUgaL1Ud+Xnq1AT+pWmbg9u3bojXXt9PBTHkfLycqwXeKOsqibt64j7
O+I+T3XVs3r7Og3BlZ6eSWWlgrw8OYlxIdw934GU3e+wLUSLtCR9gpfrcDfV
gLiwzmQd7cDx3YM5d+4qDx4+xcs3gI1b43haVMrFi+n/Mn+J+20q6rrS/pu4
Dyfux7m5e/5LO/5orpCQEKkttVKz//hPe5Li2fSn/ckaMXu1p2kmrQlr7//n
/UrRzyruk4r7pe2F91F8p0IDAxuc68+Qsykp0v52Fx0dHO1sKX769L+CSxQx
HuFO5rd18/B/C9evSXPhys0r4NvvHnE7J5/Mu7lSvI9CGNPTb+ZyTZArmQ+k
uKDmxuXq5S/FYXXu2huj7r2YbTOHEvlz+vU3R6+joTCWGGNlbSPFczUnLjFe
Ljo6VoqfCwpax43sLCmuToyvE+PsFi9aLFzLrpvDmgtXrZiZDZFs7NqyyCHG
RYrxka/Xa25ckRHbpDjV+7k18XPycgUDzIZJ8azNmau4pFyKK162vCbW5cnT
CinuWIw/bs5corgs8ZLiwcsrqrBzXC7FiTf3fiiKGLcvxu9/PNkWVXUNtDU7
SPH9zZ1LFDHfQlwbTrecLthm5lI+RnPnKimtwOyDvzFAWCMWFhZh0n8wawPq
r32bI5f36nApn+nMyZNSWcxzEvOdmjPX9ewcKe9smWtNXIxop4l5aWJ+WnPl
Eudgiwk2jPhw+E+2sbCe79NvsJRP2By5LqSls9QnQMrnnGptJ+V3inmeAWFb
0NTWl/I/xTzQ/4SrNh+2KYinb3C9/FsxH7ewSC7l54p5umK+rpi3+6r+L+bD
Hjt2bFFj8/xOmfwLXOqizkS2pqS3XxKxnTk5OTP5lXzzV2yGIl8zELGd6q+Y
/vrfFH8dTe74f8chlB4=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1: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
nedurIKQQ7kcOpNHiNDb/oiSvbJTZ1MIjxCcl9Pk89yjZ0C7PzQZhiIqlswX
6Evyf/GvISX+MMkvpmsi+8nKhatFZzbtXEmYX2v27PAjKTmLdfMO47XwmFjz
32PbkUKu3M3lS7MYZlneIzE9G8WtKIpbfw7v9IIafVD2mUpWbFwpLslPyWCL
Er+l5L+U/JhVDVCOWVwSe1aGXEX6htzR6YTPFmc2OrXg8MEwLpyIYWlDXWwb
t8Bcozd23ZZzwOUEh3bcJsjnNnceZpC/aZf4/ruXxDNKetD6mOwdP5bikvzK
kn9Z9jNrPfU7S/5nyQ/99QrZL12WXGe7GvDT1ZOs83Tj5u007Fa5iXVJTWwX
abJaHK271WOZTntcdHrhqdsT38U+8r1PJiwR+jKWuR6bOT83buQH7ZL3A+R9
AWl/QNonkLjeaYdyqUOpvZ23ziXmqdvczETfyJT91tdupODvqsdGh1q422oz
d5I2Ps61mTahDq4/1GPpNC2mfjOY5OSnPuKmJhS1H/fS8VDav5H2cajRq2Rf
p/qHFE02fy5W621zSftVORcukPAwncTEDHaLdfOT+NrkRdfnccx73D1fj/tC
At3e5+zeRixdUI+ju5vh47OZxJRs0tfvIT30BMmpWfJz/nf/S97bGTFV6Kyj
7PMpaj9E3pcr63GjcNWqp/uV/y1/Ya/S4H/vMZSf86L9ypw7sVDHWN43LTh8
8sXf71vmKi9RLnKS97lfajeVlEuKR5DiEv6/cf2ZVBauvHupJXE9cnxPAorE
dDnuJ+9qnDgXciWOrJT0SseF6cKSOCwpHkuvFwVeQXKcFnr9SuK2dI2R4rgq
G5cUL6ccNVOe7xba+aA4f1mOq5Pi66inT4Gtixx3V9m4JFGkZkNjYznu8Zl9
+ofLcZFl/V4ua3kyZoYcp/pMj1475ThWKZ61MnNJ8cTUaiPHF8vntl5y3LEU
f1yZuaT4bykOXPnt9+TFpUPDvmBgKudjVGYuWUfOAXL8vhzHL61Ruo+R4+Ar
O5ccQ13vY7G2NirJv+gyuNLboSRSXoyUH6O0sKFgR4ToXwMEVyXXlxRXN84G
GhnKeU15QUGifw2t9P1LyjejSgse+5Xk1+W7+EHXQZWXKzNTtF3KGRxL8ZhZ
z8rz14cIrqHPx3dWEi6l+36KRy+U85mkvE4pvzPv7FWKB8yU8z6l/M+cO3F/
iev3fFhVECnfVs67lfxVVXXkfFwpL5eqrUrydDU7kHvy59/rvzIfdv/+/TMq
mucNZfgruLQlnUlsqqS3V4nUzqioqC/4k3zzp2w6El8lEKmd2k+Z/vnfFP98
VO7zfyKnLdU=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
8ElnWWglh2POcFDshYOP3Bbn5QyCw9MFWybp2eJcl1fVVm5u/q9zibEqHzZT
PbfL8/uT4JL23tTUMML9niXSvy2pJ7aQsL+czduz1PV6bVgeGZkFJKbk4xua
TUJyFgsE89dpVba6oq9Po3+5yn6cn//r46WLPYL+GWlv7qraW6TdpdrHS3Cl
nT7JwtntcXG25MaNdA6lFgkGwRWWw483qs7Zh0/kknQgl69O5bItIUtlUOfx
4Ilg0JfyBX6/Og+l/Uvf+90qG55xb9U+VjHF7YlwXf73dRJiP2Ld+o+J3e5O
lphbodHZrNuay7mLYh3emsW2HZlsS8zEaek1of+r/DG64CgwfEF8uZAG/Sg4
lPYLvVHmGq7aLVX7pbRjGnRR7ZrSvlndXCFb9rHMr5yk5G/x9XJm+ZoCfMWZ
ODReIWRHJfYLi3D1K2LnIR128wuF3iukMCsTpc0g8cVdhHQTYkXZmw4PjJc2
PUe1L6t2ZtXebKnan6UdutJ21gM2lz9fb1jju86bOat0uK9JYb3vNOb7VvLm
u0vo/8p4pnzmhpd3CKGbo9m6JQLHWatJOfEjRWnfiPNJD9W3gYGl6pOqaNxf
rIf3uEqD41R/gPQLKHf8BNJfIP0G0n9Qeuibah2vXPGuHE8rJCwiisuXolnq
Gs3cTzSMHKQR+3oNHwxryJRxpnxs05IpY8QaPGMEV09lwlM9wag7+rcmCUYr
yl8Y8cB4ldk4qf4b6ce5O17SvyN/C+nvkX6f6uQqSkmhID9fLR88+DUh3q1J
/7ohc+1MyPzmKVY6NeDglqfZK/bsYR5PczyxOe7eK8nZ/RVaMSa5t3IojNyF
Nib+Af+X9LNJ27j0u1VxdVb9capfTtNW9dNVF5fqr5S+oj53pY/qv7xfHlYn
7+fOc6jS5wF/pfSLSv+oqgsbdqJy+irVfyrnrPSnSr9qdXFVp0g/tn60LcoL
vamYPEP1c0t/t+r3tnekKDu/TnKpbIVaNQ7hru6T8QkyTkHGK9x/X13j+q1S
V7i0/76hxvXokk+hSzqhxvsU38qnNOU8un1nKE1KVeOC6hqX3jcKpbXQf2ad
0MtruxcpS72Cvks/Ud9Vjd+ScVx1jUu+U8WR8Wr8nIyjk/F0Mq5Oxtdh1p0K
Nz817q6ucd2VyqETqbS6F6dakl+C3lLskw8ce+C+usYl41P1z5iLd6yKQ8av
yjjW2zE76zSXFBlXLOOL1fl5IV2NO74dl1znuWQcuIwHl3HhFW9PVOPEbycd
qPNcMm5fxu8rb9hV7anEPvF24v46z6XORUdPNe9Czb9o8gK34/f+v+Aqt12q
5smo+TIWPYXeeDCvri5y6eJTwbQTusjtFP+ULdboHtyO3VenuWS+WaXVayiD
R6jlkrNX1Lw0mRdUl7nKFwaoeYLaG1U5PyVXctQ8wtv7Uuskl8zf1M9fr+Zz
yrzOsp0H1DxPvaObmvcp8z9lHuhv4bqbD1sbRAnYrdpnqvJvzdC/PY6yK5lC
F3auytOV+bpDf47HfWQ+bFJS0tSa5vmDMvwRXI3kmEm22jRujxLZz0uXLr3P
f8g3v8PWQfLVAZH9bHSH6a//m+KvT637/C+BJsOS
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
C7axxDcAhOop9YLpr79N8dfR747/AhSWyKw=
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztnHtUVNcVxnmZDAGZBwLyHESDBhOkGSZRKRhtRbpEB0ZFjEtQXqa4fPAY
AYGFGMAUkFCaWKMpxMQmtlLEiCyIKAPWrFRFEIhCG14+GAgMA8j/X+85AWRg
JCKQmZvlXeuDufs+2L+59+5z9zn7sCBkvzTCQE9PL4bD/JDuilsdHb0rYZMR
s7ImITY8xJBYGb3FiBjxYnmx6N5C7ku9/v5+P0a1jMACET/9hn1/Kldzc3Og
Dvj6PPJ7KpSenmlXV9ddTcd9nJuD6spr2vZ90us2CZdQ0zFdXQpY8PmIjUnS
tu+TahIuZ037y69cAYfDgcQ/EAMDA1r3f6a4crOyMN9WCJH4t1CptO//THCR
6xO6MwTJRzLhuvQttLa2a93/meDq7emBj7cPLl6qgKfn73C++JLW/Z8Jrs5H
nXAULsSDzl7sCApCfFyy1v2fCa7KqxUQOrrQ+/FwShr8/KQ6GzumwnUs6wP4
+AbQzxeKL2Kdz0Yo+1RaZ5gu15bNW5CUnEE/Px4agrv7CrToaOx4Vq7BwUF4
eXlhpWg5YmNjcfDAXtjb2DCxo1TrDNPhUigUsLdzgJe3BH9g2mQfyTYIrGyQ
npaldYbpcFXJK8Hj26H/8WN6Dz5mfodF7oPUf7vWGZ6X635HO+Jk0XAQOqO1
uYnalExblp6WBnfxSjQ2NOpcXHwWrqzMTAgE88Hnz0fQtmBqk1+phJvbb8Dl
WmCDrz8GBoe0zjJVrra2dtTU1KO2tgH1jXepTaHoRk3dT7Y79Y1Q9bPverFR
U+Ua6OtF3e0atLf8T+u+zxRX74/dCJRugI21NUSuLqi5UTPhfHl5eRCJREyb
7Q6xWDxtkfPNNtdx5m+QbsYRSTZKaXs9dh/CU1FRgd7e3ml93z1MvC0vL6fn
m22u1CNHYWRkNMr19sp3NHIplcoZuZfIecg1m02uAUatbR3gC/iUyWQuDycK
CtHc1KTWdj3v9/s0zSZX4dmvELBpExLjE3EgOolyvSn2ZPKvQ7C3tUV42G50
PlSwiqu68irMuWaj956AJ6C/DfT11Z61tLRjrOLKz89X89/EjI93vP3h7OKm
Zo/Yc5BVXLdqamFtY//E/32HkJKSg5y8k3iZw6E2febaffmPIlZxkXj3acFp
rPaVImTvQdy6WYtXnZxw41YDElJS4eEjwdHcE6Oxgy1cI1IxfhPfP0hLhamJ
CeJl8dSuHLaP7PcsXKRv9b2IMOzdE4nr17/VKhfRgEqFgNAovLEmAO++Fw+V
hr6Nybj6+vpwobgYa5i8e565OSwtLOG91hvlZd9ApdLcT/JLcD2LJuOquHwZ
Tsw9rD8mlurrG2DJkiW4efMGa7kOymQwMjBQi6NEPB4ff8s/zVquWMJlaDiB
y3QuF8dPfMpaLnn1v2FjJ1S7D4mWurqh8W4Tq7iUzHv9F58VMPFThtKvLyA5
5TDMuLzRdu/1ZWKUV13H7f98hzOnTuH7hgad57p//z52BgeDx+XiFWNj2DHv
km6uyzDXdC7lMjQ0gsh9BaRSKRxsbTCPz4fbMjf8/cyXOs21PXAbXpozZ8Lz
NPY+HJv3jGxzcHBEVdU1neUa/248VgaGDK/+xNhItzExc3fkAZ3lciRtlcFE
tkXOr2Hru8H4/dp1sLSaP2E752UOsnP+orNcZUwev8BpkZrPAktrHD+Zj6MZ
Gfjk5CnI4pIZ+xN2wzkvYfvOCHR3d+ssF1FJaTnWrd8Ic+a96U335ThXdBH3
7jUx8cMViYnJ6HjQiR2hu+G48FXmuVqAyKg4/ND+cPR4XeUiam3vgFwuR33j
93T9zOenaY6zyms1Oh89Qo+yD1flVbj+7XfoG9e/qstcY/WAif1bmTjJE5hj
8WIXFBVdmHR/tnDd++8PiEpMReDOMIRGRqPw62+mzEXyCJJPvM7kFQFhUTTP
0DbXVDWWi+R5yuFcL4HJ/0gemJl+hNpV48Zz2MJFc9rcAniskyDx/aO4UdMI
50ULmfy9Drv2ymg+f+afxaP9mWzh+qqwFEZzTH9q34xNcCzvJA4f/hDh+w6N
thF2wkW0P4ZNXOGRMrV20IV5X16/JRTGJmZq9vz8AlZxvZ+Wrf6uNfyONtKf
SWTOM6P9nWziIv3JYaHhWLp4Mfbsi4GbyIOyRMUkISkhEVs3b8a/zp4dPY4t
XEQkdrS1tOCTzwrp+ADhmmdhhfaOhxhkaTwcEYl3b69c9eR9ksnhyDjP+ONm
g6usrGzaPKRP7ty5cxO+J8Il2eCv9qz99aOPZp2LjC8SX2ZKmsYryTip2NUF
ttbWdPxU2fPjrHP9UiLj23du19Dxbk3b2cr1c2ILF6kPqbvTQOtFbtfVQ6Ho
onZST0JspL6E1Jmwjat/cAi+6/3B5VrSPquqq5XUHrQtiNYB8flWyM7MZB0X
absaGxrgLl6BjPR0Wp9F7G3N9+Dg6Iw4WQyt42Ib14hI/VzEnv20nm5waIjW
1/EEdqiukqvtxzYuUu9I6h5J/aOPXyC81kpoXWSXQsFqrqLzpbC3sUXcgf2Q
yWTwEC2Hl9eqCXUkbONqaWmjzxip7STrickZtO54/H5s41IqVbQOnNSDk3Uf
3y3Iyf4T67lIXCR1WakpafSz0PE1yCuvsJ6LKC4uCUE7gum8C0ehExSdign7
sJGr6HwJPD3X4OKly3S+jFJD7Rwbucg8JjKfKSk1E2G7QjTWTLORi8w7E4k9
YGUrxJ+zsjXuw0YuGjv8A8Ex5qBquJ/m18BFJItJgoWAT+d7TpXrafNhdUHV
8mv4OPdD5tpp3D7pfNiSkpI/atv/55RkEi5Tcs0Imy5ft7EifjY3N2/Fz8w3
H2YTEj4WiPhpOsz04n9TvFh0bvk/9iBwmQ==
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
9N+mOP3S3etfvackdQ==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1:eJztnA1QVNcVx1dYPgUkbVrbpilNp8WQDxWQVQQRwY8klQ+pmaZm0olIU9Fk
NAit2olpnFhFq422OINRZzLT0sSknRJJ6MfQmZLJpEn9mNqmyapgNCJoY8Mu
+/b7vX/PuXfHSFhXPhbfexl35rjv7du9np/n3HPuvede76heU/VYjMViWZdI
f1Qt//G8urrlG75jpZuSDfU/qI7lT0lsJPwhbr5uvoz3Yr+09Pf3V5IcJ4EJ
hPWsDOl+TS673f6QAXQdjVReE8piSenr6/vPp3+jdJ+DtmEz3G8f11v3iHaL
wJUR7jfK4U4gIQPBZ3brrXtEicCVGe77vsYD9JC45tfqrns0ubSHVkP7Zgm0
aUug9F3WXf+ocX1tJoLPt0KbuxhKxxHd9Y8Gl/LBWSA9D4r9PLQFD8Oz/5Du
+keDy/vqn6Hll8HhcMBftgLaDzfqrn9UuDbvhFZejX7iCmxrArJKdNd/rFxs
I+3RNfCtaBD3ns6jQFIuBs736s4wJq5+B1BcAf/2g3A5++G6+F9o08vhfblD
d4axcDl7LwHJuUBmKVBSBhRUACkF8P1kn+4MY+HydXRCS8mGe1sLyQtwb/81
AgUPQ1vyhPBRvTlGwyXi33aKE4VLB/3W29IG3P2AabnUrb8CvmoD7sxH4JXD
gsN5oQeo+REQfwe0+m3wHjmlO8tIuYKVDQg8uB6BijoENx0QXI7T3QhU0WfV
WxC8vx7uzhO6s4yUy4wyEi5hp6v60qfvjSTD5VJa26F+rwZq7Tq4us5C+bAH
6tpNUKvXQvm78eaYw+Fyv/Mv4NYcIHYKPfg6gk/+AsGap+ia7uPvBaYswcB7
58R3PXv2ALmU52bOBPLzxyZ5eaK98eLCTp5L3gkkzgbi6O+bPI/G9YWUp0m+
tJCezUKg6XX5XdLFeSI6MWTgzTeBGTPGjUtrfoU+yAKs2SRki9hpNDbMA1KJ
83Nz6ZkN6t72K1xR86fLl0fd3nC4BuzngIxiYAKxxc8gOxFTMr2nzJJst1XB
9c+u6HONob3hxg3/hufow0xgItknlXwxhfpP+lxhu+DKPXA6nabkcl6gcW/m
IvJD8sFkm+RKJJtNXgDnmZ4x66EXF4u35XWKG1nS99gHE3Lh33UoKnroycWi
LlxFbBTbrVOhfbsBTsdARD04b7v/9BbUZw/A3dY5JI8PfPwxlD90QGn+PZSj
7+rG5T7RBdxO/eoLRVCOdUfUY+DSRQRXbQa+SHO21BJ6X0D3W+D86H/y+bun
oZbVUXv3k/3nUx4sh+9n+3Xh4rUN3/pGqKt2iOtIXMHq9WRbip1JFEsnEdct
9J5aTDFor7CburCe+igxf5ly4C0kaUWUN4rh/fkLN56L/53P9sHzfl/E/uA5
1E46U66zUuxMLJBC82tYC4RdPB1vQZtENppIMonsn0LM6cXiWsusoNxy5oZz
RWwvpAdWbqRGplK+I654ip3xs+V7AnGlFUC1LSNbEk/yPMmVVCTHL8xGjL7n
XjYm130rKI/fQ7oTSxzlhVgep2R/cm25V3IlEk8Kj88ovk4krtQ5xEj3NVuN
yfXg49TI3XLcxRLDY7DpofscOSaLK5A8icRuJUnifE9sMXRd12xIruDWZjlW
juF5wHQZP5glNkfaLYZzxexP+p2wI4/R6Dq9FN4XOw3J5XrvDPCNQmkzZrGS
znHZkpHHzRPuknbh/pc0U/qr6H+zoGUvgzNUqzEaF0tgzRbSn+ZoccwUmgew
zWKmhmxnk37IXPGh/kX+Gti4L2x7RuFSTpwEPk86T2A/zJHCfYvjiYgh7IeF
Mk7Ek//Fk6/ethgDXWMfb44nl+hntT+V/cyaF4odIdvx+Fn4YKGcF0yk+J6W
T3nvLxHbMwqXs7cPuGex7GfxthATSYJN2ojtlU6xPiYPwdU7rtueUbhY3If/
RvpzfwrZjGMk97kEslNaqZx7T/s+XD1D67pG5mIJ1O2S4w+rTcZH5kqeL2I6
JpfC3RF+TcvoXKLOVPQoNZwtYyD3t6RS0a8Cz/52xO0ZhYuF51dinSeW89Rs
MY5SFzVEXFs1AxeLb3eLzFc8fv/KUihHTo+qPc/7vTSvuHat9EZzsT9qc5+g
HJYH/9PX9r+I7fHcrXaHmAeGmwPqwSX88Y3jxLYCjp6Lo2pPOdol5us8b+f5
u1G4uD95joXX53rt8XqK9sA6sb7C6yzqotWG4RpLe/6dL4l1sCtrsnF3wdvS
bmouZ3cP5TrKeUkz5Polr2PynO5bi8T6phm5eD05uHK3nBPweJK5eN2Z158t
mWI92oxcruOnRR0AaaE12eRQnYDrBTFZon7AdQSzcalN7aJuI/I69yseU4r5
XK6cq1qyoDX/bly5lPZ2OE+ehPPUKSl8ffX9MEVpbb1S/wo0vSbqbKLeJtYK
5sg6HNfjeOzCdaydB8eNS9QrSZeoSG7ulXol10O5Lirqo5YpCD62CcEnd4n6
qaij3poD9zv/Hjeu8RSuY3M9W137NJTzF0Sdm+vd6rIaKK/+cbDfmIiLZbh7
EszGNVwxCxfv5wncVw9/9Raxz8dxqhsOymmBp/aLfUCBpesRrGgwHRfvv1Lr
G8V+LN6Xxfuz2P94vxamUJy83QZ16y9Nx8XCHLx/zvvia4N9rqAK/h17B/Uz
s3HxfsfAnEfE/kexD3Lbb6Cl5sD31zcGs5qIi4X3pyK1kGxUKfet8v7V5Fw4
+8Z33DvewvuJMb0MrksfwTXggL/xIDCvQszDzczF+7/ZPrwfXNivuh7a8rVD
cpjZuITOWSUINDbJ/la+XOzrH/IdE3LxOQt/eY2Mj/ll4hzGZ4HL8/xL0OY/
AsX+oTwv88G5Id8xI5fS8Q9oRYsR3NcKLWNWeF81I1fvZWhTl8hzaMse/8xw
sQRLa8W5Qd/2g2Gfm5brmd3inKfS1jlirnDnYY0i7rePiXO5fD43zPOI52Hb
2tpq9dZ/lFIRgSuFbcZsRrbb1cJ62u327+I6581DbBnMZwJhPVNCTDf/b4qb
L8O9/g8tQpxg
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztnOdrFGkYwGMS9dTYED/YOZUIVkQNflDkDuxoYiLeCbZEEw2WaHIYgwV7
79gVe/tgN2JBRLHXiGh07b33f+C5/T04YbOZ3VyS2czMkYUnuztleX7zzvvU
d/J7Ulp8SnhYWFjGb94/8YmZf6SnJ2YlRHq//Jn1T3JSBFu9EuMVNkrZq+zl
vBf3Zdj379/jvJLjFXGBoGfcL90Dcnk8nr8doGtxJC4gVFhY1Pv373P9z1m/
fr1Ur15dnj9/brfuQcctCFcjs3PGjx8v1apVkxMnTtite1AJwhXtf+zPnz8l
NjaWfTJnzhzbdbeK68OHD9KuXTtp27atDB06VH78+GG7/lZwPXz4UBo0aCAH
Dx6UHj16yJcvX2zX3wquffv2ScOGDcVrT3SOvXjxwnb9reAaO3asxMXF6efm
zZvL9u3bbdffCq6ePXuqPeTzyJEjZciQIbbrX1IubGG3bt1ky5Yt+n3dunXS
vXt33W43Q0m4Xr58KW3atJFNmzbJ5cuXZeXKldKqVSt59eqV7Qwl4bp37576
raZNm0rr1q2lcePG+v3+/fu2M5SEa9u2bWoLDx8+LEeOHJFTp05JnTp1ZMWK
FbYzFJcL/zt69GgZPnx4vnOxj3379nWkf/4vXIsWLZJKlSpJdHR0nt04efKk
xMTE6PZRo0bZzlEcrp07d8qsWbNk0qRJ6pvZdvToUcnKypKFCxfKlClTbOco
DpcbpThcTpxPVnBhLx4/fmy77lZyXbx4UapUqSJjxowx/T3yMnKZDh06WCJz
584tFa6uXbuqP65Zs6baRP/96HLz5k359u1bia/53bt3pX379iHnmjdvnkRE
RCgXQlz19evXAlxW3k+h5iLXIr4wmJAKFSrIsmXLXM2VlpaWj8kQ4sVnz565
kot8n98340KWLl1aJK6PHz8WGGc7uLDp5MeBuGbMmFEkrkePHsmCBQvk06dP
tnJ9/vxZevXqJeXLl9cYMTExUXPMqKgoadKkidqtonDt2rVL4uPjNY+zkwt5
+vSpTJs2TW7fvi3Tp0+Xc+fOyapVqwroVhgXY891qVu3rkycOFGvmZ1chsBV
o0aNgDF8MC7mFfFzZmam1sPJfVavXu0IruXLl0vv3r0lISHBtAYQiAvbM3/+
fOnSpYssWbJEa1nkP8Rk5At2cxUmZlxv375VFvwf1wM7Q7xF/rZmzRqtH+/Z
s8c0RnEqF/586tSpUrVqVRkwYIDW96lj4Q9HjBih9oPaXf369WXt2rUFbKQT
ud68eSOTJ09Wu4k/GDRokLRs2VK5YMRuYIOoi7O/Xr16Ot98YzOncaHbxo0b
1cb4xpPwdO7cWfr06aNc5AXE0uXKldNj8CPHjx93LBe6MS7+Phwe6sTcc7Nn
zzb188nJyeLxeBzJtWHDhrwao7+kpqZqvBEoNuvYsaNcuHDBkVz4J2JiM71r
1aqlNj48PNx0f6dOnRzLdf78eenfv7+p3gMHDtTxRH//fbBmZGTk9a+dxoVQ
i0N36gbko7Vr15bBgwdr7Zj6/ubNm3UO0ktjPzamX79+cuXKlbzfcCIXgo70
XoifiHeJM/fv36828Pr16xoz08uYOXOmbN26VfsAvuc7lctf3r17p73pyMjI
fPlNIHEDF70XasPEHswl+hjEUcHWgjiRi1j3zJkzet8tXrxY4+WKFSvmsxPM
LeIQ4ozs7Gy5dOlSvjjRiVz014kNyUuIB4cNG6a5V0pKivpech3uSbYTI3Is
+UJhXOQRxM9cp0B9qlBxkT+S73OPse7jzp07uk6CfeRhvD958kTf6YVyPPep
cUxh48U1wX6SD5YmFzVT8i3iXnKtvXv3av+F/IQaLjaSa00/hu8HDhyQ9PR0
zcnJw421If5c1JvZf/bsWbU7OTk5eg52tjS4Xr9+rbbPEGOtB+P24MEDjf/Q
nbyEd2J/3jkPMWp3vlycSz0Ff4if4J4mTqbuQv3Ft6YQKi7ySGIl/O+xY8dk
9+7dahu41owP44Q9YcwYu0OHDumxjDF+jnHw5yKnCVQTa9GiRb5eSKi4cnNz
9fpyP2LjuE/w0fhd5gR9z9OnT8uNGze09sO8unr1qty6dUv9tdn8ok4ZiIte
h++6plBxWSW+XNybgWLpCRMmlMr8CgUXQp2YvoAvEzU7bKqbucjDybsNJuJl
5qT/eaHgsqr/de3aNVP/xdoR+m9wUXc26wtbzUWPDF2skkD9Suoi2Hv8mdl+
q7lKS7DpxGaB9ruVCwm2LsHNXMHETVzEmsQprPuhxsA21v+QL1Cz27Fjhyu5
iOErV66sdX1jLQJxS7NmzXQ7cZsbuZhPrJ+jB+O7PSkpSXtOvvPNTVwIcTJ9
GXwY6yBZD8nad/811G7jIp7GH1NLZt2qES/69oLdyEUcyLpiowdMjY64KtTx
YaiF9d/UUqkX8x27QSzlvy7cbVwI/RjW7/N53Lhxmiv7H+NGLmwE60n4TP/T
LJ5yIxc1LuqO1LmorVLz+T9wke/zPBM82Hjqef8HLvwv9VTWEZDLGPVIt3Mh
1CHxWzzfZPaMjFu5eL6TOWY831QULrPnYZ0i1KZ4LtfwY34S9HnY7OzsVLv1
L6bEBuGKYsxgc/K4+Qp6ejyev6SQ581/sTWCzwWCnlG/mMr+N0XZy3GvfwFg
z0Cn
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
thpXqiofG9dtrQ0Keix5aiLkabnwME9a9tKouE6STc137GVYeg4S55thra/A
1MEjGOF8jgRHYiQtlf2fRd4uka7nOPLLyUddcL9xEdYTZ2HppO8i53q6DsBN
LW0qZP+kZkn6RZmRjqGEJHpj6kz6V2dXL+uA3FtRiVuX34OFOtBRlIfPuZ+1
vR+GmhYM0XvrqMMG6wXOL9Fhc0JHOTGSmo6xWHIGa8zY2Ab9kWOwswbViSkY
73uRnNjLHi+AoYH4f+AQrMlpcObQW7AXjOJaJOdfl5hGDVkJZ2sLvvzod3Ax
LjP9uu/8edz8ya/goUbyVDNXGdQsxAYbdbVFaCjWvVtcb2J/G9hLXubLve8o
LNzXnJkC5/79UOw/DGN7p6QXDeS8ocbmpeOaYX/ZxjGWQR0h1srIf7YuepwD
B6ESa/bJGeSgc7DSs5pZa7a2Bozv34erfnuo++Ogio4mPsTDl11C3VEGd1EZ
/U0HHK+9Bk0ztSH9gfvyG7hx6ceMuQa2YuqJ4gqYM3Kl38mj4nCVvKWMYk+y
B601xN+iEoy/dgJaahmxdqIlj9iOHoKrt0vS4brkFAw2NGFhKf9FvXHP4mMd
58DZUAl9Ps9HPe+kbtWzl6+RSz2sQ9e+I3CwNu1FpZjoJ5aF0m+l8jesPX1S
GvUfuaikDBaBqX29cDU3S7/3Hj0Kx7FD5KhDsO/tg6upHW56LBPrXZ0j1haL
oOY41alJMHf2QMe581Iz3Th+DArGpWa96hiri/MzGhNLPcWapkYYYN6WxPl7
jMvkgpx95Kgt5fFTMMQ8iGsFzg5yT28ntTmxPy2bmpRxZBZKPS3WWgYDg6GL
jYedGGkhtzjp07yH9tNLtMAs+pv50VHHaGVJ1HuJkof+4sgBeJhvIzW7gWMe
ox9SUm+bxfXePn4uvEsmez0yUlpj0+/ro//vpN4ogpJ1riW2OivLcZXHEvd7
PBI3+NWMxYmhTBlrsBwG1rSRtWtjvxtLiH97e2HJL8DIhq1wFMrg4NxayfUm
coKVeKER67H06tOHmNP8Umioodz1tXALLAtPIMdnY3TDGpiDQ2EOjJLWzezs
IR9rYIw6Ql+US22TAUsVa5S/cQhfRn86sGEje52+jN5JR33hau+FprQK5v5O
6vxqDJRXYuHBvUfHRZ9y3+zEWGY6XKxjB/FmkFrAwN8qYtOJ39Tq1GkKen5b
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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> 
          True]}; $CellContext`deckCardImageSelect = {
         Image[CompressedData["
1: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
U/B/gIm4jDKKHf0XaP4Png==
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte",
           ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
g/DPxb+uskUxnwGE9ez5P0BTXCEJiT7yHzxETD0=
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztm4tTU2caxlPuIYEACXKLsEClVgtkCxgElovXrZXK0lmEcd0Vp1ZlRuwA
VnGtoKBo16rFoq1r91LZrZV6WYvYHS2tWuqKUC+IEocEFJUEWQL0D3j2ew/b
rcEQYzZ4PDOZ4cnJOec7h/c3X+ac772FL12d/aaTSCQq9mAf2flrM4qK8ktf
d2E7M0pLli11pqNM05joIMD+HHLomdLIl8HBwSymy0wQgMjOrBHbx+bSaDS5
z4CttihrLC72GJHq9fobD4+/dOkcStcVYsnibFSWlULb2cm3/WPOmwWusIfH
1tUdhFzuCWVYJF6YEo3AiWGYFBmJxjPf8M1gVha4on4c065pQ5AyEBlz83Dh
+w7c1g+i8eJlxKiTER72PDpudvDOYQtX2fZy+MsD0X3b9No2XTf8Q5R4Y+lb
vHPYwrWt5n2o4tPQc7vP5Nrh4WFMiY3GjBl5vHPYwmUwGNB89SYGjKbXHms4
BqlMik2V+3nnsIXLnC5fvggfPzGmpyyA3mDkncMeXCdOfo6IiGBEx89G2427
vDPYg+uPH++D3N8bKvVcdHYbeLffHlw1e3dALHZHzm9W456+n3fb7cF1pvEk
ZD4SvJ73FgaGhnm32x5cQ8NDUCe/jBenpmBg0JSpumYHDv71MO8ctnC1Xm1B
gFKJ+pPfjXAODf1P0dNjkZW1gncOW7gOH62jfWwoKcZ7VZuxtWw9qso3YHvF
Rvj6+zGuN3nnsIXrwKe1iJ2WhBim2GkpnFTqX0CVyKROQfHa3bxz2MLVPzCA
zvv/ZqKtETrDIHRs7TuyNcJg/IF3Dlu4hChbuDZXlONWh4532+3Jda7pK3ix
tW5R4Tqz99uyZQvi4uKQkJBgF23dunX8uYYGkJqeBJGXBIpgJZq+/vaR+5Et
ra2tMBr//7Xw9evXER8fP+5cO6vfhatECnFwAGOTITVlJgb6H+Wy9P/6HvSh
o0ODK1eu4s6dnsfaN95cui4tAoIC4CzzhYtCBvfAILh6y7B/z1+eiEur06G0
vBJJszLx/t4DvHKRX7yi4A2InJzgqlDAY4IfXP39IfKRYRp7l+nv91rNdfT4
PxDD3nnOvsGYv3AxmltaeePS9xsQP13NuFzYfMkYmzfcGZdbcAicxWL8vbbO
Kq7jX5zArxbm4jl3CUQuErj5BmBl8Rpca2vjhau9U4PQqHCI3Fwh8hRD5CGC
k8QTYrZmFLk4Yc+ez6ziCpg4EVL2OxaJ2H1c2H3cPBDxUizmZY8dHxlPLkN/
PzLmzWfPDB9ExaVh4YoiqDNeheeEYLaWmg1t113ruH4WDm9FAMInTUVi2kwo
lKEIiZyMOa/l8sJFamO2l+3+BB3dfVi3dg3+9b0GFR9+iuY20/ezJa5bnVoc
OnIc+ctXMT9uCZYsL8SREw3ouXefN64f1fTtWYilHtj4drnZ+z3uuaE3GPDF
l6exq+ZjnDbz/uODi/ytgo2VmPrLRcjMXwO9/sETcz2pntZ8PU4OLgeXg8vB
5eBycDm4HFwOLgeXg8s+XORHkD8xde4iFLxTyfkZfHPp9Xo0/PM0Ptj/Z3x9
/oLN80X+H/mB5A/yPV86nRaH6+qYn7wKOb9biYKiUpw89SV6eu5YzdV8Tcv5
6eSvl65bi5tdfdjI/Pi2rru8cYU+HwW/kFCEvxiDpLTZCIqIwkT2fdZrv7aK
q7OrByr1LC6uos6Yh5zlxYiKS4WrRIb0VzO5OAwvXJMmc3EbkbM7RG6eELl6
QPlCDNLn51jFVV19iIt/URyM4mEUF+PiY26uCI2KQLv2Fi9cZ745i7zF+XD2
kDL7PODiLceSlYVouthiFdffauu4eCXFLd39J3BxTIpnUlwzISmRi3PywUU6
xZ4Z6tSZeE7qi5S5mThz9rzF8Q9zUVyZ4ssUZ6Z4Mxd3liu4OHRBwTIuLs0X
V29vLzZV7UBc2ivY/Ifd0Bv6rOYiUT6A8gKUH6A8gbO3LwKCA9HVpTUZ97S5
KH/UqetGy5V2tr3N9i3fbzQX5W8oj0P5HMrruEm8sOuDHY9cNx5c9sp/NTc3
m31/Ud6N8m+Uh0tLT+bycuPNVVVVxdliL42VryxZvR5eMi+cb2o0e97eXE9L
lN+uqDQfcxYyF8lo4ZyQuPQDP0CrN0JrYOo1crUjIzUlVFvSz9WZCJGr6O1d
XH2PKjGF28aqk7nan5iEJK4e6MChWkFyLViwDPIAOd7dUoaqTe+gqvz32Lmt
AhtKSrj6rc+O/lRXJySurKzliEn6uUk9HR2vr/8OgWzNSHV3QuQ6+MlhVO99
z+QY1UNOnpKExOSXuTpJIXKNFtWtZucWwsdHiq8aG0zOCZXrXu8D5CxaxdUb
79u385HzQuSiOnCVeg4U/jIc+NOHZscIjetaew9eipuFiMgQ1DccGXOckLio
ryIxORO+fmKu38LSWCFxlVV8BKmPF46fOmZynPpmqH+G+miEyJUxIxdTVDEm
fjGpp7sPqvhUbKupFiQX9ZlNCFFyfWcPH+/qNnL9aeXbNwmSi/oCqT8wmq0L
qV+Q+gYvtHYgfU4egpRBuKG5LkguEvVzUl8n9XdSn6cyNBIKuQR1n9eajLPE
Nbof9lkR9eFWlq9H/m+zuf7cSy3nRo+x2A9bX1+/km8GG7XAApeU5ozYntV5
Gy2yU6PRLByBMM9FH/9lCyM+AYjslP4EMBaXQw7xo/8AxvI+pg==
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
tlXExwORnSZPAWbiWtayuNH/AesNpPs=
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1: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
eOeiv/5lC6N8BhC1M+QmQHNcneqUPvoHkK+FCg==
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztm3tQVFUcx5lsxlQy0TRTk8myrEbFQUEwUFwIFAtanBTUwkrTyclAg6EC
/kjT0syk0TGbtOkpNZalQZZjL2fKZrKcRkMHNTMUlMe9C1z37u799vudyyOU
XZfHcvfWzvhjdy+X4++z555zfs9bH11uXXxNUFDQiuvoh3Vhblx29sK8tGvp
w/S8lYse7cVXSSJI+CJA/wISEL8S/U1dXV0qyWESmEBYz1Rdd/dcZWVlc/1A
185Iqjsu2kaCz58/f5TvgzUL6B8JhIQDAyeTRJDQ+5unAzfFQX2k0GiOK+bN
A1do831IXAJcHwNX8kq4ZjZJWi4wMhm4MQH29cVGc1whHrjuaLknJgMYENvm
75R3PwUGTYNjyauQJMlwjs5w2ddux6Ws11uZdn4G9AmDmlZguP5d4WozT/u+
B26xQJswF/W1NYbr3x1cyoFvgVDaP3rHAqNmABOT4SgoglRnzueQhdeQa9ka
aBEZUHaUonHnATgeWw0MToArM8/v1lhH5qu+ohryBbnNNcf2fUC/KNjf/txw
ls5yuRPtTiuQkmM4S3dzuWLnAxMyDWfpKJd8tgJyTfvrh9eVNj6F5ivXcJaO
ciF8FrQF7T9nyg8/ks0xFfYtuw1n6SiXo2AzncNjoeatRX0lnVm1NE81tVD2
7iebIwquaU9CumDO/fDS2neAoXRujSaOyDlwhSXq53PCCsgnKwzn6CwXi/2L
Q3DmbIRrdh6ci1dB+eAbyJJsiN7dyWUm8Zar4egxKLs+R315uf75dDnZHR9B
+fk3v7M1vOVSdu0luzCG/EjyKe+agYZTZwBLhtgHMToZ9p2lhnN0hgsjyC/u
HUX7Rjxw3b1wzSA/MyRK9ytDYqFZFsPWtM6UTZvoXCBfOpLs46iorsmkSWI8
n3EFjQWCp9H8kAyxkK1L8zScXkeSTT8kjvzOTNr/a/V7SRf5yJFu+c5tBw+S
zzDRd1zh6cC144Eb6FkcQExDputcI+4DBtLen5iNesnWwuX2/7tYTf71KjgX
5EOqqIQWuwhq9jrU1bjx46qrPY/XRS5173fi/MUNU2jOiGnodP3ZvG2W8FPU
1z5pHc+DHvYX3qAzbya0USlwWnOAYWTHjLGi8eOv3evnQy5hA6bnAr3GEYdF
xKAQSq830lzdk0G+S61XejhnE0vwvSIGhD70GmIRa1Zd954hXOJZ/72c1lMS
zRmxDKO5GkXP4CCaq22lXuthO3QE2i00Rn/iCiYJmQYtfD7kU2cN4xLP46vv
AX1pnwslppAIaCnPwSbbOqSHsv5tmmeap340X8OT0PDJAc/69QAXizblcZqn
aDrHUtH468lO6eG0PqOvy+yiq+vXQ1z1h34X37VauK1dO8MbPeTyM3CmF0Kq
vHo8q6e4xJzNewm2n493SQ/5bKV3+vUgly/0CHAFuAJcXdNDOn0G6lNr4Vi2
BvXfH4bj4UKoK16mPeScqbmc8/N1f4DOY23CArIVyb68/QGoz28xNZe6ciOd
6XG6X9Cf/IKbEogtCZeK3OcFzcAl/X0OrikLdd8mhGzMm++D88GVkKoumpqL
pX7/T+TfpJKNGA8tLB22Iye6NJ6/cLFc2lQMjE6D8v6+bhnPX7gEW9FH3Tqe
v3D5erwAV4Dr/8wln6vq0njs/7Ef6E9c0oWLcC5aDfmMe7vQ03jsp6sF20Ts
h/13f+FSn15PdqGV7F/337en8RoPl4v4CsdZtOjH/YKr8cMSYMQMsg0Tgbvp
bN7q+Ry7fDyOf2kPPCviYSIu1jdSxMmM5LIdOwFt/EPEZNFjbcMToYXPhe2X
o16Pp24tEXFLEb/kOOaAWGE7c3zTKC41Z4Oekxkcp9v1QznGnwDnEy96NZ5c
VUNznKHHmUOb4s4cf+41TsSj/x0f60ku5c1d9D3P0lnmF9Aaux8Ykwq7l36K
upH+fnC8nhcY0ZQn4HwB5w0GRYk8giHrq7oGjuUboFmWQaqkPXFeARxZm8T1
q43H+RokZuk+DudxOJ/DeR3O77A/x/me8HSfcjWUlEA+fhzyiRO68Pt/f/ZS
Gnbvbsl/cX6N82wi38Z5t+FNeTj2vzkvx/m5oLE+4xL5StKlWyQ8vCVfyflQ
LX6xyI+KPOnAaLhmLhX5Uz2PGiWeTV9x+VLsxV+KfLbIa8dnoOHUXyLfLfLe
oTEiD25GLt7vuP5A2fExGv7Ucx5cn8B1Cg3H/mi7HkzE1RExGxfX9yjvHyD7
chVcaXlwPrNR1AGZmUsur6C9I1vUZbnCkuCKmEPrLZr2jRhRv2VGLqlKAtfN
8fmrfLFf1NNxXR3X13GdHdfbOfI3m47LvvlTsQ8qB39q9/fawzmiTtJsXFw/
7ApLcVuLxfWsXNdqOq4JmXBNXeD9/WbhovnSxsz+z3FxfT76RcPxVtsYsVwl
i7p+s3KJfovMPFEfwX0W3G+hbC+FFpEu+jAuX3dm4RJsdZLoh+G+GNEf0ztG
9Mso33x3xb1m4moW7mPifiaMtED56od27zEjl5qWL/rPGotbe2K4P4371MzI
xWvIseQVsjmmin5B/XpTPSf7zTEZpuSyrysW+UD2K7m/s6XXc+YKvfYvcYlX
XM39sP4i3HcrYlDch8v9uKIvd7Lep8v9utas5ns99sPu2bNnqdEsnZQUD1zB
PGfM5m/z5k5Yz7Kysjk6RPtc/KOJLZT5TCCsZ3ArgDuugATEGPkHNWBAVw==

          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
UTsFvwCMxmWSSYbRfwEQD5At
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1: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
xG6A3rhiiske/QidwYfg
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1: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
79iGcj4DiNsZ/gOAOy6//PKN/g8QHxNS
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1: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
O6X/BxiPyyyzjKP/ARZqvBg=
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1: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
/Q==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
/Q9PC+wF
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
t23fMs7Xy4Nrtta/7t69K5Orq7ML3m6+7Bw0N12BqsqH49rMNldaWhqzZbY0
0XolXS+l66aZ2bLzrrPNNZfKO3UOTzqkC45rMnGZ62kvrSf5n8x1Ai5y0Tqf
rYERcHX3hIfPBnj6vcHqgUbzcY3rXwU3WV0WrUuIjYpAWmI81jk6sfqt2NQs
TnJVVjdj+Qo7uHs4sXq6odo6WmdH6+1o3V1RcTHnuMJ3J0PfUBcNhOn592h9
5N6wSFYvyTUuIy0XEmvtnvB9rl5ftI74UELclNpyiYvWfe+O2rvguII2RbB6
/R4ZtcbtnX2szp+LXA/Kfobp8pfZPgtpzwhbdW0bNvj/HjtDwjjJRUX3w9Cc
gbXTGnyYnYeYhBNs3wyNNffuj+AsFxXdx0T3MznY27P9Te9FhuBVW2ccTfmA
01xDGhjoZ/vR6HNHG2+2T42rXM2t7bhXXouy8gbcq6hnewdvllZDX8sCF/7+
GWe58iR/han5y2x/J9vnaWbF9n2Kxar46tuvp8Q1tB92Ponuv6X7cHMlWcgh
j6eziLKP45OzErZv91m7SffDFhYWRiiaY4baNAmXBh0zyjYfx02WqJ1VVVVv
D0LI5qL/nrGtoHwcELVTYwRgIq5FLUox+j/6ZXOk
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
9i1bOOcLAuF2jrkD4I5rSIbEP/I/zfBKmw==
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztmwl0VOUVx8MeQgKyiLaCkioIli2ZhCyEQDDaooRQgqyHI3AISpVdgWCl
LLIZT8tBllJZhNpzoFYFpQgcqikpCChYkAAJ+5pISMh7M2/53nuTf+/3DQZC
JlMmZZiZc3JObjKZvPvl/uZ+73v3fvd+kWMnDxpfNyQkZHoofRs0ZmbKtGlj
sjLq0y99s97IHFuPv0vSg4S/CdBXrdRKQInrRVlZ2UCS70kQBMLtHOiyvXqu
/Pz8YQFga01kYHVctIyEFxUVnbjzekmS4Dh5FtayTSiftxzl722Ao+Cyvxnc
+s0D1xN3M7GF78N4MhlW21/D/Fk6rIiecD4zFGruUX9zVBEPXB3uvE7bvA2s
STT0oXOgfHsOUkkZ7EcKYHQeBpY6FbIs+53FWy57SSlY0mCoz02uoi9dLYKU
d1b4098s3nJJR46BRSbDvvck5CtXwXbshfnp11C/OxlwPN5waR98BL15Lxhr
t8KMTILZMg5WmyRYzWJhvrYY0k3/c9SEi818F3qjGBgR8dBTXoWyaQ/U3YfA
pqwAaxgNNik74Px2T1zTlkAP6Qwt7S3yzW37OYs2YxX0FklQD5z2O4u3XMak
eWAtk6B8c7aKvqOwGKxtKsw5m/zO4rW/Js8BeyoNSqnmdgw9Og3GoJl+Z/Ga
a/GfoLd7AWpxNVy/fA5Gxpt+Z/GWy747F+yxvlByqsYVckkJ9Na0Lmat8zuL
t1zyxWvQIntCz5hRJa5QF60GeziWmINv3RD2r9wCPawDjLRx0P+2A/rWXdAm
0noS8jC04XNRFoTrPBexpi9ZD/Z4PMwOsTCetsFs3g3GyPlwXLL7naOmXBV8
F25AO3gCWm4e7IdPB1y8W1OuYJF7zlOO/AfstaVgb62GdI1i+LIbYNlroE9Z
Cu3AMb9z1ITLcfIMnJ3TYFGMaDXqCnP0IrB3lsNo0glGaHeY7VOhU04m+Jcv
B2w2IC4OSEj4/yQ2VoznKy7jnZW07nUEC0uC0SgOrEUq2KOpMMLi6b3e9LdI
mJmLXOORLfKx++M/+759QEyMz7j0ZR+S7Z0pdk8Ea5wIvUEPsAa0Job3JK5e
0Ot3AkubXsHF5ykb8ibY1GxaW34gXw+CsvFzj3Y4PtkJo8cIyIePwzF7BdSX
KC67dEWM5ysuOe8UWOs+YHUpJ2nYg55jidAiiC88AawpvV+/K/RFWyq49NcX
wIxIhvH4i2Ap42A1oPzmhYko+7HYvR03b0JNnwqtYTzU1AlQIwdAaZYCZUiW
b7kkGWzcLLA65JdQ4gklHsFEEhoL1nEY5AvFFVxG7FDybxTMkGgYIXT/1bWB
RQ2HdOKMWxuka4VQ4kZCqxMlRK0TDYV0lMcH+pRLzJMT58BaJcJoSPdXeBIx
0RxsSfdWYxvU7E9uj0d22P+RA9aM7sWQbvRZdKc5GwPt5Tme52HmXKj1uhFX
d6j0WagRSbCv+8LnXFzU360i/9A8bEr31EPE1Zj+f/RoyDfkSlz8pzJlCTFF
CdE7DYJ86AePdkhHjkPtlA6lTjfhK/vk9yqN50suuZhi9+RRrnXjIfJZq2TY
vzpRebxbdkiXrkJvP5DYE+D40POa8ZPY138KNTQOCs1r6XLhA+MS/3vXfrDm
vcAadQHLXFF1vDvssH+eA3XsAq/sUeh6eetet+P5kosLy3wbeptnYb9Q6pFL
+K3wulf2SEXFHsfzJZcj5yD0aRvcj1dDO6q17wFy+cKOWq5arvvNJZ27APbb
xdBnrYDjqwMwBkyCumqzRz1l4zYYg2fCvvcwtHkfQKecSM4/H1BcRsZ0igkT
4YzoDat9Opz0vLPiR1GcX+BWR75yDWZKJsobJdD1v4HVrC/MsJ4w+rwaUFxs
1Gw468aSRMNJcZGzXjRM20jIp8671ZGuF8NMfJmutwkdi3SN+j1gJI4LKC4p
/yzMDgNgUZznrBtFfqDYa/K7FLdXr6fN/COclCtY9WJg1rHBaNcf8rd5AcXF
8w5l/WewKCZy1rPRHBtf5XlbxWeFRTCSxwifmZS/OtZvE59DQHHx18U3YAyb
BatNPzj2HLgnXfvufTB/3g/6sLdJv6TyeIHCRSLnn4P6h796pc+vl0+edTte
oHDdD6nlquUKZC596nqRV/iLSyr80St9idbR/8VlP18K/bFnRR7oDy77vw+D
jZnrlb4+MRvK1hyPXCzzfVe+Tnk7z98fJJd04wbMpLEob9Yb2rKP7knX8fFO
WBEpMDsPh3z+slsu+z/zwFr1EvsrfJ+F77fIt551D4JLXbqeYg2KNxrEw/lU
uojrPenJx/NhRg+n2DCOYuYE8tuSKlxysQy1+2iwxlFiP0xvmiz2x/g+2YPg
su8/DOvR5+EMiXHFsqHxMEbM8jz/XplH8WGc63rSs8hmZfPOSlx8n5LvV7KW
fVz7l+FJrv3MVolif9PXXEb6ZIrjeSwfRdIN5RT7Wl1eojwl372vLl6GFTPi
1vV0LcW9FumYz2RUcMnnr4N1HOraX27q2m8W+86hiWIfWh+XJfalfcmlLfwz
nE16wnokBcaLE1Be3ybyK+lqNWtjaSmM/q+LGNl49hVYTw6g2DcB2vDZFVz6
gs2iDsDrAbwuIOoDYYmiXiDqBq37iDqCL7mkouswx8ynPGwOxXpnYCWNgbrm
7x71lM074Hw6A/aDx6DNXQOWkQXpSmEFF0ub5qrbhPVy1XEaxLr2Zxsnuuo8
IV2gL9vgUy7lyy8hFxRAPn3aJfz1nb/foyjbtlXUv3h9jdfZeL3NCIsT9Tde
hxP3F+U1LKSTqNP5ikvUK8mW+yI2W0W9Uj90TtRFeX2U10l5Ty6vm/L6Ka+j
Orukibqqr7h8KdqBo5R3LwV7dw2kshJX/XD2KlH31r6v3AsUTFxe3Q9BxsX7
RRzfFUDLPU7+yxP9JMHO5bhop+f7PBjNu7r6fTrQs6xtnOgDurtfNWi4eB/T
8LkwQlqLvix92y7oH++AMWCc6NvSVm4JSi7l6wJ69sZCXby6yrzkfXa83473
3QUblzlrLfRHYkS/YxXmnKOiP9K+KzfouIyMN6B3ed7t33gfq96uH9iS274M
Gq5BM6HbBrifoyWa6D9mU34fdFy835u1fU70f1fh2n9G9Isbk+YHHZf6zWmK
B5OgzVhZaU2XSmmd7J8l+vt5n3+wcYlzWpOyXecrpqwQ5y2UjXug9xnvOofR
iJ5ls7KDjkuw3SwT52GsprHifIzZIg7mLyhvWbcVenPy5drbe+bBxPWT3/g5
JvOzHLAduaImaP/XSeiRyeLcU7BxcR4p74zbnFtNnQTWa7A4pxZsXDyuYKlT
YHQZJs4J8vOCyqGz0IfMAWsSBW3LF5WuDxYu4Zfco3B2GirOdfLznWbbX4nz
nmzhCq/i3rvPwwaC8PO3/Bxu+dz3YS37Cxyn3J6B9Hgedvv27RP8zVFDSffA
Fc59xtkC0W/uhNuZn58/1AXhnot/u8X2BOcLAuF2ht8GqI6rVmrFP/Jf9fCs
nQ==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte",
           ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
jfwP+/L/AQ==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
pSTOpCbibnGNIYmHrM3nuXdP9win/6f2WZb3CE9QY3piU5La870sn+wse53X
OFiemeWbWd6Zs4WRzXKL3WpV/uByrKL18MAJkEdmQ5xVRnZIgJi3tPO1MR0X
88p5Tkec9yKNrzwoQzNhf2WHi8t05hqvA/C8aWSyWh+gZ8DqBbxuMCAGtg8P
+ZWLraccFdtg/90uCOeaIP58DSyHT3gfX7Vfwrn4Vb42sb7xAWzryc9db3Fx
WQ+c4HlxXpfiedkEXtdh9R1W52H1HnnBr/w7vg4eJH92lpjOqcI+3/m9i2Kp
rnbVv+x//uRWDU6n1t1Y/W1gqlqPYzUDOqfkl/qNi9crSRefiE7nqleaaK3N
6qKsPsrqpKxeKpZv5PVTVtNh9VTHrj1+4/KXMJ/A6tisns3q2tZjn/IciaQv
5XVv2/ad7v0mRLhuy93vIDBek6ljLBVqXB3s2Mn7JKHMZT15GdL0F/h7QL2J
S/zTMShR0bAfru1wLpS5HAs2kK/X8vfsegsX8x1y4hzIWfkez4cql/mbS/y9
Vfv6rb2Ky7npI/6eseXE172Gi81ZYuJTkLRZ/P3w3sJlPVrP398Xq3Z0ek0o
ckkFlXy/hanxYq/hEhqa+b4Ytj/G23WhxmUv2cD3MZnqTrufozHnz/WyP4Xt
M2PvwziXrO1wzrl6Kx2vDDku4XIbHJOeJ650mNl7EaxGeMf+QemnRZDjM0OO
y3yxle/jlMPj1H2dD2Wr+zyHT1b3fbL9n+n6LnHd3g8bDMLGDtt3y/bfsn24
fD9uTiHfn8v26SItn+/bvXW91/2w+/fvXxRonm7KTC9cUcxmjC2Y7OZNmJ71
9fXzVAjPXOzXLbZRjC8EhOkZ1Q7QGVef9Elg5P93rLhN
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
Tw==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
JwDP4nopL0U+8n/BT3AS
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1:eJztmwtwlNUVxwPhYS1DZwCLFgpKeebJBvLgkQ0GoYEOEBIYAiqWKIhFwOFR
oVQYFIKoteUxtVhAZChFiyDCoFgQsYUOqOUZICUQyDuBhHyv3c1+j3/PvQHy
+HYXE9jsfjPM5CSb3e/evb/vnnu+c88954nMuWkzWoaEhMx/iH6lTXv1yXnz
pi1Ob0X/JC9eMD0zlL1LEkfC3gTo54E8kKCSmhdVVVWpJCdJYAFh40ytGbt3
rpycnIwgGGtTJNUbF5mRdqWlpefrXi+KItwbt8B4cSb02XOhHDoe6PF7nTcf
XN3rMZXfgDp+CrRuUXBHpkL7xUgYP4uB4433As3gUXxw9a57nXvua9A6hUP+
6iz/X6qUUP3OVmgPR8Gx/z8B52gKl1RZBSN6OOQPPjG110a+CHXsnIBzNIVL
vl4JI2oYHB99YeaavQJue0bAOZrCJQgC1ORJ0CITIZULd9oq14qg93gSrt/+
JeAcTeHic3YpH1rEr4DYRLjJfrjHT4URlgz3yPkBZ7gXLuXbkzB6DIXWuT/U
1GlQ016A/mgctJjxUM7kBJyjKVxSXjH0nv2hD30OcnYxBHqOMVHOXYMe+yyM
iBRIpTcCztJYLnXFGqid+hBTuam947+50DsMgmP3gYCzNJZLf3421JinPLaX
ZRmGLR3Gss0BZ2k01/K10LtEQS4TzVwX8mB0tcO17UjAWRrLpVwopLEPhJ48
Ho7c/FodLCqHnjQJeng6hJKbAWdpLBcT1+5jMLrFABE2aIljoaU8Tfo3GHrH
JIjHcwPO0VQurnM0fnXhavIvpsJNttG9eA2k03kBZ7hXLitJU7gkSQr4uP3B
VT1jEZx7gsv+3StX9ZYd0Np0gTbEsw/vWrkSGDiQ/MjY+yKurCy/c0nZOTB+
ngC95QDorSPh3PSxuT8ai3jx4n255+K5c/we+ZNLKLkOLT4VRkhv6K0GwiA2
4/EkOE5fMnHx1zfJfh79Ho6/72/UeOQvj0LMvVrbnx+5xMIyaGOfgx7aB3oL
8n9bRtPreGKMhJYwBcK1YhOXUFgMd/o8qMNmQCgz+5WeRCi7DnX4LLgWrEVV
+Q2/c0klFdDtE6CzuWoTS/NFetiS1lBIDIy24XDsOFyPS8gvhHP1+zBaRcNo
HYvql7MgFBT5ZioqQfWcNwHq22gzGMr2/aQjZX7XQ5H2KlrfUTV6GMq44kl6
w/UK3dvK+nroylpPvMQU0pfuRRixDYBzzTaf43Ct2gC0iaavDud6YLS3w7H5
U79z8e/eewx6+xjionkKiYZ77CJzf8Sl7NgLNZqtxV4k/aDZMiAfOuFzHM71
22F0HMSv14lNi5kM5dOvm4WLxTncmUvoex+DFjYRUrHZv7+9vqQTp2C0I1/5
kWGQjnz3g8bi+ONWrrvaYykQb+3Bm4OrZh2QD/94MuTd33ju77Y9ZHPw+ga4
fm+OmzJ759j2OYSrhabP3OPmQ9m0r7a/ZuLi4z10xnt/dbj4fbhRaW6ftQl4
ZDSc63aamS9cqd9fM3L57K8BV0NR9vyTnnuj6SvioIdlQNn3te/+LMAlnr0I
o9cY6j6SpD8J2XTbVIg5V733ZwEu4VohXAv/QPZ8AH0F2fSH7XC+s42e4aWW
5uLCzmXSFwAPJcK1dOPd+ws2rsqbtJYOw7nB7BvLnx+Fe+5aiNlXTJ85N+4h
v/I09y+DkUu8fJXswyjo/SbS+rlc/7qKSvKRzD6jdPoC9F4Toce9AKG0POi4
xDPZUNPmAC1oDYXGQh3zMsR887OqroiX86DZnwda0r6LfOrqWW9C/F9eUHGp
039H68dG3fQjCQN+HAfnu1t9tqv+zetAW/KlW8TU2Mr2SXAt/2tQcQl5+aie
vpTG2Bdo3R/VM1fctZ14rQDasExqY+Nz7Fq0nu9/gomL/WU23eg6AtrgTPN1
NyogXingf+u+Lx07CaPLaKjjFvI1yPsLMq6qigoonxyEstfsTyi7DkEbvRDy
wW9Nn7ne/hvt/2vtTNBxeRGB9E0dNYvWUhLcL7111720FbjE3DyoE8hOtrLx
vTbaDiHbsOGOTbcql/T9GRg9Uqj7CJIosunxcE9eAqGg2Ht/FuBiIh8+DuOJ
UdyeayNmk8/h+8wiGLkEsmks5tjwGteKjTD6TIb8zSmzrubl1+/PB5fzoI99
oB+5qpeshZo6z3SNQDZe/tepevGe26I+swzOt2pjPN645F1H+L6d7d+bk0vZ
e5D2IfFkI+Lg8OD7ehLH+x/THmYwjA4jIJ0675VLKhJ4fIXFWVi8hcVdmoPL
uXoDjM5Da3yoFlEwOtnh2PgPn+2cf/qQeOzUxsZ9Dr3/FCgH/u2Ryz3mVRjk
a7G4mN7eBudnx5qH690PYPwkjrrpQ0K+VLtBUHZ+6bOd67V15D/Zbu2jI2H8
dDjtcxrE2UhvXXPX8Lglj1+GDuDxTBbXZPFNv3LFxfHnkbL9M9LBcOJLgPPP
H5l8JtOaY3Hv6cuJjZ5rP0qAzPyU8uv1uBw7voLRNow/+1i8mcedWfyZxWrt
E3hc2p9cfJzkR7D4tTtz+R1f724ilJZBGzoDrpVbPPqHzA/WEp7m8WB2PsDP
Cdh5QWhfaKm/hlhU5lc9vDOOghKIFxt3/qwcOE57tZLa/hqsL3Z+w85x2HkO
P9dhepgwnu7Jdf/qIY1DOnGC1sIPmyNfwvrxZDfYuRs7f2PncOw8Tjx/yTyO
+8zlWrWq5rzyPom380ptaAY/N63+0PMz5H5zNZew8212zu1VbyzKxfXUR16C
lbl8idW4WH4Py/Ph+T72Z3n+j3zCvCewEhfLw9I72nlelpYyhedpGRE2GN1j
eP6WFbmE4pvQw9OgJWXAUVzrwyu5+TzPzugaC+VCgeW4XFvJV+xq5/mODT+T
y0WeH6kvX2c5LmPZJui2dJ6f6ulzls/K8lqtxuXY9QX0Dgk8n9g0X9nlUDv1
hrpyjeW4WL63EZ7C87+Vc/l3csLl7CLoQ6ZC72njeeNW42LC8vRZvr7+aDzP
31fJh9c6R8PokQjlu1P1rrUSFxNWX2GEJ8OdRs+vtGdgxCbyOgxWj2FVLlYH
w+phlPxafWP1MnpEIq+fqRvnsBIXq1vS5pj9e1bnxOqdWN2TFblYnZn6y5mm
9+XNO2FEPwXppjX1kNUFsvpAVicoVdT48vKhs9A6hcH9ytJ611qJi7O98R6v
69R6jqyp8+wWBY3sh1hev+7HF1fDethgEVaHy+pxWV0uq89ldboNrvFZD7tv
376XAs3QRBnng6sdmzPGFqzz1lDYOHNycibVQHjmYr9usXVnfBYQNs52tQDe
uB7IAwmM/B9TpxRD
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
/g==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
7Ws=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
93E519kMqOGxfB5Xw7tSDET91z+M/LHZHsVl+OUK+UVzYJm7lOLkoxRTTaHx
9oXTcub3UmB7YSKkNJrzkpbAOnkB1XO1Ui71o/0Qf75ao1wPfhfyCyAUFD1U
WSHvV3q20Gl9vH0LRR7/WZavcQuXlPoDbHFJVSpvi5tF/u4xp1zW5Zt4vM7i
dvGK477tsvnr5m2yBWS3/dvBvOrThyprXsnWN1pDaTeCfOFch1xsPYWtq3C7
6Vcf6ujEGuWyzFlMdoCtBYdDieoH8cfTTstJ+49ADXtG869qRaB40Uo7Lra3
oQ6aBL5uztfDWlP82ZSvk9UEl/HLr4F6LfS5iOyiXzjF+M7jL2ZbUKsZSuJR
tUlHSIePl+Ni65Tw1deY+fol+416ULoN4eubruZSO/WFttbL4l9tv0KOHVn5
/EV2XmnTT2cKLhXbq2V2nq0nK08P1+uN1PwSvu7chK9Ds/VoV3NZZyyk+INi
/8jukJ8bw3/bFjed+7WOyrB1bJnlvdB7kIe/CjWkE9T6rWFmuVcl/TrlvzT2
mkHb5wjV2ypMfwf+QPdBkPKKXMol5ObBlvAWipeuhniO5tz+r8BIttGpzVi/
BWqP0TQnXYZ15juwUtwm3M0v5cJLSeD7NpyrZC9H7+fMpyEfgO37uHR8pabC
cPkyDFeuaMI+P/j9IcW4c2fp/hfbX9PsRQvNtgREavtwpf22Md+ncxUX368k
XX4TiYkp3a9k+6EICNT9TR/IS9byfVNt76o2309l+6qu4nKV8DyYDZ/z/Wwl
YTb/zva52X63MnYijN8fdandcDlf/j2HeQl248HLuEo4jJcLtDyS9BsOc4u9
jctwm8Za0gqgUy8t76fNM1AHx/N8IG/mUsbO0vKykubDtO4Tnq/F8rZY/hbL
4/JGLtP+DJ4/Z5v3Tvl89237eL4dy7vzRi7ra2/zfEdH9yrmR3oLlyiIUGMH
AdOSIV0t4vmq8uzlPH/VmJVv97y3cEk594D2/bV8YuZXs/zibj21fOMuvVGc
Vj6302u4Tl3ned8s/9s6aRpMP2XAlF3A88NZnrjSdxTPG/c6rjM3eZ6+OmK8
3T2W148GLclupHsf17Gr/FyFeY19DgI7h4GQSKhrP/c+rjM3gPA+MP1ro909
czaNvQiao1emeB9XroFsRl/IiYvs2+tUNj/vZN65x+u4+Nm6kQlAWGd+7qzk
Opuf5YXr+fk0dk7N27iYsHOBCAji5wTZeUHzvnOQ/7RWO0cYn1DO//UmLt7n
tqXyc538fCc75xnYAvLrsyh+qbBO7ISr4nlYTxF2Dte8dRfUDzdCOnzKUfzl
9Dzs7t2733A3QzVllBOuQNZmjM1T262iMD0zMzP/oEE45mJ/dLYIxucFwvQM
LAOojOuxPBb3yP8BRQASgg==
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1:eJztm4lX08cWxyELhAQIIIuAIFBU5KmtBRQFtCIuoBW01h18shSpooh6FFAR
ZLE8W0XUp9Uqz323FdraglqtIrJon7jxQEQgLCqb/8D3zUwwgoQoKZDkHM/x
kl/mN/fnfH6TuXPnzh374JWzvuJoaWmtFpA/s5asmxAdvSTmCx754h2zJiyY
S0uJjCJCCwHy74N8ELUS6UVLS0sAkbtEoAFC2xkgbXvXXKWlpfPUoK3KSEBX
XMSM6NfX1z/sUL/pBeKiw2FATAyxOfB1H4U/c/9QNYPcflPANbB93cbmF1i0
YBasre0wedoCLAyJgq3jEPQ3tcCvWb+qmqOTKOAa3L7epuRY6OiIkJt7G62t
rayssu453Cf6YqjDcNTV1KmcRRkuIyMDhIas7aR/rbAY/YwtcP7czypnUYaL
Ttvp6fs76dO+cxgyFLFrU1TOoizX7l0H5T7DzdMT8/zDVM6iDJeplSWC538t
9xmOg50wf9ZSlbMow7UhLQ1GQhFKCu+w3x6TlkZsjo8Bn8fB4jmRKmdRhutZ
bR1GuLijn4EYK5d+jdQtSfjM0wUWlnYwMrFARMh6lbMow0Xl7oPHWBQWgWEu
YzH8Uw9MmxWI6/n34eTsjOTEfSpnUZbrtTytb0GFpJldP3n6GHY2jsi+eEPl
LMpwZR7IQNap8530I5YGY+gQV9RKXqqcRRmu2Yvnw8LYFNcu5aKhtpaIBKcO
74eI2JLYuO9UzqEsVxXxmSbN/BKD7B3haGePwQ4fYaCNDeYHRaOxqVXlHMpy
Ual93oiDJ35C6PINiIzegvNZV2W+orqJMnZDE0RZroaaWpW3vae5Luf+hule
k/Dq1SuVt7+nuCiLr58vtLk87Nm2s9P95ORkuLi4wM3NrUckJUW5dUJ3uf5z
aC+MxUYQcYWwNrPGjWu3OtynbSkuLkZzc/Pffuf379+Hq6trr3OVlT2Eg601
uFo8iHkitnbxcvNC08s3DJSrvc7PWb90qz1XLl9FY2Oj7Htvc9HfX3j4EsYi
4utDV4sDAUeXfOcgLeHNvNyeK2NnBpyHfIJnTyvfqy21ZK4fMWIMMtL39hlX
UVEhLMzNwNPmQpcngA6HfHJ1SD1tfGTtiLIHTzpw5eXlQSAQkvtc+IybjJbm
d7dlxowAUl8X+iJL5OcV9AnXpoTNrK/42nxwOTzwOXzwie3gED5annnggoyr
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
f9FSXz0=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
jCUriL8IQVXNxV65usRvTAx7n8Pe65iYsPc8z/bRSr78it5/VVdX9+Ci79ss
BN7s/Rt7D2dkjESlokcd81VzrVu3js3lVUlv7yvpe1Jz6j+sLNj7001bS7Su
r9ch9Fn48KNPoJDJsHVnTyZ95eqSvvYl6BtXa/sj/Epynqpz59k+kq77jS23
UX/thl5yXWm+j7AYJdvnQ/f70H0/TbfV+bdq4UpyrdDsF9Qnrsyc1XB04WPv
vlK2P4vu06L7tei+LZlUheCQMXrHRW0pISERiwsL2DX1HXRfHd1fR6/l8gyE
hI/TOy6ap9B9jovyCzT+Im1WLtsPSdsKyhWmf1xUUlNTkZ1XqOGSpWYhTpak
4Rqrh/qi842OSUN2fp6GS6pYiAS5lLVTUuYQLrFeckVIlMgu7MaVMh8TlMms
TfeLj5OE6idXZCpy33myF4dy0f387Jkk/pCeD9JHLnqu4u2iJ3vopiXPZ+cv
GJeMcEXoKVdUKt4ufpKTJErnYVKa8rG+ZhF96edzODExA1999dWT51A+n51v
om16fkYfuej5ssgoBfGHhZp7yWk57Dyammu2XtoXFXoukJ4PPPzTGew7VsnO
DebkL9VwhUaG6yXXb3VNiIxNYOc6LZ2cER0XgSuNDewzuVyFsOfkoudh+5vl
Wens7GDncOl53NtttzT36Xldem738drW53nY8vLyBf3N8ZIytQ8uHtUZZdNF
vfUmdJ4NDQ1yNUTvXPTXYzY3yqcHQufJewLwd1xv5I30j/wfdGiWBQ==
          "], "Byte",
           ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztmwl0VOUVxxMImyJFe2SJwZhAFoiySDIlQagIFYpUEmJbVoG0DM0CHEIP
LRUpYkIOKDmF0iJSWiucIGAL1KgsFlDBWpAalgIpYd9CMJD3Zp+3/Hu/bybz
ZpxkCHMymZlzcg4X3rz3vo/v9+69373fFpczb4K+TURExIKO9NeEmb8aUVg4
c1F2FP14btEvZ+W0ZXdJdCTsJkB/WqVVQkocF3V1dZkkX5MgDIS1M9PR9sa5
KisrJ4ZAW/2RzMa4qBvpXF1dfZq9p674A9SX8yCKIi9nrDgN/DwXmJUH877P
gs3QoN58cMXWv6dMy4fcL41zmc5WASkZUB9OghI7FOp3k2Hf+nGwObzEB1ei
i+vlfEjJ3+PXtldXQHlsEIynrkO4LUJ6dhKUHrqgc/jFNb0AckIav7bOyofy
bJarvPTGeigR3YLO4Q+XOnMOcaU6ueZAGZEFQRD4b3nlW8QVE3QOv7hmkB26
9DWX66ueS+JcjwWdwy8uskPJpa8CLy414vGgc/inrwI3O/wW1/LfE1evoHP4
w6VMZ3aoc3Ix/5qgcRWtDlt9KdNyfXD9jvwrPLnUKe5c+Z5cy0rDl2vqL8i/
HFwWvR7qqGxXealoFXFFB53DLzucpIeSmOHQV+5CKH2GwvBNHdeZ/NJ0KPHP
B53DL339aCqUmCR+bd5/FGrXRCD5aajpI4FHkig//CLoHP5wSWu3w/7r1a4y
1m17IGdTHzm+ALb3/hl0Bn+5wlFauTSRlqwJerubm8uyah2UqC6wbtrVYH3W
4mIgNRVIS2sWsS5fHnAuc8UJKL0GQm2fBDVuCMSqi971UVvEs2eb5ZuLp07x
bxRILqH2LuRhoykXfAJKh8EUi7tDypzmyjvcufj13bswHjoK046999Ue00cH
6btUafUFkEusrYVUuAhq22gokf3o375Q26VAaR8NafFqiHV3vbiEq9chZeVB
ekGPuprbTWtPTQ3so3Jgmb8CdbduB5zLvvdzisU9oEYmEAtxRaWQLSbTa32g
PhQH44GjHlzC1WuwrFhL/H2ATk/BuqQUwo1qn+0QblbDsrCY1y93GADT5p38
XkDt8LYA2+t/pP8zhpiSSWfkX4yPxsnWny2BcL3Wg8vyWinUDvFUTQzJ48CD
T8G85QOf7TCve5d4ksi+40nioHQZDFNZecD9i4mUncfHWkq7AaS77lCGkn/V
efuXaeMWyInDqZpoILIXFF0WjJ9qOhWu3YDhwJf0PW5ofrVxG+TuqZCpfpm4
7KkvwbDvcItwGS/egtJ7OJ/PULr1g/HYGe/6nP5l+OQz0hnZbfd0GL445tk3
bHiP+tVRMP15h+f9P5VBbp8AqecwiCcqA+5f7mLdvJt8rQ8sb2xpuL76/pDE
lvdbWJat83huOFYBOXUc6T0Z9oxpMBw97vHc9uNCGN9+X6uvhbhEgwHy5CKI
V2/ek8ur7LnzkDIyobaJc/hRVF9Iz0yBeP6yZqM133jW10Jc96zPjYvHr3It
32dc9slzgajepK9YstP+sBYUQ7h0VSvz4X4Y/nMqZLlYn6Amj4EyMIv6a023
whWKa89NohhAdjhtMcUpTT9i1QUav44mO51IcT30uIRz52DPKaS+sDfppi/s
U+cTzxXXO6btH0Eem0f9ydca08VLsGfqSY+JxJwC64LlEP93PqS4pLxFxBOn
xS+KdeYNWj8jUC4hnruEuto7rnu2paUAxS81gtloHNQHBsC6elNIcRmOVEAa
O8PBFRkPaUIBffsLPsuJJ8+Q/b3o0HGbRNj0SyCeqQopLt7O46eBhwZCSR4L
4fK1JpU1HD4KtVs65IwpEC5cCTn/4tdkY+b1W2F+Z+d9lbe+vh7Gg275Zqhx
cbZaikdNzOWdIlTX8DFOyHJR2yxvlcFWWNL08lTGPq8Epvf3hCyX4dhxqI/q
oPYcDuPepq2tm7aXQ304HWrvsRD/27L5YVO4jPsPQU6fQNWwvj4RSt8xlEOc
8FnOyPLkWBoDRFL8iqT8anQODP86FlJctvlLqa+m/jqilyN+deoPy9rNrneY
DxlOnOVxrP6erbCI9+9oQ2NRyh3V7+hg2bA9pLjYuN+6bDW1kbiiEmB9pdTT
3rZ9CGXIFJj+cVC7f+cO7JPm8vilduwP07s7Q84O66/lYRMhD5/q8Vw8fxHy
iIlAu/6QXpwL4eJlt2eXyLeep5j8mlZfCHKxXMnw1Untd+U5SONmOHOseMqb
+lMeuYhyRy1uGz/+3GOsEopcTNjcizuXPCSL7JNxxdK/KZTTe3J51dcIl3jl
JuQpRXw82NJctldWQcqe49meitOQdeOJKQnSC/kQqi57PLflL6N+Z+U9uSwr
y/i4nY3fW5LLuO9T4MEnyY8ol9+41eMd88btUAZPhHH3YY/7pl17gAcGQu00
mHKpLxvlMn51Bsqj/RzzLL2H83mXluCybKBvGZfu7OdpzBE9BOZNf3ezzVsw
HD+LutuaH5m3fUBlhtEYpQ9JAuSEkTBt2eXFxea/lKFTHfNhbF6M4oiUndsy
XOs2Qe2S4hx/PUHXT8NY7nv9z/wXilUdkx39CfsWnQfC9M7fPLiEa7Ww5rxK
LNF8/pLPY7L5zPYxfH6TzXMGjEuno7h7C6aynUBbikU0VrGs2eQxhmxImA6t
i2ls2YlsN+pJmP66g9fjzsXmldn8Mp9nbp/M5535/DP73bUH7PsOBZSLt/NW
Dfl/CaTJC+/J5BKK59IPZ8M6p4SX/7Z/sXUAth7A1gXY+gBbJ3CsF/SEtOA3
EO/UBo7LrT8Urt6kfKnyvsobD/yb4oE2tvbyL0Hg6zhKRA++rsPXd4aN4es9
AfUvaofhyBGeF/lT3l1YPQ31h2zdTY1P5+twSq9BMJ846d2OZuaylpQ41iub
SRpbr2TrpWpUF1hK1zX4vLm5WlLkpY2vc4czly9p5QoNsZV9wvf5sP0+bN9P
/X22H4jtCwpHLtvWw8AjiVDTRzn2Z3VNgHn/Ef6M7d9Sx2ljvXDiUuJ+APkn
M3gMM9TW8X11bH8deyYnZkCZrA9PLsoLpWJtTkEdmQ3L7NkOrgQd3ycZnlyx
fH8qu2Y6Y/unrfoC/lviXFpeH15cNCYpXuPBZdHPdXGxfcjhyMXWOGVfXNPz
w5SL9FWyVuP6PuNyzDOw/f1sn3/Ycr253o0rk/xrjlNf4cvF5jOkN9/20JdV
P8/JlcbP0YQnVwzkVW76cvMvbocztbmv8OLq7rJD/pvpa3a9f6VBCVc77KHj
5wPZOUHjyWtQogfBtsQx18jOE4Zrf2jfupuf51Rin+HnO5EyFKbKKn7uk53/
ZOclm8JVfx42lISdv2XncNVZuTBWOPadMS52Xped23W+5/M8bHl5eW6wOfyU
8T64OjOdMbZQ1FtDwtpZWVn5UwdEw1zsLydbLOMLA2Ht7KwBNMbVKq0SHPk/
je+g4A==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
CP1c7J+aTcb4LEBYOyVagI64XspLMY38Hy8GIL0=
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
9N+vbDqUrw8IbSf/d4CeuP6Wv6V35L/fOw2t
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
dTA9sQ==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
          "], "Byte", 
          ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztm3lYVtW6wD9k+iAGBVRE1AQzMbVkKnFISAPUI4PI5ADIJJMMMojGPKko
iCAgzhVpaQ5pqWWOOGvHNE0UJ1REZqzOc2/3j9/de6OkaT7neiL57tPz8PLt
vb+1F+vHu/e71nqH/rMiXYO6yGSyuXLhl6tfgm1MjF/iFBXhxC4xNnCWsnhV
EGtBxIsg/Pwtf0unkraDlpYWZ0H+KQgKIOI4ndvG/sdclZWVnp1grC8izn/E
JZgRrdra2kuPt29tbeXYkUMULVvKFzu2S+edgOGZensOV7/fty9eXkgPAwP0
ehihqqpBWGhUp2V7DtfAx9td+P482praOHsGsv3rCqb5zUWursfKsg0vneE/
4cpKy6JXn8FU32mQzptaHmDUZwCOE1158ODBS+d4Ua6QkGgsrOxoam5jEFkc
HCYzauwEheaKjozHyvo9Ghp/43J19WLku46KzTUnHgtLW+obfuNydnYTuBwU
mispMaNNX02Pc7kzYoxicol2/OA3+3Bz9WS4xdh2uy6yTJniJXAp5nP4yy+/
4OTsJZyroqLSDXs7O04cPS7dGxAQxGjbSQrJJepn59cncJrsjapGb/SMBtFT
vzuHDh0lKSWd8Q5TFJLrkcTGzsNsiA137jcxboIz3bsbYtjbFGd3v0655vh3
uRYkZWJkZEJdbaOkn/GO7kIbXUFnBS+d4T/hqjh+Fm0dfczNhrLp4w28P/Z9
YY2oQ8+efQjxC+HiD1dfOsuLcIlSsmYTQ8ytMBtmzpDh1szPKWD0uEmYv2PL
N/u/e+ksL8olSm3rz1y4do+7TQ/fqdYH3BbWIM0tnesd+79yidLUUPfSx/1n
cl29fIWZnh6Ympjg5T6NysprL338fwbXLB9/aX5W0zaSPr29A5/qLysrCwsL
CywtrZ4rFo+LhSWWolg+KVZWVmRnZ3c419ixDsJ1DdR1+iJT7sqgIaOe6k8c
85GK09y8dZ+o6GSmTA3g1JkfuHuviRpB7t1vJj/nEAVr77JxVy3ZxQ1Y2OeS
JzPi3AJTNpTocXxLT07s8eLcuQsSX0dytTa3sKL0Q9Q1uqIs74GaXJ+MxSup
vXf/KS7x88zpMyir6CFTMSA+Me2JNrkhm/n2pMBZ08SSldWEpd7Eqq8l3/fo
TWSgJjtKtLhxzIm6upYO42qsayAjOQ3XiZOFZ6wAO3sPlJTUsHjHifiENCze
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
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztmwlUVdX6wA/ce7lXUMwccshQQ1PJUBM1zXIoNTNTe04v58zhPUeccMoB
kRRFSoxBQXF85uxDnOc0Z8UcAM0hS5GZi1cE4fz+ex8KM9HX8h9y71qtxce9
d+99ztq/s4fz7W+o2n9E54H2iqKMNol/nfuNb+Hp2W/CJ3rxo+WEMZ/318lS
IQ2FyEIQf3/L32JVkvclLS2to5AzQrABkf3smNf3J3PFxsZ2t4K+Pot0fBKX
2EaKx8fHX/zjNeZbd8hasQ7L1t2Yzeai7v8Tx+0pXC5/bH/vdAy5DduJalcw
vUZuh36k/3ynqBkKlKdw1fh9u/T0dHLbdEF9qSlZvmvJHuir8eWO8NPqiprj
WbnM13+Bim+SNWFxfpnauBfU74A51frm45/mEnNQda6LZfnO/LLcsfMEazOx
5pKLnOOZuY5fQDW5YVm2Pa8sNRV1UhCUbYL556Qi53hmrhMXobg7lm/35pdl
zQ6FymK8biYWOcezcqVfFeurdD0s/9mTX2ZZtBRcWom1Z3174p/hssRd4174
FnAWXJsO5197zz8ctXobzL/Y5vpSQ1aCsYworkNu/U5kro3S9nbL0uWoNd4T
+0ZKkXM8C1fmmRhy5iwDnRtq5behRAVyFoSRuSoK1aWpWF+2OV5SzIlmKOdO
5prvyRrvh+pUBep2Qq3dVtTZ8Hs59iexp9fm/qLV2u/svpNFs4qoH08k3Qr1
xD/NlSr0qIZtxZi5kbl4KZnegaKZm9gj3yLHy5eMS5eLnOVZuKTc3xGNWrMZ
aoWaUMmNnOaDyKnfFfWVemRH7ChylmflkpJxR+z7kWew7D6POT2D9MQULPvj
xN6RUOQs/x8uW5Fn4coOX0Xm3mNF3ve/kst8IQ7KVye3RXfMGRmP1d/38YEG
Dcht4PF0efO3T9H2zTfzRW2QJ7niHnh4cH/WrELnkuf+nA59wK6GOC/XIds/
4vH7ib6YY2Ly2q/eSsbyLaSK78kpD2XTjkTmhtwiIjKNgEmHOWhXhw9eL8m0
kSUZN6gEy/2cOLfjQ8znz2vPqLC5HvgFg0Ew2ddFtXNHLduQe9+fe6SNKsZA
fqYnJIh9sznqy++RlvKonrV9bzI/XEomNSWVFQczifxkIeuVMnRu70Cv9iYO
LTcSt7cdl+LM4n6Fy2XZHAWOrqLqdTFeQuwFl1ILtW5HLLHXH+FKFWezB93+
Lepf09pmD/oiv/7nmz8xZEgg6zancOLkHWb6XeWr9alcrdWVqfYl+KyPA1+O
MPDRe26cv5RaqFxy/qktOoviSoKnnpDXUXVvoDo0E2WVedBr2iNc6aGrRRtX
zf6BZHNw597KSK2+7z8/pdYb/6K/ZxIbI2/RY1Acc8PiCV9wlnhTfTqXdcLX
y8igri9z8sSFQh+vjBOxqJWaiKrqYgwEk07MRTF2uZXeE3WXH+FKu3KD3Lrt
RdtqmuS6Ch0y9hrnzkXjZCzLv4dM4Fi0hVPnkrhyI++6qNP3iOy3iPPi2X3Y
wJG545wJD1mQP68Lc33d3XoYtbgYL7vamqglGnM36mSB6ysjWpyvTWJcje5k
HDqtlXmOGkMZu1Ic6zGSXUdSmDjjRxISUrW6Df+9TdjObGJqfMomfXV8w9Zy
4NDFQh+v/L1j1GzB5CLmmQvZU8Ifq//9873vFUL2YO/83271PGivOHO51r/Y
cuwe3261kJSSzs79FgIWpzE//Be+XX2NJJ0HsWN8f73f8+FKj09GrfYuap1O
pCc/fj6RXHfi77B/zzoO7woi+fZtrTz+djzFS5anpb0Tcwe8xZSp41mzOoJZ
c8IZPWYGY4e2x39idQLWXCFy8HpSxHz/buWW5zIPf5PsOSvJ8ttYYJ3sx/lz
x9g4rwrr/V04HZ2nl1y9eh3n4i8y8nMHVszTsXCSjvkTSwkWIz7DFCJmKoRM
UZgxsiazlv1InMdAbpT2eG7j9b9Ech0+eIDtoeXZuaQ6J04c0MqjTx8naLqe
Jd4Kc0c78PUEA99MMeEnvkfMMjF3rANBkw0smqowfthrgn8dt5R6qEIHsRau
revn4D97MIEBA9i2aSp79mdQucp3dGwzki+GOrN4pg7/CUb8vUxsCDAwx1PH
1iAF39EVmDP+RWq7DkQxnqObYYpVcUXuuoeXdyx7DvzIQTF2c6a2onzllej1
MfTvN4Xmb1Um+AsH5o1zpG+Pkvzj4xeZMsGL8I1JfNBtBQ72pVHslqI4HtL0
R2vhCgxPY7FYI9d+jOHL8TXp0FJh5NBX6F5uLGqVJjSuWolTqxxp17gYo5t1
46vxa1i4MZvBn+wi6uWGgtmIU7FyKLpvrYprzZpVRO04wswxrzJlkB1RoSYG
91FY07MWAcqL9G7jwL6lxWjr6CzeF9VZG/g9I2ZcY59SH0udMvTtUwz/8XY4
mmpbFdf+3YGMHVKZtk0Vse8ZWTbbjpD57Zi76AYlX6qEvbPCCxX1VFEcGO36
NisPPmCcm/Q7vURki7IM+tzAjkUl8B7upJ1drIVr3JCGfPi2QrtmBl4ub8+S
oTq+qD+FwC3ZBDTqwlDxbm6uvIC7YqJtq38StiuHIOceYHyJ6b2ccHPVMbKX
Cc/eTla0b7xJSw87qpTX0bWNAa+xepIalWKlY3cmr8vhYgfPPP3Zrqb4rErs
+558uSuXYKfuXG9SgpHD9PyjtZGWDR1o3cTRarhyBdeMoUYheurV1jOnpwl0
5Qgt1ZvAzQ/4oE0vaio6mipO9BPi696OZbuzmfy+NwvF+9lFzM+e4hzWrY0d
4z1bWc17OUc83zE97Ylc4MiYkfYcfr+0uF0ZRjVaSNj2bObVeIdXFQMutfSU
dzHgWKIUYeEHWTivOYu97QnzLsaHzewYObgu27Y8H33+z3F5YK80xau/wuhh
OqhdnI1KSwb7JLFp9j6x/71CsxLiTBxhpG9HPYuV0mzpVJOOHRTCZhqZNULo
Vz6NWLX2DBER/7Wi8fJAMexHZ+fKvOEKq6t9zMDPLjN/RRbzPRcxoGFHOrfQ
cThUh7tLBW7Uep93nAIY0PdtPnpXwXtCA85duM6s+ZcIWZ5kNVzyfaMYD6Lo
t4l7uPB2x0CWb4pjnvdA+nQ3MGmMiZDpDqycbaB187J06TkAne4sRsddTBo7
gB279rBh00nGTr3ErgPpVsMl969+Bk8xZpeoX8eT4Jn2+IwwsmG+mF9eBjZ/
rSdgvEHTo9Z/5UDwdCNDerfmDY9Idh28y4HtMwle+Cl+Pp3YtD7IqrgSFFeG
fbaaKZ6VCBVnj0Chp3sPMxDuo2fBJD0h0/QETTUROMlE6HQDARP1nD17RLv+
1Jn9HF38CgdDqnHwyGmr4ZK2zutVGnOpemdmLosR56tqgkMhfIYi9FyFr74o
zvRRzviN0rPuGz3D+zrg6FCGmJg8G8mxM9+x078qkXPduXDpyVxZczeIc+CK
5zdeHh6c3H6INKUC63suZVroBWaPq8rE0QMZNjqCwEX7WLd5D77+y5n3WXta
GUwUK1WFn27+ol2ffP06R/aEcujIbhITkwvkkud0eV5Xq76jnd+fC9ev75sr
3t+QZPcai4NjmBGYiO/XZvYesZCQmM7aTWlsPWohrmovWol382v1muZfn917
EvfHBv/ufo9zZU8O1+wr0s4i7S3Pi2vf/pP4BQew1q4il6p1x2d5Ouu23M5v
M3rSFfYfTWXfR70pZf8CI4ZP1Mrv7jsCpgZQrCl3j5wpkOvu1hOaHew3mxjF
62l2sufBtSrChwWTHejSwpFzSkWWdQgh8tQ9UpJTOfVDsng/JXP0zF16fToM
Z6cKHDtxFvOVq6iurdF8oHZ1UV9tT/rZR+1sGccvo1Zqqdktpf1S2jGlPVPa
NaV9s3DXV0NOn4wWZ8TSeI8y0ONlR67ZNSA4IBqfoATa94pl74E79B2RRPU6
w+nSuat2nWXLbtCLftq5/Wonr0/G4o2PcEm7srQvSzuztDdLu7NmfxZ6tNry
k0fiIQuD6/zFZN5/pxqzPcV+N9jITGNJLrv1JigqA//Qm0SfT+bbzWn07Pc1
sXExD/e4SQFCR5Zs7mT3mfbYPJR+AOkPkH4B6R/Q+KW/wNFVPJdthT4PYy+n
c/3IW+yLsKO/0M17djGxRinP1p7h7LyYqbU780MS2/c9Hn+U06AHarnWpCcm
F7i+pP9G+nGkP0f6daR/58HckEJfX9JflXH8ONFRjQgWuvlgcTYc87k489cy
sUNXh0Dv40KvSiVo6W3Blcid+FRu307l1i3xGZ9GQuRRksOiSEhO0+5TkP9L
+t2k/w2x3+Z83LfAeNy/muu+r6/WF/X3Iv2Q+fJb2R/aFCDyPgX5K6WfVPpL
KV8D84WC4yv+aq7nJdK/nb1k9ZPnjY1y/c/1YCNc5hsJWpyIjBeRcSOW3T9g
iTytxZPYMlf2ku2or9TV4nty3h0IFWujVqiFWvMd7u+MtlmujJgr5Hh9qcVj
SZ1ExmfJOC0ZryXjtmT8li1ySZFxczJ+DnFWyO43WSuT8XUyzs4cd9NmuWSc
o1qrLWq9Tlr8Y9a4OWSuEbpyuTe0+Eib5bqZhOrShMzV28gJDIMS5fPiV3Vu
5MxeRubZhzqZTXH9Is6ZNVppccUyvljGGefUl/EXdbT4YzV4pY1yJWnx3zIO
/LcyGR8u48RlvLiMG7dJrut3xDwU47VoyUOu/+zW4vplfP/v29oU10+JYj01
I2tO6EOuNXvFOnPX8jFsluvnJC0fRp0crOXHaFwR27S8GZk/Y7Nct5KhUjNy
x817OF7Ldmh5TjLfyWa5UsxavpnauGd+WZbXIi0vTean2SqXljM43A8ZJyfz
BWXeoMwfzP2g22M5g7bEpbH9fEfL65T5nVoeZKP23Dsb81i7p3EVlA9rDSLP
/Zate7S8XPPtAuPbn5oPGxkZOaSoGZ5RPn4KV3E5ZpLNWsftjyL7GRsb2y0P
omAu+e9XNhfJZwMi+1n8IcCTuP6Wv6Vo5P8AuKK4ZQ==
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1:eJztmwlUVdUax0FRlGRSIhxySMKZGRHTTFLSCmdxeGo5oDkrQmY5oaGIJIoo
iIDklAkqJppTOeSUCGpqMiipz/khM3KRe+/v7X0otULXe6zFtFZr8efec86+
5+7f/b69z977+3aLMdMHjK+ho6Mzq474N2D07O5eXqPnDNQTB65zvD3H1JRn
hToKyZMg/v7RP6pSKnmTnZ3dT+i8ENVAsp79Sur+Yq6UlJShVaCuZVG/F3GJ
bqTe/fv3f/3rZ/LTbqCZuxymL0J14CS5ubmVzVCq3V7C1exvTFevgfMQtK/Y
oTV2BBNnijbEVTZDqXoJl9Xz5XJycij2mIG2jj2Fq3ej2n4UbfP3QTAWJN+q
dI4ycz3IQNvSFfWgOU/PFW3Yi9awPUXfHqp0jjJzpd9Ga9YF1dx1T8+pLqai
teiIKjS20jnKzJV6C62BA6r5z3Gdu4rmNUdU66oxV8pNqGuPanHkMz88exnt
azaoIqsvl1LWQPQZX0Y8s1eC5BL2ithZ6Rxl4cq7chVVzH40hqJfX7blGdfp
X4QfCt8Mr55c2mUhaBpYoanZEVq/x5PVm0W/n0thUjIaCxsKI+MqnaMsXIWX
rlEYuhOtnjNaoy7imdwadd9xPEm9K/rItsJeMZXOURYuRZlZaPQdKFy5HVVI
LBqjVmgdhgnftKEoem+lc5SVK+f6HTRibFHkFVRiw6XRaHRao9HrQu6dR5XO
UWauTNHOuomxoZklRV/HUXjkDNraNmh1mlHkuYCiqF2VzlImPxTKTxDP4Tbu
qFtYo7WyQW3ZR7QzLzSvtkTbzKbSWcrKJZX37ywKf/gF1b4E8q4/JCdb9IuH
LqCKS6h0ljLbKz9fGdf/cSznXs8fVyX9r1yq9VvQ9h+Kur8nBWm3eHzuIpqB
o1EP+JjC/ccrnaMsXEWHj6NtYC36v1ZCr1M8fA7qnmNFn9FUqLFoa93Iu/yb
UrYwOBgcHNB07ITa2UVRsZQ4/kNPHDtR9LtUDk4USTk68cTpeXVCK17l/cqL
SzvbT/C8KeaUXdHqO6OpK76zjnit6ST6+Y7iWhOKAzeXlBV1yTt8jMcBkeTc
vM3j4M3k7TxElriWmZXNDdE+V258wPmrmRxPKuS9ESuYbNyMpT6tuP7T62hu
NSIhvgfJaZlkHTsJjo7lxvUkIKyES88FbU1H8d4Ota4t6pr2qPWEbURfrwkq
GdNrxe9ebNUHrbhe7Cye27UEdwNhz0spyvWMRzl84X+NxAsP2bnnLvPXXMe6
QRuWtGlJeFhDMi/WJ3H/B0rZrIxHyv3Kiyvvspg/vtoZbQ1bUU/BVbsj6tri
Vc8ejW4H1GbOPD6R+oyrYXfB2r5EujZoDFzIP35Oue7ruxCbd7cxbeEdxnil
8NGnGQyYtIDhOg2YN8ySc/EWpP7Yk/v3c8jIyC5Xrlwxxi2e6CvqKMa+tYT/
1Raq5aDYolj3TYo8ZpP9e78o66Ea6iOY2ojybcWr4G7dn5xHmRw6dJg6Jk1Y
E3mAU+fzSLiYQfL1HKJ3XKNB3SYENmtJYGBjzu50IjXtEVlZ5cslVZB8Q/iT
GPfWEDbS7yQkbFZT+KOxPfknrjwtJ+uRm3gZdV07wdQOjWiH+buPKdfa2Tph
Zf8BCRey2bn3LnHf31POnzpfSGvXqXyoa0JQ35bs3PQmCWeOP71feXJJqeat
F74nxhoKl4t43wHVp2v/VOaPehTOWy36FTG/Hu2rHJ84cYKa9cwJWJvAt/Eq
vt5+h3Wbb/PoUTYnE/KJjEnDoG5D5rTtwldrJrHn+6MVxpX7MBONk4fwL9Hn
67ZH3U7414OsUrnk+L+49zRy028rx/MXr6SJZXNCgpezK/4Uh09n8/Olx5xM
yufatXQSz52kQ9fh2L/jppRPPL+fk6fPVAiXYrMdR4WtOgj/skG17e/PY1kP
2S7k+z/GIomXkvh0siuhC0yJXm5KfERTNoa4ERkykh1RHsSGtmFDsCurN1yh
hpE5ERvD2OzdkVUzu6GpIC6p4g/HUdzrk1KvPc/1UMwBdoccYPfsNxg2vA5D
3V9h2SxDFkw3ZdtKE8K/NCR0aSO2rGiA93hz5gacoGPPCdRv3JJvQsaza8uK
CrOX0occTaLgcOILuRQbJaXTyroPdk792eG5iDD3Rmzyr0Pv9+swbVQtfMYY
MeiDeswZb8xYDwMmjzQkeL4lffr3p3tvD46fvsjuPTEVaq+XSXLFf5+IiYUd
ZhYmDHAzZeyYdwjxjiJ22FBW9m1M4OwmuL9Xn2+WmTCwlwlblxjTs7MZA3rU
p765BXMWhPBN1EQiv3KrMlwaB0csGrfigx6GHA0zZ2S/enzg5sri1ddZvUPF
at8jWFrvJTh0J6H+3Zg450d6WIfxdhMrdHX1cR8+l1WRefj4TGHd+sgK9cOX
SS3GvBM8jBjV1xjfT4zoYGfHkqB0/NY+JNIrjvTXe9LdZDXT/ZKICfegj3ce
C2rNYkhNY2q91pR5AZfwX5VO1NYrzFvxoMrYS23vQM+36vOFpxFdHQ0ZO3ET
/qF5TJl4gvs6VuLWws9qTGPAjDPErh+Mk0c6P+q6466jT4vOHxO4NoPQyAtc
vJrHF4H/FlzlN+79f7nsbRvQ821TJgxrh39QingW32Pq4juMa+HLic4DCGs+
g+6Dj7BrwzC6dj/LWR177Bt9yejZN5jvf0eMpaI4cnArg4aK+Z1DFeESfhiz
xIwl00xpKfrDFesyWDD3DEuWpvL+2B/xnm/NwgUfsSTgMGvCFjCoRTRe9afg
E14g7HqXleGPmDvbG+/RDZk+qpForw5VhmtQb1OsO5jwVo+xrNmUI/rvPYLr
F/oPPsqUkV4E+rkSsrgZK9asYubwTYwafoSVQVfwn3OYoA1ZuPYag1Xr+ri5
NlHuV1W4RnxoxEA3A0aMnEpQaCbBG+7gFZLLWOMv6Nd6C74Bi1kwzxe/hW8K
+9nz4aRTLPf/Bf/5x1gW9oC29r1YOMGcqC+qFtfAfm8THTIZH++lBARnMHjy
bbqYh3NMpwuO75xge4Q7boPPEmDtRfSQMbjaRTLD/wHzA28TGpHGYPfW9O1h
Th/XhlWGSz6/Zvmlk/pbHoHBp1gZmY257TSm6Bjyne5AbIekEhPZBzfPC4Tp
eIivasdlHWc++uRn/FZlsXhJDJ4DjZjnaYFt+0ZViMsJb/9Mtu9KZtGyFBZ9
lU7d15oLLn1m6s3GbeI9Nq3pwwTBPrD2XLINOrBnTDB+IbcIjb6Py9uuDO3X
QPiyGVP+9VrV4RLP0a/W7GDGjEACQ4vw+DhY3EsPl0a22LaNZ9Jn54hc1ZM1
G87yRqv9rPj8OEvFOCQo8i5jPX0Y9KEhSZHmDOvbgLZtWij2rypcm4IdWenf
k/EzY8R47w3cuhgwZrAZe9daMnmEOQcjTPGZ2JC1yzqzx8uVb8f7sXLRPsZ9
3IZR7ka4OJhg2qgFX4V+W2XGUfL33fz1Qi7+epUZ3j6MGmLF3hADxg+rwydD
a4nxlT6ThtcVcxYDVvjoM3igCUdCDTk82ZlN00No59BN+G17du498vR3Ku17
Cg4lUnCk9DlFedkrblcU32yYg4FxE7r2msEUn3B8RuuLuZcBa+cbEPSZPt+t
NMRzqBGLphozaYQhoz8y4Jhva74O2EVy+g3lXpmZL+Z60msCxX08K5QrYqYD
27zaMHfxLGoYvMqqqNsELe5I7BoLtoXZsyW0K9tC7Ti22YztQa8Q4GOKn48z
pxIO/ulemTKWWAqXatsxZb4u5+1y/l5RXIcObOLQvhXK8evtHejWexoHD8dx
6cpZDp96wE8Xcjh08j67v9vHxoj5dOrclkkzFyvl8y5c4cnIz5X3ct79Vy65
nqJu11dZX1HWWZw8lHWXiuCSrwd/OE3w2uVMerMHr5i14NCJ/3A6sYC793LY
/t09orbdJSA8j3VbblDb9HVi9+xXPlfsPgXqvsXjTXtLbV8q7xBlHUyuhynr
Yno2qOaFVxjX6Z+2syWqMavftsRF15x3hvlyLKFQubZtz1227LrN6XMFuA+a
hnnzdmSI8483xkFtJ9B1gMa9yL5550/9oVynVBvbKevncv1SrmNqde2VdU25
vlkRXKmpNzkea0nwsob4mTTHvKktMfvu8dvNXC4nP+L8pTyitxznlVdbsTpi
I9n/yUDb6F2oYSdkI+TA409XP+WSa1tFgz9V1peVNX+53qysOzsr69DFExcp
69LlzZX+Ww43j1lz6QcTgvq8QW8dc/7lHYjn7AymzrvG8rCHuPTeyoDhE5Ty
BTsOQC17qCm4RNtB147i1oOf3u/x8WQlDiDjATIuoMQHandU4gUybqA1cyHv
ckq5c12/kcPl/Z15mGRC6Cpzlonns1VTe75ce4uNsXf4OSmDz5dc5c69kjZf
cOgk1BE+aOCMtk1fUQVbntiNeno/zYoYJW6j1nMsiePo2ipxHRnfkXEejY4l
TwJCy41Lxr9y9+4j5dglrmwTfVaiGTe+syB8RCum1m3MuNGLSDnzG7fOpfJt
xGXu/5JGVnIqWSlp5PuFkb8olNyjp3k8K4D86K3CD0vGUcXLNytxNiXeVtOp
JP5W10WJx8m4nBLHmu1XblxKvFLUResg5fACOZYq/iaHp/FKGQ/VWnUriY/q
NEXjNk6Jm8r4qUbHSvihNUWHfyo3rvLU4/3HUQ/8WIlry/i2jHPLeLe2/zAK
128t1/6wvCX7xedzwOWxzFP4a7nqwqWK+5nCg+eVfBGZN1K496ySRyLzSUor
X124tM2slbwedZ+ZqC3dS/J9WnRQ8n9kHlB15ZL5VzIPS8mt0Leh8OhZisT4
ROZrybwtmb9VHbmkcm9nKPlzMo9O5tMpvF5BSp6dzLerrlxF0fFKvqPWYbiS
/yjzIAuDtit5kTI+Wl25VOtilPzUJ2n3lHxVmbeq5K/qOSv5rDKvtTpyFUbs
KsknPp+s5BfLPGOZbyzzjmX+sTYgpFpyqcJ3lOR/n7n8zDeXbRE+6Ywq9oCS
N14tudbvRGvhiOrcr89s+GWEktf/17LViisiVnCJ+XHCszwYuf9C7sOQ+zGq
LVdYrGhfTqiSnvmb3C8j983I/TPVlis0tmT/0sW0Z+fmhSv7nHJ+z3+pjlxy
n5my3yx639NzxYM+A8t3lf1p1ZVL7guU+wPlPkG5X7AwOE7ZP6j2mPm3POPq
xKXYbEOcsq9T7u+U+zzpNJT85Gt/K/cyrtL2w1a25NxLdfCksh9XMzeQvLQb
pZV76X7Y+Pj4iZXNUUb1fQlXPWkzyVYV7VaaZD1TUlKGlECUziX//c7WTPJV
A8l61nsG8CKuf/SPKkf/BUuHeoA=
          "], "Byte", ColorSpace -> "RGB", 
          Interleaving -> True], 
         Image[CompressedData["
1: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
WP4=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
useeg9Uth0tYt9as2Yq/hTOHU6+RnX6GKaaaJOz25Vra31myYD1eK4PwdLPl
yOaOPMnW4GysGsWm5rxyi2HTksH07KtPwsGr7D6U12K4TIYZ8fd3Z7Nu1hIW
eH3FUstZBC1rh7P9RI6eeUBWxAGWj57DFCtrYgM1ePhIk5QgPap6T+cfQ0Zi
PlKdCaY92Bq1UBinMyU/oEVwifr6PAn/OX54rbbF30EFj4Uq+CztyMZoDyoC
dxCjP5ZRlkvYtLYHD64rci1iOBU3S/ifuGBMh2ky7qO57Dt6Hz+viy2HS9BX
5bDBOC4aK/hOq4jw0cDTpS1Oru2xWrGWL6clskfPiLl21viuWYbP1nCSzKbz
aowjdx2m0bOXBk7uQZw4Eo3HuvQWxXVy5kii4ybj6voZXva6HI1qS9J8TSIs
DrAk9DuszAIYN9wAi0/WsFRoB8/4glO26hyLboenYy8cncKI/uJDkqdNEL7X
lsEl2o1VYTdJPhKDrfNq9HTbkfPhe3yn8xEH58zCN24T60KWsdjNkYQ+49jz
8QGm2ruzyPZNvJd2IGiFLqERa7CdbUrxO6NaFNcavzSOn8kS1vKTmGKkwf8l
bEKWdp/UoP58m9aG9V4aDJk6l439J5G3JoHNmz1Z49gJb1tV1jmosWqdI59O
c0ceebDlcAl2eXPwVLZsMGP48E5YD9PiHwMnIBszj+RQTW5nKPJFUFds3H1w
nWBF2meJXL36lFUuk9ng1hYr83nM9znC6knWvDSxbjFc4npj/5F84vemoqXd
gfi5g3hl9Tm5kz4meYcKD26ocjhGHT8fZxyWr2T6x2tJT39J4m4/JoxRJ+3i
SQ5fSCdgph3y4LgWxbX7QAVR2y8xxKAjFaZGvJobTVawBedPKZF9UpvMZA18
Xd5nlKkNDm4ruH3nIXE70jgpfJOZGc/wWp+M79i5XJkX2aRxm9/KtTOhmM9j
zxA6rw/ff+yCvPs4rqzTZv9BFSwmv8Hez1VJ3Ggg2AoX7BxcmDXTguMns7n9
zXOy77wgbEOK4PMl8iS/ouWsNwSuHfuLOX4olbyxE4T1+UNu7fcnzFeZob07
YtxlIpP6D8DNTonxY3rQq58pur0MeHdob7z9dnP0tIy7D2upltdQUVnTsrgS
Cjh2PJ8sy/VkDDEncm0kYfEn8HE8zJfJr9gZegFbozl4rUkkOiGf6fNiMBm/
hF2Jp6iokje8q7T059e9xaUV9B06sc4PHPoRZbKyP4Vr1/5nXLpeRmF5FXEJ
jwnbXk3Mziqi4yvYlVRGytUKEvaXc/n6C7YnlLLniBxZeZ3PXVFeTvkPPnap
rDGX6JeL/rl47ujgLPnt7k4Okh8v+vNN/n3te0bqlVJhHNXyMFdOvMC5accz
ks/KuJZRTtTWXJb7PZTiF5t255OSVtHw/PwFDgQEfUaZwCb2t57reuZDxkyx
kOIpYlwlJfUq+nq9pXjLHJvlUvwlNHKzFI9psnG49xlJp4spK68bU/kF1QJb
McdOl1BQKJfiUMfPlkgxm8QjMm5k1RC54XO8fPywd/QkKDQKR2cPDh462cA1
dNRMKe4lxb/aKOLqE8Lipd7MXugu6U2Ml7VVVJLiZ03FtSUujzOppT9yFdWQ
fLGGo+eqcAt4QlD0Uy5eL8du5UNCY79nd8JZevYzQEG5MxM/mkFfA2MU2mvR
x2BEA5eCQtuGeGV74SjGLwcZm9Kukw7tO2lL8U2F9qosXmLfZFxivOzsxVLh
+66LB+bclxHid5vw9XmsCigkPLqElPOVrHC/R2iIjCuXshgxdhyddPSFPnZF
o2s/lNW7YTptfgOXGE8W48pifPkNxfaod9aR4s5ddHugoKhYF48W9BmzKabJ
uM5eKuXY2WKpXVldw67Nu3DoOQBP3fcINpyOv4E5/gNnsrKbEYsHjeJWRjZP
nuXj7OqJssDVXX8wW7btJOfJj3G2a9cymWM2R9oPcF2xBr23h0j7BAttXfHx
8pL2D0ICg6mRN53d+Gk7Pf0bbOYPJXTVGyy1fpO1roLvbKFExEo11noI/qab
NoHB4dK9qz5djYowrtS1+3Lnzj3p2k/toWhHKisrsVzig6KyirSvI+7viPs8
tTXPG+3rNAVXenom1dVy8vIqSIwP5f7FLqTsfYttoRqkJekS4q3F/dQexEd0
J+t4F07uHcGFC9d59LgIL79ANm6Np6i4jMuX0/9l/hL325RUtaX9N3EfTtyP
c3Xz/Jd+/NFcoaGhUl/qpW7/8Z/2JMWj0Y/7k3Vi/MOeprG0Jqx//p/3K8U4
q7hPKu6Xdha+R/GbCgsKanKuP0POp6RI+9s9tbSwt7GmpKjov4JLFDEf4V7m
1w3z8H8L17+T1sKVm1fA19884W5OPpn3c6V8H7lg09Nv53JDkGuZj6S8oNbG
5eIVIOVhde81AP0+/ZlvtYDSihcMHmKCTlc9wZYYYGFpJeVztSYuMV8uNjZO
yp8LDl7PrewsKa9OzK8T8+yclzkL17Ib5rDWwlUvxsYjJR+7vi1yiHmRYn7k
T+9rbVzRUdukPNWHuXX5cxWVcoYaj5byWVszV0lppZRX7OFdl+vyrKhKyjsW
849bM5coTsu9pHzwyqoabOy9pTzx1j4ORRHz9sX8/Q9nWKOsqoamehcpv7+1
c4ki1luIa0NzM3PBNzOR6jFaO1dpWRXG7/2NocIasbCwGMMhI1gX2Hjt2xq5
fNZGSvVM506fltpinZNY79SauW5m50h1Zx4udXkxop8m1qWJ9WmtlUucg02n
WjH2/TE/+sbCen7g4BFSPWFr5LqUls4K30CpnnOWpY1U3ynWeQZGbEFdU1eq
/xTrQP8Trvp62JYgnn4hjepvxXrcwuIKqT5XrNMV63XFut0f7v/VetgTJ04s
a26e3ykzfoVLVdSZyNaS9PZrIvYzJydnbh3Ez3OJP35g0xP5WoGI/VT9EeCX
uP6Sv6R55P8B5wWK/Q==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1:eJztmwdYFcf6h7EEAdFo0NiDhSsaG1IssUSNUTEasd1EjYnx2o2diNgoNpQi
vSpNUbBgR8VoLFhQE3sUC6h0kHaoxgPvf3ZJzOVaEo3I4f/kefixZ2dn98x7
vpnZmW++aTFxzogpVdXU1BZoiH8jvrXoO3/+t5Yjq4uTfpbmkydWk1KFughJ
iSD+/tE/UimVfsjOzjYTuiREJZBUTrPSsr+YKyYm5ksVKOvryOxFXKIb0U5J
SflFypd38iJotocanaFqKwpcgyg4eByq6YJ6d5G9FbQaVtEsZez2Ei7d3/Pl
3omneJk3aJlQ8ulM8s9dIT8uHmbYiawtKRltgdL9QEWzlNFLuFr/dz6FQgEG
QyjwDnuaVjJqhkgbiyJLQXZWVoWzvBZXRg50HkCBi798/nhjKFTRpXDf2Qpn
+FtcmYLL8DPyN20iJyWNkobGFI+zJTsnp8IZ/hbXoyzo0J/CHZEoF9pAkz4o
ElWr7r02l8Eg6DcVappAvY/JUVFbvVo9FHm7jZb7P2XvOVD/I4qcAiu8/G+E
y3AYNOxLfnwmygkLKflwIDnZqmmzV6qHHQdStMJbPs8/fQW0W1O071SFM/wt
rqRH0F7YynvnH/f+61OejJ5W4Qx/h0vqI+hqSn7gwadpj7cdgUbdUKSrXl38
K1yFF69RaLMe3jPk8dj5KH66juLczxStFmMrzc4oR0ynIGhvhbO8KpcyYCfo
dQX9T6F1Xwq9w4WCxHlPaCf6/ja9wcyiwlleuR6mZZJ/OYH860JXElAkpKNI
zhDnieT/InQ9mfzYtApneWWuSqjX4coT77K8nNwKL/ub5lJ+PRelhWOFl/1N
chUePgG1xLz53S7kxsQ9c71o1SowNqbE2KSMio2NxPHPVSyr9B5MTESfu7rc
uRSJSRS3MxWXu0DVjhQPnyLPN8s8T5RFcetWaX3120GBlaf8OTjQlzO767DW
UouoHbXZ5l6bO0cbcCOyPiV36lJytx7FsQ0ID7OX82dlie+7fl3+jcqTS3ov
F//HHKq3hXe6Q40e4tieJyu8yjxP+p3TRfvLiU8Qc7R+wrY9UMTcJTU1mwlm
7bGeWB1XC3VmT6iO91oNxo/QwHWZJgF26oS4teX8z1ncvJ3Lo6x0AtZMpsTI
qNy4JJsUL10nONqI9/BHgkm8y2p0EzYTdaW2AQXB4WW5ElNQDpgoHtMRqhmj
7PEV2ZmZOM92ZX0jQ2wadWZ545YsaquJzbjqLJ5WnXmTauDkEsCVa0l4uDpw
4qdILhkZlitXbm4ujF8pkluUcmn2Ai1xrPWxSNMX/ciqMlxpgQcETydxrYNg
F8fqhhT4hnAzRYGXV4yoa3c44H8R697OLNPui5VWMxbV+ZALUYns2h6In50u
AWGuPGjeqVy5ZJtlKVCOWizKaQQaYpyhIephNVEnTReRm5FXhuuRGPv/Os4C
qgiuKp1QdptATnIqD5NymGl5m69nx3DhRh7bjhbgE5SAy5IzeFqeIlFcD/J1
JsSpCaG7nLjXwqDcueR+ICFNjKdEv6EubKVuLMZUQ8iLTX6mfaVliPaVnk5J
MzHG0hLt6/od+dqZ6DT2HE7m3KV0Hok8ew+nsm1fKtsPZeG/8xF343KIiDjJ
WptRhEWEcre10VvhkpS/V/TzNYTNNA3JP3z+mesSV0pKqd+jwHcnRdZ+T6+F
bItn+Zo7RJ1Nlc+jf85gS3gy4REpbNqWxJHjKcTGZXD8dCqXY37kln7Xt8Yl
qbjfJIoHz3vuNYkrI+P5991/kIGL7wPOXUzlamweLsGphOxIYrOk7UkEbE14
mvf0pYPcbPN2uR6fvE3R2Wffyb9z7T2UJOthQubTdKnMPsEJHDmZy95zhfgu
PoiT9U84+GXhvCETl42ZuPqnEX3xPqejorjwy4+Cq8tb5XqZJC5nn4e4+sQT
ECrqY1YOjq53GTbuGsvXxWHjfQbvUau4o2FG4OqVOPkOwtVtEO4rB+GzwQVb
+29o+H4T/jNnEilv2V5/xrX/SCbhBwtxcT9Ez4+64OK0iEnfJTJx2i327+rF
npmDCbdZh4tXS44MacjmATpYWrThoNskAj8bQb1WJlTTqkugdvn386/CdeTo
XYaPnIjO+3r0GTAGT9cB2DucYsw3D9kRvAKfzcPxcK/D5V7iPa9mgp9JI5w2
zMHPvAUKdRNsRpqj/m4D6mo0oFhFuIrFeK59r8GYfvIdDs7eBGxsj53RB2xy
sWLkmBQ8vH2JmKpNepN24mu6kaytj+Xcrmzx+TfWS9QIH9GYvLrDGDJsImqa
dVSHy8iYo3qfEWwRya6dH+H3XQ1mVpmB+RJLZs2/huWavVxo25x4tQ+5J8Yj
Owwb4+D2b5yW98NiijqWS2pyw0CPWx2notdrgMpwlQiuiG52Yhxkzgavarg0
M8B+7lXcPX2wtj6Alc0p+nV/TzxfkypqdejYVo39W8dhahrASoseLJtVhSVz
6/CgqQGeTUeoTPuS5k5uvisJ2KDB+r7NWaW/Hjt/BXYrNmFrtYUlVmcZPrgx
5jPeo2PH+qL9LcBqiQ0ebpE4Ol/E5vuG2MzVxLeJPg4DW6sQlzF+frVYM0AX
uzqtmLPQj8lz07C1DmWlVSjLrS/ww+a6bHOrTWRwM1avjWHd2g1YLNzK5DnJ
LFjgjKNOS6w+b0lgUFOV4nLo1oyNTVowd2YNls5rxnqXG3h7HGDJQisGDJxC
B/2afD9ZmwlftMZ21VXs1/iwwmozluvTWf7BUuyHfkBIUH3c/bzleq0SXKIc
Prqfk9q8HRaza2E5qyqLZg1k6FA/IncOxaiTmmhXUvt6lxGD9Vhnfx5b2x3Y
rfPF7ttj2Ldpi5+vFkGhaznXa4XK2EspuNp068u9jhOINfkAi6UazBxfFddV
A1hl/zlbDOsTK/rBRKGYru1Y5X6QWQsuM3eeJdPVvsLLQovdgj9wfiQ/6Jup
jL0kLrVq2owZ/g1P6vZn9xc6mJurEew5Fst5HYjXbiUe35n7ol/YPa0BQZs2
YzY2mc0O5th1aSb6m46sW+eNaf9pGHwyUra/KnBJ5dB8px4atevjNnIWv6q3
xd28OY7e09nYs57sGzjevSl2TnXxCBhGqL8t4ycnYG8fgbNjb/r0NaNeo7YM
G7OQqAtJYvyiGlxSvfFWb0MV9Zo01TMgbKApO9Z9xerFzQgxrc2egbVY79GY
/bYr2TfjEw6E9xH18A7zF8fj5Tobo659cHSPYk9kIRFHU1WKK65lB76cPom6
detj7TAFDy8HHK36i/eTKfaeA9hqZ8MDjUH4fbmW1RuiWeMez4RZN3H0vENG
dg4hOzPxCXoo5jUPVIrrShtDoq7+wMnT54k+n4D7hnTcpHmWT7aYaylwtblE
2JpIjt0s4PSFPPxCEtmyK+XpM+4nZRNxLFnWi7iKzsRRdDLmrXJda9+d4z/v
f5q2VZrr70sjbHcKW3YkE7Ink7upCq5cTRN1LpaH8X/MP3PSHpV93gu4igfP
pfiTSW+d6/zNoxyLShdz5iyioh+Jub5gO5Am6lgyFy9nyHmjLqRj7Rgn5tZ/
+H5+nbSaopWlMT2SX+t5/Xz+oWh5PRENI9nf8ra4brQ2ZvO+LXiuH0vUqWju
xikIO5THoTP5hAm77Y8sXSs7dTaViEjBeSldPs87ega0+0HjoShi4sh6jr0k
/xf/GlzqD5P8Ynqmsp/srXA178SmnasI92/Fnu3+JKdk4zHvMN4Lj4k5/z1C
jxRx+W4eX86KZablPZIyclDcjKGk1efwTk+o0Rtl7ylkx8WX4ZL8lAyyKPVb
Sv5LyY9Z1Qjl6MWlsWflyFVsaMxt3Y74bnFio2NzDh8M5/yJWJY20MO2UXPM
NXqxussKDjif4ND2WwT73uL2w0wKNu0Sv3+30nhGyQ5aH5Oz/YcyXJJfWfIv
y35mrd/8zpL/WfJDf71S9kuXJ9fZzkb8eOUkHp6u3LiVzuo1rmJeUhPbRZqs
FUfrLjos122Hs25PPPV64LfYV773yfglwl5dZa7Hs5ye6TcKgnfJ6wHyuoC0
PiCtE0hc77RFudS+zNrOmx9vGBHqOku0jSzZb331eioBLvpstK+Fm602cydq
4+tUm6nj6+CyTIelU7WY8s0gUlJ+8xE3MaW43dgX9ofS+o20jkONnqXrOtU/
pHiS+TOxWm+aS1qvyj1/nsSHGSQlZbJbzJufJNQm/049Hse+x91oHe4LBbm+
z9m9DVm6QIeju5vi67uZpNQcMrz2kLHjBClp2fJz/nf9S17bGT5F2KwDks+n
uN1geV2uvPuNojVrfluv/G/9hbVKo/+9x1h+zvPWK3Nvx0GdrvK6aeHhk8//
fd8w19uScpGjvM79wnpTSbmkeAQpLuH/G9efqbJw5d9LK43rkeN7ElEkZchx
P/lX4sW50OV4slMzKh0XZgtL47CkeCz9nhR6B8txWuj3LY3b0uuKFMdV2bik
eDnlyBnyeLdotS+K6EtyXJ0UX4eOIYW2znLcXWXjkqRIy4FGXeW4x6f1MyBC
joss7/dyeevJ6OlynOpTO3rvlONYpXjWyswlxRNTq7UcXyyf23rLccdS/HFl
5pLiv6U4cOW335MfnwEN+oCRmbwfozJzyTZyCpTj9+U4fmmO0m20HAdf2bnk
GGodMQfTNindf2EwqNLXQ0nSvhhpf4zSwobC7ZGiffUXXJXcXlJc3VgbaGgs
72vKDw4W7WtIpW9f0n4zqjTnsX/p/roCZ3/oPLDycmVlibJLewbHUDJ65tP0
Aq8wwTXk2fjOSsKldNtPySgxRlRrKe/rlPZ35p+9Qkn/GfK+T2n/Z+7t+L/E
9ft+WFWQtN9W3ncr+auq6sr7caV9uVRtWbpPV7M9eSd/+j3/S/fD7t+/f3pF
87ymhr2ES1uymcSmSnZ7maRyxsTEfFEK8Xwu6d9vbLoSXyWQVE7tPwBexPWP
/lHF6P8AQosktA==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1:eJztmwlYVdXagA+DoqnhTJpDiBNq/3VAzVuZNqu3xDGta6EGopmC1wEVUxMc
kFFRYlBQUGQQmbzOOJeiaA7lNa9ZKsoM5wAHEM5+71qbTP1L/8qLwP/0PHxs
1mLvddZ71trfWusbLCfNHOlgrNFo/lFP/Bo5cd7gWbMmzh9lKgqvzp9tP8lE
1grpJ0RWgvj5U/6UGiWVfxQUFNgKOSuEWiCyn7aVfX841+XLl8fVgL7+EbF9
GJdQIw0zMjK+lfcxdJKoaimkFzTpTOn3WShvjhNlC6jbT1wtUYL2VDfLA+P2
CK72d+8zhMSjvOOIYtoJg/NyCjPyKNl5CKXvOyhmXTHMD6Dk9JXqZnlAHsHV
+f777uxLxdC+L8Xf56pl3c1bKN0GUuYaVO0Mj8W1fQ+0607x+atqWRlkS4X1
a+hydNXO8Hhc+1Dadqfoeg76yFh4uiP6xFPV3v/H5orZjdKhJyUXr6O06ECZ
3efV3vf/BlfZjr1g/jzYSD3YgHInz2rv+39lvBL3o2g6oRh1wPC6A0r73hRe
u13t/X9srqQUUd2K8rcnUZhdhPJUG0p9NlZ7/x+ba8celDY2FH1zSy0bbB0o
7zmo2vv/2FwxySjWL1OcXayW9UnHMZhbUnzgRLUzPA5XWcoxDF36UVxQ/HNd
RddBVAyZWO0Mf5SraN9Ryt38oWUPShL3osvMofDQUQyjpqE06EpRVDxF335f
7Sy/lwvLYSgtrVBad8HQuT+lp74Xa/QLGFp1RrEQOlJcDWtiqp3l93KV7L9A
SfIp9Pu/puTgRYoy8tHvOYN+Zyr6vWmU7DqD7mp6tbP8Xq7aKL+VS6fTUXTu
XxTmatWyVqul6NL36LS1d99blJ2PYj8DpVMPlHfHossroHzydJQevakYZYfu
Vma1c/wRLuUzL1HVREgXsY9qTsUnq1DqCz0izskGUV/m4vVzeyVr1kCfPig2
fTEIuXe1+U1iUK+Vz9G3r9peVXEZBo4VDG2EdEUx+YtgEedmjbUodxfSmbIh
k++1J/qiO3AY3aYEcm9mUugXytWdx/H1foMfvmrIijmNyDvXnGD3phwIf5Yf
jzYj3KsxOd80Y4v/S5y9cJ/+OXJMZa0yrk9cRf9biGrBY2QlmLqqXAZjwWVs
RantrJ/bU7/r1n9FMe1G+WC59++I0m4ACXEnmDrBnGljjFk81YyPRxgzd2ID
Fn6swXm8hqkftiRux0UOH/Dj8PHvSL8l2svNVdurKq6Sw2dRmnUV1c8Jri4q
lyKvRt3E360pCUm4j0vMIzMxXzXthbQV0kGwd6EgK5fVazcw/n07vFYvZs6c
pcyePYsXX7Glu3U3Ppoei9uaHAJ8xvOZ14+4r7lKYmJSlXJJ3Wewc0bapBST
/7k3Xpp2GNoOQHsr9x6XmIcVvcQ6Lr8D8X/5DlbYjFb/988DhcxclM+JtCKm
uBQwb1URwdvL8QnNw9UnF6fF1wjfsIwtCSV84vodgYErqpRLiv7MdygNxRw0
EnsLyWYq3jPTdpS6RzzQnuQqjhbfs0kHlUmp052iQye4mall4eqbjJ95jcTd
mTh/fp2QqAx2HsrBe2MWCft0XLlyCg8PR/bvDyY+PpZb4pmq5pJS7rhccIl9
k2lvMQ/FOPR5V+j8wl9wyWuZ7ZRKneK4TC1fTy8gYNMtLv4rj+jELK7fqrx/
//E8VgffZk3obW5n5ROfEMYyl2dZ7DJAPPNkuArTszFYDVL1osG8G/q4Y79o
7y6X9so1KnqPR5uRpZZ3/DOL+R63SDmajYtnFhcu5fPjjQIW+94mcGsm68Iz
+PJMMXt3T8d7+TP4ePcnPSPviXBJKfUME2PVkrK/zaRAq30olyrZBWSL6/bk
LNaH3Wahbx7x58rYHfcN2/fl4eKVx7zl2SzzvcGi1ZksWP0lG17vwfZpz7Jp
uBX+fhFPjEsr+lox4O8UfnnhV9u7nyv1TBIbwnYQlVwkdEEOXkuPETw5kktN
BxM5PBjnRRdY9rktnmu3sMA9l5ikdHq1e4N6Gg2NNMaYGjUSc73q1q//LSWn
r6s68mFc+QVa4qOccJ/TjMWzmhO15wQRO4s5HBSHTuh+NFZkiPc0eK4lAWs6
8cXGqyTv1RO0/jPMW4wVn70AjfFUcZ39RLkeJZJrc4Atn880Y+4MM1wd6rFp
xFBik/Lwj8vhdrfXKDJ+jo2OzYnY2JwNgcuISdCzNeoQY942xeH9gYwZ58qn
DpOY9KEThhrCZbDpw+IZdVk4xQy30c34sfFz6vhEOW9m/d4SkicuIWZCYyIi
zFno3Jx1AUcI3KTHfdEwHMaYMO0dY9JG1sWmryuW7cNrDlef3sy1r4PvvNbE
L2pO4ohnOG73KbsSzos1K4+gyN1sDDRnyZyn8Oz8MlujC9m0NY0pY+viMNqU
D98z4QcLK0KcHHmmY6iYh09Gb/wWruBV5kQFNybQpylrQ9tyoyBFfR9XB+ez
Yu23zF/Qki31m5P35my2ivfKbtIKPhhqhNMHdRn5rimXLDuT5HsR5/kras54
iXkYF2JGUmRDVno2I2iUNWPfP42nfzquqy6xcWcO29oMUOfmyQle+GwTe6Yp
Y3CeYMSE4XWYMKwO2S26E+19msU+N56Ynv+/RO57vwheRcinY9lp1ZTTmoFY
94piwnu9WLFiEWsjSnHrP5RQm0asnBFC7G49qxcNZPJIE0bZGuP1qjmY9iTS
9yRL/G7VIK6+eEeWccohSDTTjO+snsN+ch3ee0PD8iVOYi9VyuxlQ3ltlAb/
jRvZEF4s1oL+2I/WMGaIhkwLS/FcT2LXfcP6zboaxbV2Ux4npvmJva/Qd/b1
GfaWEXPsTQheP5fte/Q4vjqEpa/UY9U/QtgUU8x0u568PsiSIe0WUiD2lEfa
WhG4OoSVAYnqWbumcPlH6zk72ZebncwZPlro7nF1cXEwxWOlB94RJWR0H4L0
tUd+6MXGXcXMmhvGR9NOMaBDKNveboJvQBMSQhsTHdi8BukNG3y3pHFmQgjH
+5kxaqwJCxzq8sEwU1wWJxKVkEtFYxvWNWqMu9cUsX/KIyRSrz577MRsNoc0
IuaLp0kONcd3SVPB1adGcMn1ZpSjG2kjpnG0V33+ZmvCZ1NNmDreQpyzbhDt
lsr6uubMd2lEdOzbrA3PZpF3OhfPXmfHzAmEuzVhm3sz/D+zwMmuXo3i0rQ4
z8yXbUkdbMLoEaY42xmzzseRreIc7DZnLbPt6xEd3YJ4p25s9T+H5zYte1+0
V+fmkRYd8HyvOTMn1GXW5Ho1Zx6KfkybOpnpTh+wYm4/sY8wY+Tr9YmIOUew
mG/+viMIC21ItHML8o17cG1JCCG7izkYsJvT1m3x/uBp7CfWYaadGZ7LR9UY
vVHR24aGrVxo0moWGtP1vPZqF4KC3AkJLyUs4ixf+DUlbt5TFBm1Ex/TlTyL
gSQdzCD+QDEefg7MmKRhoWMTggOmk5ld8FA9L/cvJaeuP0Gu3vLZn+W1QcPZ
laIlKELLurWzCVz3EssX7eKi5Ui+bfQKsUOXEBtxnqAtOaQcy8R1wTj2Hbnn
m3nYeBUdP0/FC39Xz4NPgkt+v3MHvUXIixZssmmNx7AxzBNnfVeP2/gEfsvn
vuksC6vgSOxZDom9cMjRO+K8nEFIRLpgyyQ9W5zr8irbys3N/3UuMVZlw2aq
53Z5fn8SXNLem5oaToT/M0QFtCH15BYSD5SxeXuWul6vDc8jI7OApJR8/MKy
SdybxQLB/FVapa2u8KszGF6qtB/n5//6eOnjjmJ4Wtqbu6j2Fml3qfLxElxp
Z06xcHY7XF26cvNmOodTCwWD4ArP4YeblefsIydzST6Yy5enc9mWmKUyqPN4
8EQw6kvZAv9fnYfS/mXo/U6lDc+0t2ofK5/i/kS4rvz7BolxH7Ju/UfEbfcg
S8ytsJhs1m3N5fwlsQ5vzWLbjky2JWXivPS60P+V/hh9SDQYPy8+Xki9fhQc
TvuF3ih1i1Dtlqr9UtoxjTqrdk1p36xqrtAt+1nmX0by3m/w83Zh+ZoC/MSZ
OCxBIXRHBQ4LC3HzL2TnYT3287VC72nRZmWitB4kPrqzkG5CrCl9w/GB8dKl
56j2ZdXOrNqbu6r2Z2mHrrCb9YDNpSrOKX7rfJizSo/HmhTW+01jvl8Fb7yz
hP4vj2fKp+54+4QStjmGrVsicZq1mpSTP1CY9rU4n/RA+jYwkr6ALpQ36i/W
w3tcJSHxqj9A+gWUn/wE0l8g/QbSf1By+OsqHa9c8a6cSNMSHhnNlcsxLHWL
Ye7HGkYO0oh9vYb3h9VnyjhzPrJtwZQxYg2eMYJrpzPhqZ5g0h3Dm5MEozVl
z494YLxKbZ1V/43049wdL+nfkd+F9PdIv09VchWmpFCQn6+WDx36ilCfVqR/
VZ+59mZkfv0UK53rcWhLA/aJPXu4ZwNOJDXDw2clObu/RCfGJPd2DtqoXehi
Ex7wf0k/m7SNS79bJVcn1R+n+uU0bVQ/XVVxqf5K6Svqc1f6qP7L++VhdfJ+
fnoOVfo84K+UflHpH1V1Yf2OVExfpfpP5ZyV/lTpV60qrqoU6cc2jLZDeb43
5ZNnqH5u6e9W/d4OThRm59dKLpVNq1PjEO7qPhmfIOMUZLzC/ffVNq7fKrWF
S/fvm2pcj37vafTJJ9V4n6Lb+ZSkXEC//ywlyalqXFBt4zL4RaO0EvrPoiMG
eW37AqWpVzF07ifqu6jxWzKOq7ZxyXeqKCpBjZ+TcXQynk7G1cn4Oiy6U+7u
r8bd1Tauu1IxdCIV1vfiVIvzizF0Ffvkg8cfuK+2ccn4VMPTluIdq+SQ8asy
jvVO7M5azSVFxhXL+GJ1fl5MV+OO78TvrfVcMg5cxoPLuPDyt8R5TdOKO8kH
az2XjNuX8fvK6/aVeyqxT7yTdKDWc6lz0UnG2DWozL9o/Dx3Evb9v+Aqs1uq
5smo+TJWPYXeeDCvrjZy6RNSwbwj+qjtFP2YLdboHtyJ21+ruWS+WYX1qyiD
R6jl4nNX1bw0mRdUm7nKFgaqeYK6m5U5P8VXc9Q8wjv7U2sll8zfNMxfr+Zz
yrzO0p0H1TxPg5O7mvcp8z9lHuhv4bqbD1sTRAncjbTPVObfWmB4axylVzOF
LuyEmqcr83WH/hyP+8h82OTk5KnVzfMHZfgjuBrKMZNsNWncHiWyn5cvX36v
EuLXueSvn9jaS75aILKfDe8BPIzrT/lTqkf+A6EKunE=
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
nYv+/M42jvgGgVA7pf4f4E1cf8lf0j/yLzR6v4s=
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
fgyzCSgfB0T9NHwOMBnXK72SevRfFhNneA==
          "], "Byte", ColorSpace -> 
          "RGB", Interleaving -> True], 
         Image[CompressedData["
1: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
DyAW12mdljb6G92LG1Q=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1:eJztmwtQVNcZxxGWp4CkTWvbNCXptBjyUAFZRRARfCSpPKRmmppJJyJNRZPR
ILRqJ6ZxYhStabTFGYw6k5mEJuYxJZLQx9CZksmkSX1MbdNkVTAaEbSxYZe9
u+zj3n+/75wdlbBseOx6780445+9d3c5fD+/c77vnPOde2vVmsqHo6OiotYl
0I/K5b+YV1u7fMMPLXRTvKHup1Ux/C7JSuI3Afp3XddlKMmLvr6+CtIxEkwg
trNC2j48l81mu98Ato5FFcNxURhJ7u3t/c/nf0fpOgttw2a43jumt+0h/RaC
Kz3Y7yiHOoD4dPif3KW37SEVgisj2Pc9DfvpY+KaX6O77eHk0u5fDe17xdCm
LYHSe0l3+8PG9Z2Z8D/XAm3uYijth3W3PxxcysdngLRcKLZz0BY8APe+g7rb
Hw6ugTf+DC2vFHa7Hd7SFdB+tlF3+8PCtXkntLIq9BGXb1sjkFmsu/3j5WIf
aQ+tgWdFvbh3dxwBEnPQf65Hd4ZxcfXZgaJyeLcfgNPRB+eF/0KbXoaBV9p1
ZxgPl6PnIpCUA2SUAMWlQH45kJwPzy/36s4wHi5Pewe05Cy4tjWTnodr+wvw
5T8Abcmjoo/qzTEWLhH/tlOcKFg66HcHmluBO+41LZe69XfAt63AbXnwvXpI
cDjOdwPVPwfiboVWtw0Dh0/qzjJaLn9FPXz3rYevvBb+TfsFl/1UF3yV9F7V
FvjvqYOr47juLKPlMqNGwyX8dNVY+vy9kTRSLqWlDeqPq6HWrIOz8wyUT7qh
rt0EtWotlL8bb405Ei7X+/8CbswGYqbQR7fA/9hv4K9+nK7pPu4uYMoS9H94
VnzXvXs3kEN5buZMIC9vfMrNFe1Figs7eS15G5AwG4ilvzd5Hs3rCyhPk76x
kD6bBV/jW/K7ZIvjeHhiSP877wAzZkSMS2t6ld7KBCxZJPJFzDSaG+YCKcT5
lbn0mRXqnrbLXGHrT5cujbm9kXD1284C6UXABGKLm0F+IqYkek2eJdluqoTz
n53h5xpHeyONG94Nz9LbGcBE8k8K9cVkGj9pc4Xv/Ct3w+FwmJLLcZ7mvRmL
qB9SH0yySq4E8tnkBXCc7h63HXpxsQaa36K4kSn7HvfB+Bx4nzkYFjv05GKp
C1cRG8V2y1RoP6iHw94f0g7O264/vQv1qf1wtXYMyeP9n30G5Q/tUJpeh3Lk
A924XMc7gZtpXH2tEMrRrpB29F+8AP+qzcDXac2WUkyvC+h+Cxyf/k9+/sEp
qKW11N495P/5lAfL4Hl6ny5cvLfhWd8AddUOcR2Ky1+1nnxLsTORYukk4rqB
XlOKKAbtEX5TF9bRGCXmb1IOvIGUWkh5owgDv37+2nPx//OZXrg/6g05HtwH
28hmynUWip0J+VK0voYlX/jF3f4utEnko4mkSeT/ZGJOKxLXWkY55ZbT15wr
ZHsBO7ByIzUzlfIdccVR7IybLV/jiSs1H6p1GfmSeJLmSa7EQjl/YTZi9Dz7
ijG57l5BefxOsp1YYikvxPA8JevKddRdkiuBeJJ5fkbxdSJxpcwhRrqv3mpM
rvseoWbukPMuVjTPwaYH7rPlnCw2X/IkELuFlMj5ntii6bq2yZBc/q1Ncq4c
zeuA6TJ+MEtMtvRbNOeK2VfGnfAjz9HoOq0EAy91GJLL+eFp4LsF0mfMYiGb
Y7MkI8+bJ9wu/cLjL3Gm7K9i/M2ClrUMjkCtxmhcLN+aLWQ/rdFimSmwDmCf
RU8N+M4q+yFzxQXGF/VX38a9QdszCpdy/ATwVbJ5AvfDbCkeWxxPRAzhflgg
40Qc9b846qs3LUZ/5/jnm5HkEuOs5ldynFlyA7Ej4DueP4s+WCDXBRMpvqfm
Ud77S8j2jMLl6OkF7lwsx1mcNcBEirdKH7G/0ijWR+fCv3rHF7ZnFC6W69Df
yH4eTwGfcYzkMRdPfkotkWvvaT+Bs3toXdfIXCxf7TNy/mGxyvjIXEnzRUzH
5BK42oPvaRmdS9SZCh+iprNkDOTxllgixpXvqd+Puj2jcLF4fSX2eWI4T80W
8yh1UX3IvVUzcLE8u5plvuL5+7eWQjl8akztuT/qoXXF8LXSa83F/VGb+yjl
sFx4nxi+/4Vsj9duNTvEOjDYGlAPLtEf3z5GbCtg774wpvaUI51ivc7rdl6/
G4WLx5P7aHB7vqg93k/R7l0n9ld4n0VdtNowXONpz7vzZbEPdnlPNvZ2DDS3
mZrL0dVNuY5yXuIMuX/J+5i8pvv+IrG/aUYu3k/2r9wl1wQ8n2Qu3nfm/eeo
DLEfbUYu57FTog6A1MCebFKgTsD1guhMUT/gOoLZuNTGNnDdRuR1Hlc8pxTr
uRy5Vo3KhNb0WkS5lLY2OE6cgOPkSSm+vvp+hFJaWi7Xv3yNb4LrbKLeJvYK
5sg6HNfjeO7CdaydByLGJeqVZEtYlJNzuV7J9VCui4r6aNQU+B/eBP9jPJe+
RdZRb8yG6/1/R4wrkuI6Ntez1bVPQDl3XtS5ud6tLquG8sYfB/cbE3GxRnom
wWxcI5VZuPg8j+/uOnirtohzPvaTXbBTTvM9vk+cA/ItXQ9/eb3puPj8lVrX
IM5j8bksPp/F/Y/Pa2EKxcmbrVC3/tZ0XCzm4PNzAy+9ObjP5VfCu2PPoHFm
Ni4+7+ib86A4/yjOQW57EVpKNjx/fXswq4m4WHw+FSkF5KMKeW6Vz68m5cDR
G9l5b6TF54kxvRTOi5/C2W+Ht+EAMK9crMPNzMXnv9k/fB5c+K+qDtrytUNy
mNm4hM2ZxfA1NMrxVrZcnOsf8h0TcvFzFt6yahkf80rFcxhfBi73cy9Dm/8g
FNsn8nmZj88O+Y4ZuZT2f0ArXAz/3hZo6bOC91UzcvVcgjZ1iXwObdkjXxou
lr+kBvzcoGf7gaCfm5bryV3iOU+ltWPUXMGehzWKXO8dFc/l8vO5QT4P+Txs
a2trjd72j1HlIbiS2WfMZmS/XS2202az/UhCBOfiHwG2dOYzgdjO5CsAw3Fd
13Xpo/8DTSaTPw==
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True], 
         Image[CompressedData["
1:eJztm+drFGkYwDWJempsiB/snEoEK6IGPyhyB3Y0MRHvBFuiiQZLNDmMwYK9
d+yKvX2wG7EgothrRDS69t77P/Dc/h5vcpvJ7OaS7GZmjkCe7OyU5fnNO+9T
3/k1MTUuOaxMmTLpv3j/xSVk/JaWlpAZH+H98nvmX0mJ4ez1SrRX2Cni/SuV
UnGU/Nz49u1brFeyvSIuEPSM/am7fy6Px/OnA3QtisT64/Kakch3797lmK9Z
t26dVKtWTZ49e2a37gHHLQBXQ6trxo0bJ1WrVpXjx4/brXtACcAVZT73x48f
EhMTwzGZPXu27boHi+v9+/fStm1badOmjQwZMkS+f/9uu/7B4Hrw4IHUr19f
Dhw4IN27d5fPnz/brn8wuPbu3SsNGjQQrz3ROfb8+XPb9Q8G15gxYyQ2Nla3
mzVrJtu2bbNd/2Bw9ejRQ+0h2yNGjJDBgwfbrn9xubCFXbt2lc2bN+v3tWvX
Srdu3XS/3QzF4Xrx4oW0bt1aNm7cKJcuXZIVK1ZIy5Yt5eXLl7YzFIfr7t27
6reaNGkirVq1kkaNGun3e/fu2c5QHK6tW7eqLTx06JAcPnxYTp48KbVr15bl
y5fbzlBULvzvqFGjZNiwYXmuxT726dPHkf75v3AtXLhQKlasKFFRUbl248SJ
ExIdHa37R44caTtHUbh27NghM2fOlIkTJ6pvZt+RI0ckMzNTFixYIJMnT7ad
oyhcbpSicDlxPgWDC3vx6NEj23UPJteFCxekcuXKMnr0aMvfIy8jl2nfvn1Q
ZM6cOSXC1aVLF/XHNWrUUJtoPo4uN27ckK9fvxb7nt+5c0fatWsXcq65c+dK
eHi4ciHEVV++fMnHFcznKdRc5FrEFwYTUr58eVm6dKmruVJTU/MwGUK8+PTp
U1dyke/z+1ZcyJIlSwrF9eHDh3zjbAcXNp382B/X9OnTC8X18OFDmT9/vnz8
+NFWrk+fPknPnj2lXLlyGiMmJCRojhkZGSmNGzdWu1UYrp07d0pcXJzmcXZy
IU+ePJGpU6fKrVu3ZNq0aXL27FlZuXJlPt0K4mLsuS916tSRCRMm6D2zk8sQ
uKpXr+43hg/Exbwifs7IyNB6OLnPqlWrHMG1bNky6dWrl8THx1vWAPxxYXvm
zZsnnTt3lsWLF2sti/yHmIx8wW6ugsSK682bN8qC/+N+YGeIt8jfVq9erfXj
3bt3W8YoTuXCn0+ZMkWqVKki/fv31/o+dSz84fDhw9V+ULurV6+erFmzJp+N
dCLX69evZdKkSWo38QcDBw6UFi1aKBeM2A1sEHVxjtetW1fnm29s5jQudNuw
YYPaGN94Ep5OnTpJ7969lYu8gFi6bNmyeg5+5NixY47lQjfGxezD4aFOzDM3
a9YsSz+flJQkHo/HkVzr16/PrTGaJSUlReMNf7FZhw4d5Pz5847kwj8RE1vp
XbNmTbXxYWFhlsc7duzoWK5z585Jv379LPUeMGCAjif6m4/Bmp6entu/dhoX
Qi0O3akbkI/WqlVLBg0apLVj6vubNm3SOUgvjePYmL59+8rly5dzf8OJXAg6
0nshfiLeJc7ct2+f2sBr165pzEwvY8aMGbJlyxbtA/he71Qus7x9+1Z70xER
EXnyG3/iBi56L9SGiT2YS/QxiKMCrQVxIhex7unTp/W5W7RokcbLFSpUyGMn
mFvEIcQZWVlZcvHixTxxohO56K8TG5KXEA8OHTpUc6/k5GT1veQ6PJPsJ0bk
XPKFgrjII4ifuU/++lSh4iJ/JN/nGWPdx+3bt3WdBMfIw/h8/PixftIL5Xye
U+OcgsaLe4L9JB8sSS5qpuRbxL3kWnv27NH+C/kJNVxsJPeafgzf9+/fL2lp
aZqTk4cba0PMXNSbOX7mzBm1O9nZ2XoNdrYkuF69eqW2zxBjrQfjdv/+fY3/
0J28hE9ifz65DjFqd75cXEs9BX+In+CZJk6m7kL9xbemECou8khiJfzv0aNH
ZdeuXWobuNeMD+OEPWHMGLuDBw/quYwxfo5xMHOR0/iriTVv3jxPLyRUXDk5
OXp/eR6xcTwn+Gj8LnOCvuepU6fk+vXrWvthXl25ckVu3ryp/tpqflGn9MdF
r8N3XVNJ++XCii8Xz6a/WHr8+PElMr9CwYVQJ6Yv4MtEzQ6b6mYu8nDyboOJ
eJk5ab4uFFzB6n9dvXrV0n+xdoT+G1zUna36wsHmokeGLsESf/1K6iLYe/yZ
1fFgc5WUYNOJzfwddysXEmhdgpu5AombuIg1iVNY90ONgX2s/yFfoGa3fft2
V3IRw1eqVEnr+sZaBOKWpk2b6n7iNjdyMZ9YP0cPxnd/YmKi9px855ubuBDi
ZPoy+DDWQbIekrXv5jXUbuMinsYfU0tm3aoRL/r2gt3IRRzIumKjB0yNjrgq
1PFhqIX139RSqRfzHbtBLGVeF+42LoR+DOv32R47dqzmyuZz3MiFjWA9Cdv0
P63iKTdyUeOi7kidi9oqNZ//Axf5Pu8zwYONp573f+DC/1JPZR0BuYxRj3Q7
F0IdEr/F+01W78i4lYv3O5ljxvtNheGyeh/WKUJtivdyDT9mkoDvw2ZlZaXY
rX8RJSYAVyRjBpuTx81X0NPj8fzxE8Kai3//sDWEzwWCnpH/AvjjKpVSsUf+
BoCzN4Y=
          "], "Byte", ColorSpace -> "RGB", Interleaving -> 
          True]}; $CellContext`catName = {
        "All", "Premium", "HighPair", "Strong", "SmallPair", "PotentialFlush",
          "SuitedConnected", "Others"}; $CellContext`catCard = {
        "Any PreFlop Hand", "AA KK AKs AKo", "QQ JJ TT", 
         "AQs AQo AJs AJo KQs KQo KJs KJo QJs QJo", "99 88 77 66 55 44 33 22",
          "AXs KXs (X\[LessEqual]T)", "JTs T9s 98s 87s 76s 65s", 
         "Any Other Hand"}; $CellContext`catNameChoice = 
       Table[$CellContext`i -> Text[
           Style[
            Part[$CellContext`catName, $CellContext`i], 
            Smaller]], {$CellContext`i, 
          
          Length[$CellContext`catName]}]; \
$CellContext`preFlopHandNoConstraint = Flatten[
         Table[{$CellContext`i, $CellContext`j}, {$CellContext`i, 
           52}, {$CellContext`j, $CellContext`i + 1, 52}], 
         1]; $CellContext`premium = Flatten[{
          Table[$CellContext`f1 = 13; $CellContext`f2 = 13; {
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 12; $CellContext`f2 = 12; {
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 13; $CellContext`f2 = 12; {{
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`i]}}, \
{$CellContext`i, 4}], 
          Table[$CellContext`f1 = 13; $CellContext`f2 = 12; {
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 13; $CellContext`f2 = 12; {
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}]}, 
         2]; $CellContext`highPair = Flatten[{
          Table[
           
           Table[$CellContext`f1 = $CellContext`f; $CellContext`f2 = \
$CellContext`f; {
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], {$CellContext`f, 
            9, 11}]}, 3]; $CellContext`strong = Flatten[{
          Table[$CellContext`f1 = 13; $CellContext`f2 = 11; {{
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`i]}}, \
{$CellContext`i, 4}], 
          Table[$CellContext`f1 = 13; $CellContext`f2 = 11; {
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 13; $CellContext`f2 = 11; {
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 13; $CellContext`f2 = 10; {{
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`i]}}, \
{$CellContext`i, 4}], 
          Table[$CellContext`f1 = 13; $CellContext`f2 = 10; {
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 13; $CellContext`f2 = 10; {
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 12; $CellContext`f2 = 11; {{
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`i]}}, \
{$CellContext`i, 4}], 
          Table[$CellContext`f1 = 12; $CellContext`f2 = 11; {
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 12; $CellContext`f2 = 11; {
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 12; $CellContext`f2 = 10; {{
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`i]}}, \
{$CellContext`i, 4}], 
          Table[$CellContext`f1 = 12; $CellContext`f2 = 10; {
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 12; $CellContext`f2 = 10; {
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 11; $CellContext`f2 = 10; {{
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`i]}}, \
{$CellContext`i, 4}], 
          Table[$CellContext`f1 = 11; $CellContext`f2 = 10; {
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], 
          Table[$CellContext`f1 = 11; $CellContext`f2 = 10; {
             $CellContext`deckCardNo[$CellContext`f2, $CellContext`i], 
             $CellContext`deckCardNo[$CellContext`f1, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}]}, 
         2]; $CellContext`smallPair = Flatten[{
          Table[
           
           Table[$CellContext`f1 = $CellContext`f; $CellContext`f2 = \
$CellContext`f; {
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`j]}, \
{$CellContext`i, 4}, {$CellContext`j, $CellContext`i - 1}], {$CellContext`f, 
            8}]}, 3]; $CellContext`potentialFlush = Flatten[{
          Table[
           Table[$CellContext`f1 = 13; $CellContext`f2 = $CellContext`f; {
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`i]}, \
{$CellContext`i, 4}], {$CellContext`f, 9}], 
          Table[
           Table[$CellContext`f1 = 12; $CellContext`f2 = $CellContext`f; {
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`i]}, \
{$CellContext`i, 4}], {$CellContext`f, 9}]}, 2]; $CellContext`suitedConnected = 
       Flatten[{
          Table[
           
           Table[$CellContext`f1 = $CellContext`f + 
              1; $CellContext`f2 = $CellContext`f; {
              $CellContext`deckCardNo[$CellContext`f1, $CellContext`i], 
              $CellContext`deckCardNo[$CellContext`f2, $CellContext`i]}, \
{$CellContext`i, 4}], {$CellContext`f, 4, 9}]}, 2]; $CellContext`premium = 
       Map[Sort, $CellContext`premium, {1}]; $CellContext`highPair = 
       Map[Sort, $CellContext`highPair, {1}]; $CellContext`strong = 
       Map[Sort, $CellContext`strong, {1}]; $CellContext`smallPair = 
       Map[Sort, $CellContext`smallPair, {1}]; $CellContext`potentialFlush = 
       Map[Sort, $CellContext`potentialFlush, {
         1}]; $CellContext`suitedConnected = 
       Map[Sort, $CellContext`suitedConnected, {1}]; $CellContext`other = 
       Complement[$CellContext`preFlopHandNoConstraint, $CellContext`premium, \
$CellContext`highPair, $CellContext`strong, $CellContext`smallPair, \
$CellContext`potentialFlush, $CellContext`suitedConnected]; \
$CellContext`possiblePreFlopHand = {$CellContext`preFlopHandNoConstraint, \
$CellContext`premium, $CellContext`highPair, $CellContext`strong, \
$CellContext`smallPair, $CellContext`potentialFlush, \
$CellContext`suitedConnected, $CellContext`other}; \
$CellContext`nbHandInCategory = 
       Map[Length, $CellContext`possiblePreFlopHand]; \
$CellContext`selectPreFlopHand[
         Pattern[$CellContext`playerStatus, 
          Blank[]], 
         Pattern[$CellContext`tableStatus, 
          Blank[]], 
         Pattern[$CellContext`possiblePreFlopHand, 
          Blank[]]] := Select[$CellContext`possiblePreFlopHand, Not[
          Or[
           MemberQ[#, 
            Part[$CellContext`playerStatus, 1]], 
           MemberQ[#, 
            Part[$CellContext`playerStatus, 2]], 
           MemberQ[#, 
            Part[$CellContext`tableStatus, 1]], 
           MemberQ[#, 
            Part[$CellContext`tableStatus, 2]], 
           MemberQ[#, 
            Part[$CellContext`tableStatus, 3]], 
           MemberQ[#, 
            Part[$CellContext`tableStatus, 4]], 
           MemberQ[#, 
            
            Part[$CellContext`tableStatus, 
             5]]]]& ]; $CellContext`playerTypeBool[
         Pattern[$CellContext`playerType, 
          Blank[]], 
         Pattern[$CellContext`nbOpp, 
          Blank[]]] := Table[
         If[
          MemberQ[
           Part[$CellContext`playerType, $CellContext`i], $CellContext`j], 1, 
          0], {$CellContext`i, $CellContext`nbOpp}, {$CellContext`j, 
          Length[$CellContext`catName]}]; $CellContext`playerHandDet[
         Pattern[$CellContext`playerTypeML, 
          Blank[]], 
         Pattern[$CellContext`playerStatus, 
          Blank[]], 
         Pattern[$CellContext`tableStatus, 
          Blank[]], 
         Pattern[$CellContext`possiblePreFlopHand, 
          Blank[]]] := 
       Module[{$CellContext`ppfh, $CellContext`tableCard, \
$CellContext`tableNbCard}, $CellContext`tableCard = Table[
            If[Part[$CellContext`playerTypeML, $CellContext`i, 1] == 1, 
             Flatten[
              Part[$CellContext`possiblePreFlopHand, 1]], $CellContext`ppfh = 
              Table[{
                 
                 Part[$CellContext`playerTypeML, $CellContext`i, \
$CellContext`j], 
                 $CellContext`selectPreFlopHand[$CellContext`playerStatus, \
$CellContext`tableStatus, 
                  
                  Part[$CellContext`possiblePreFlopHand, $CellContext`j]]}, \
{$CellContext`j, 
                 
                 Length[$CellContext`possiblePreFlopHand]}]; \
$CellContext`ppfh = Select[$CellContext`ppfh, Part[#, 1] == 1& ]; Flatten[
               Union[
                Part[$CellContext`ppfh, All, 2]]]], {$CellContext`i, 
             Length[$CellContext`playerTypeML]}]; $CellContext`tableNbCard = 
          Table[
            Length[
             Flatten[
              Take[$CellContext`tableCard, $CellContext`i]]], {$CellContext`i, 
             Length[$CellContext`tableCard]}]; {
           
           Flatten[$CellContext`tableCard], $CellContext`tableNbCard}]; \
$CellContext`deckPoint[
         Pattern[$CellContext`posDeck, 
          Blank[]]] := 
       Block[{$CellContext`nbFace = 13, $CellContext`nbSuit = 
          4, $CellContext`f, $CellContext`s, $CellContext`c}, $CellContext`f = 
          Min[
            Max[1, 
             
             Round[$CellContext`nbFace Part[$CellContext`posDeck, 1] + 
              0.5]], $CellContext`nbFace]; $CellContext`s = \
$CellContext`nbSuit + 1 - Min[
            Max[1, 
             
             Round[$CellContext`nbSuit Part[$CellContext`posDeck, 2] + 
              0.5]], $CellContext`nbSuit]; $CellContext`c = \
$CellContext`deckCardNo[$CellContext`f, $CellContext`s]]; \
$CellContext`tablePoint[
         Pattern[$CellContext`posTable, 
          Blank[]]] := 
       Block[{$CellContext`nbCard = 5, $CellContext`c}, $CellContext`c = Min[
           Max[1, 
            
            Round[$CellContext`nbCard Part[$CellContext`posTable, 1] + 
             0.5]], $CellContext`nbCard]]; $CellContext`playerCardNoDet[
         Pattern[$CellContext`playerPos, 
          Blank[]]] := 
       Block[{$CellContext`nbCard = 2, $CellContext`c}, $CellContext`c = Min[
           Max[1, 
            
            Round[$CellContext`nbCard Part[$CellContext`playerPos, 1] + 
             0.5]], $CellContext`nbCard]]; $CellContext`tableStatusValid[
         Pattern[$CellContext`tableStatus, 
          Blank[]]] := Module[{$CellContext`output = 0}, If[
           Or[
            And[
            Part[$CellContext`tableStatus, 1] == 0, 
             Part[$CellContext`tableStatus, 2] == 0, 
             Part[$CellContext`tableStatus, 3] == 0, 
             Part[$CellContext`tableStatus, 4] == 0, 
             Part[$CellContext`tableStatus, 5] == 0], 
            And[
            Part[$CellContext`tableStatus, 1] > 0, 
             Part[$CellContext`tableStatus, 2] > 0, 
             Part[$CellContext`tableStatus, 3] > 0, 
             Part[$CellContext`tableStatus, 4] == 0, 
             Part[$CellContext`tableStatus, 5] == 0], 
            And[
            Part[$CellContext`tableStatus, 1] > 0, 
             Part[$CellContext`tableStatus, 2] > 0, 
             Part[$CellContext`tableStatus, 3] > 0, 
             Part[$CellContext`tableStatus, 4] > 0, 
             Part[$CellContext`tableStatus, 5] == 0], 
            And[
            Part[$CellContext`tableStatus, 1] > 0, 
             Part[$CellContext`tableStatus, 2] > 0, 
             Part[$CellContext`tableStatus, 3] > 0, 
             Part[$CellContext`tableStatus, 4] > 0, 
             Part[$CellContext`tableStatus, 5] > 0]], $CellContext`output = 
           1]; $CellContext`output]; $CellContext`playerStatusValid[
         Pattern[$CellContext`playerStatus, 
          Blank[]]] := Module[{$CellContext`test}, $CellContext`test = {
            If[Part[$CellContext`playerStatus, 1] > 0, 1, 0], 
            If[Part[$CellContext`playerStatus, 2] > 0, 1, 0]}; 
         If[Total[$CellContext`test] == 2, 1, 
           0]]; $CellContext`playerTypeValid[
         Pattern[$CellContext`playerType$, 
          Blank[]]] := Module[{$CellContext`test$}, $CellContext`test$ = Table[
            Length[
             
             Part[$CellContext`playerType$, $CellContext`i]], \
{$CellContext`i, $CellContext`nbOpp$$}]; If[
           MemberQ[$CellContext`test$, 0], 0, 
           1]]; $CellContext`stateUpdateStatus[
         Pattern[$CellContext`deckStatus$, 
          Blank[]], 
         Pattern[$CellContext`tableStatus$, 
          Blank[]], 
         Pattern[$CellContext`playerStatus$, 
          Blank[]], 
         Pattern[$CellContext`statusMsg$, 
          Blank[]], 
         Pattern[$CellContext`handEquity$, 
          Blank[]], 
         Pattern[$CellContext`playerType$, 
          Blank[]]] := 
       Module[{$CellContext`statusMsgLocal$ = $CellContext`statusMsg$, \
$CellContext`handEquityLocal$ = $CellContext`handEquity$, \
$CellContext`tableStatusTest$, $CellContext`playerStatusTest$, \
$CellContext`playerTypeTest$, $CellContext`playerTypeML$, \
$CellContext`playerHandML$}, $CellContext`tableStatusTest$ = \
$CellContext`tableStatusValid[$CellContext`tableStatus$]; \
$CellContext`playerStatusTest$ = \
$CellContext`playerStatusValid[$CellContext`playerStatus$]; \
$CellContext`playerTypeTest$ = \
$CellContext`playerTypeValid[$CellContext`playerType$]; If[
           
           Or[$CellContext`tableStatusTest$ == 
            0, $CellContext`playerStatusTest$ == 
            0, $CellContext`playerTypeTest$ == 
            0], $CellContext`statusMsgLocal$ = 
            "Cannot compute equities: Table cards are inconsistent or at \
least one player card is not determined or Opponents' hands are not defined"; \
$CellContext`handEquityLocal$ = {0., 0.}; 
           Null, $CellContext`playerTypeML$ = \
$CellContext`playerTypeBool[$CellContext`playerType$, $CellContext`nbOpp$$]; \
$CellContext`playerHandML$ = \
$CellContext`playerHandDet[$CellContext`playerTypeML$, \
$CellContext`playerStatus$, $CellContext`tableStatus$, \
$CellContext`possiblePreFlopHand]; $CellContext`statusMsgLocal$ = 
            " "; $CellContext`handEquityLocal$ = 
            MyPackageO6E`EquityPreFlopMonteCarloUnderConstraintML[$\
CellContext`deckCardKey, $CellContext`deckCardSuit, \
$CellContext`deckCardFlushKey, $CellContext`flushCheck, \
$CellContext`rankFaceSeven, $CellContext`rankFlushSeven, \
$CellContext`deckStatus$, $CellContext`tableStatus$, \
$CellContext`playerStatus$, $CellContext`nbOpp$$, 
              Part[$CellContext`playerHandML$, 1], 
              Part[$CellContext`playerHandML$, 2]]; 
           Null]; {$CellContext`statusMsgLocal$, \
$CellContext`handEquityLocal$}]; $CellContext`deckUpdateStatus[
         Pattern[$CellContext`deckNo, 
          Blank[]], 
         Pattern[$CellContext`deckStatus, 
          Blank[]], 
         Pattern[$CellContext`deckSelect, 
          Blank[]], 
         Pattern[$CellContext`tableStatus, 
          Blank[]]] := 
       Module[{$CellContext`deckStatusLocal = $CellContext`deckStatus, \
$CellContext`deckSelectLocal = $CellContext`deckSelect, \
$CellContext`tableStatusLocal = $CellContext`tableStatus}, 
         If[$CellContext`deckSelectLocal == 0, 
           If[Part[$CellContext`deckStatusLocal, $CellContext`deckNo] != 
             0, $CellContext`deckSelectLocal = $CellContext`deckNo; 
             Part[$CellContext`deckStatusLocal, $CellContext`deckSelectLocal] = 
              2; Null]; Null, 
           If[$CellContext`deckSelectLocal == $CellContext`deckNo, 
             Part[$CellContext`deckStatusLocal, $CellContext`deckSelectLocal] = 
              1; $CellContext`deckSelectLocal = 0; Null, 
             If[Part[$CellContext`deckStatusLocal, $CellContext`deckNo] != 0, 
               Part[$CellContext`deckStatusLocal, \
$CellContext`deckSelectLocal] = 
                1; $CellContext`deckSelectLocal = $CellContext`deckNo; 
               Part[$CellContext`deckStatusLocal, \
$CellContext`deckSelectLocal] = 2; Null]; Null]; 
           Null]; {$CellContext`deckStatusLocal, \
$CellContext`deckSelectLocal, $CellContext`tableStatusLocal}]; \
$CellContext`tableUpdateStatus[
         Pattern[$CellContext`tableNo, 
          Blank[]], 
         Pattern[$CellContext`deckStatus, 
          Blank[]], 
         Pattern[$CellContext`deckSelect, 
          Blank[]], 
         Pattern[$CellContext`tableStatus, 
          Blank[]]] := 
       Module[{$CellContext`deckStatusLocal = $CellContext`deckStatus, \
$CellContext`deckSelectLocal = $CellContext`deckSelect, \
$CellContext`tableStatusLocal = $CellContext`tableStatus}, 
         If[$CellContext`deckSelectLocal == 0, 
           If[
           Part[$CellContext`tableStatusLocal, $CellContext`tableNo] != 0, 
            Part[$CellContext`deckStatusLocal, 
               Part[$CellContext`tableStatusLocal, $CellContext`tableNo]] = 1; 
            Part[$CellContext`tableStatusLocal, $CellContext`tableNo] = 0; 
            Null], If[
            Part[$CellContext`tableStatusLocal, $CellContext`tableNo] == 0, 
             Part[$CellContext`deckStatusLocal, $CellContext`deckSelectLocal] = 
              0; Part[$CellContext`tableStatusLocal, $CellContext`tableNo] = \
$CellContext`deckSelectLocal; $CellContext`deckSelectLocal = 0; Null, 
             Part[$CellContext`deckStatusLocal, 
                Part[$CellContext`tableStatusLocal, $CellContext`tableNo]] = 
              1; Part[$CellContext`deckStatusLocal, \
$CellContext`deckSelectLocal] = 0; 
             Part[$CellContext`tableStatusLocal, $CellContext`tableNo] = \
$CellContext`deckSelectLocal; $CellContext`deckSelectLocal = 0; Null]; 
           Null]; {$CellContext`deckStatusLocal, \
$CellContext`deckSelectLocal, $CellContext`tableStatusLocal}]; \
$CellContext`playerUpdateStatus[
         Pattern[$CellContext`playerCardNo, 
          Blank[]], 
         Pattern[$CellContext`deckStatus, 
          Blank[]], 
         Pattern[$CellContext`deckSelect, 
          Blank[]], 
         Pattern[$CellContext`playerStatus, 
          Blank[]]] := 
       Module[{$CellContext`deckStatusLocal = $CellContext`deckStatus, \
$CellContext`deckSelectLocal = $CellContext`deckSelect, \
$CellContext`playerStatusLocal = $CellContext`playerStatus}, 
         If[$CellContext`deckSelectLocal == 0, 
           If[
           Part[$CellContext`playerStatusLocal, $CellContext`playerCardNo] != 
            0, Part[$CellContext`deckStatusLocal, 
               
               Part[$CellContext`playerStatusLocal, \
$CellContext`playerCardNo]] = 1; 
            Part[$CellContext`playerStatusLocal, $CellContext`playerCardNo] = 
             0; Null], 
           If[Part[$CellContext`playerStatusLocal, $CellContext`playerCardNo] == 
             0, Part[$CellContext`deckStatusLocal, \
$CellContext`deckSelectLocal] = 0; 
             Part[$CellContext`playerStatusLocal, $CellContext`playerCardNo] = \
$CellContext`deckSelectLocal; $CellContext`deckSelectLocal = 0; Null, 
             Part[$CellContext`deckStatusLocal, 
                
                Part[$CellContext`playerStatusLocal, \
$CellContext`playerCardNo]] = 1; 
             Part[$CellContext`deckStatusLocal, $CellContext`deckSelectLocal] = 
              0; Part[$CellContext`playerStatusLocal, \
$CellContext`playerCardNo] = $CellContext`deckSelectLocal; \
$CellContext`deckSelectLocal = 0; Null]; 
           Null]; {$CellContext`deckStatusLocal, \
$CellContext`deckSelectLocal, $CellContext`playerStatusLocal}]; \
$CellContext`reset[
         Pattern[$CellContext`deckStatus, 
          Blank[]], 
         Pattern[$CellContext`deckSelect, 
          Blank[]], 
         Pattern[$CellContext`tableStatus, 
          Blank[]], 
         Pattern[$CellContext`playerStatus, 
          Blank[]]] := 
       Module[{$CellContext`deckStatusLocal = $CellContext`deckStatus, \
$CellContext`deckSelectLocal = $CellContext`deckSelect, \
$CellContext`tableStatusLocal = $CellContext`tableStatus, \
$CellContext`playerStatusLocal = $CellContext`playerStatus}, \
$CellContext`deckSelectLocal = 0; $CellContext`deckStatusLocal = 
          Table[1, {52}]; $CellContext`tableStatusLocal = 
          Table[0, {5}]; $CellContext`playerStatusLocal = {0, 
           0}; {$CellContext`deckStatusLocal, $CellContext`deckSelectLocal, \
$CellContext`tableStatusLocal, $CellContext`playerStatusLocal}]; \
$CellContext`shuffleFlop[
         Pattern[$CellContext`deckStatus, 
          Blank[]], 
         Pattern[$CellContext`deckSelect, 
          Blank[]], 
         Pattern[$CellContext`tableStatus, 
          Blank[]]] := 
       Module[{$CellContext`deckStatusLocal = $CellContext`deckStatus, \
$CellContext`deckSelectLocal = $CellContext`deckSelect, \
$CellContext`tableStatusLocal = $CellContext`tableStatus, \
$CellContext`deckAvail, $CellContext`randomSample}, 
         If[$CellContext`deckSelectLocal != 0, 
           Part[$CellContext`deckStatusLocal, $CellContext`deckSelectLocal] = 
            1; $CellContext`deckSelectLocal = 0]; Do[
           If[
           Part[$CellContext`tableStatusLocal, $CellContext`i] != 0, 
            Part[$CellContext`deckStatusLocal, 
               Part[$CellContext`tableStatusLocal, $CellContext`i]] = 1; 
            Part[$CellContext`tableStatusLocal, $CellContext`i] = 
             0], {$CellContext`i, 3}]; $CellContext`deckAvail = Union[
            Flatten[
             Position[$CellContext`deckStatusLocal, 1]], 
            Flatten[
             
             Position[$CellContext`deckStatusLocal, 
              2]]]; $CellContext`randomSample = 
          RandomSample[$CellContext`deckAvail, 3]; 
         Do[Part[$CellContext`deckStatusLocal, 
              Part[$CellContext`randomSample, $CellContext`i]] = 0; 
           Part[$CellContext`tableStatusLocal, $CellContext`i] = 
            Part[$CellContext`randomSample, $CellContext`i], {$CellContext`i, 
            3}]; {$CellContext`deckStatusLocal, $CellContext`deckSelectLocal, \
$CellContext`tableStatusLocal}]; $CellContext`shuffleTurn[
         Pattern[$CellContext`deckStatus, 
          Blank[]], 
         Pattern[$CellContext`deckSelect, 
          Blank[]], 
         Pattern[$CellContext`tableStatus, 
          Blank[]]] := 
       Module[{$CellContext`deckStatusLocal = $CellContext`deckStatus, \
$CellContext`deckSelectLocal = $CellContext`deckSelect, \
$CellContext`tableStatusLocal = $CellContext`tableStatus, \
$CellContext`deckAvail, $CellContext`randomSample}, 
         If[$CellContext`deckSelectLocal != 0, 
           Part[$CellContext`deckStatusLocal, $CellContext`deckSelectLocal] = 
            1; $CellContext`deckSelectLocal = 0]; 
         If[Part[$CellContext`tableStatusLocal, 4] != 0, 
           Part[$CellContext`deckStatusLocal, 
              Part[$CellContext`tableStatusLocal, 4]] = 1; 
           Part[$CellContext`tableStatusLocal, 4] = 
            0]; $CellContext`deckAvail = Union[
            Flatten[
             Position[$CellContext`deckStatusLocal, 1]], 
            Flatten[
             
             Position[$CellContext`deckStatusLocal, 
              2]]]; $CellContext`randomSample = 
          RandomChoice[$CellContext`deckAvail]; 
         Part[$CellContext`deckStatusLocal, $CellContext`randomSample] = 0; 
         Part[$CellContext`tableStatusLocal, 
            4] = $CellContext`randomSample; {$CellContext`deckStatusLocal, \
$CellContext`deckSelectLocal, $CellContext`tableStatusLocal}]; \
$CellContext`shuffleRiver[
         Pattern[$CellContext`deckStatus, 
          Blank[]], 
         Pattern[$CellContext`deckSelect, 
          Blank[]], 
         Pattern[$CellContext`tableStatus, 
          Blank[]]] := 
       Module[{$CellContext`deckStatusLocal = $CellContext`deckStatus, \
$CellContext`deckSelectLocal = $CellContext`deckSelect, \
$CellContext`tableStatusLocal = $CellContext`tableStatus, \
$CellContext`deckAvail, $CellContext`randomSample}, 
         If[$CellContext`deckSelectLocal != 0, 
           Part[$CellContext`deckStatusLocal, $CellContext`deckSelectLocal] = 
            1; $CellContext`deckSelectLocal = 0]; 
         If[
          Part[$CellContext`tableStatusLocal, 5] != 0, 
           Part[$CellContext`deckStatusLocal, 
              Part[$CellContext`tableStatusLocal, 5]] = 1; 
           Part[$CellContext`tableStatusLocal, 5] = 
            0]; $CellContext`deckAvail = Union[
            Flatten[
             Position[$CellContext`deckStatusLocal, 1]], 
            Flatten[
             
             Position[$CellContext`deckStatusLocal, 
              2]]]; $CellContext`randomSample = 
          RandomChoice[$CellContext`deckAvail]; 
         Part[$CellContext`deckStatusLocal, $CellContext`randomSample] = 0; 
         Part[$CellContext`tableStatusLocal, 
            5] = $CellContext`randomSample; {$CellContext`deckStatusLocal, \
$CellContext`deckSelectLocal, $CellContext`tableStatusLocal}]; \
$CellContext`shufflePlayer[
         Pattern[$CellContext`deckStatus, 
          Blank[]], 
         Pattern[$CellContext`deckSelect, 
          Blank[]], 
         Pattern[$CellContext`playerStatus, 
          Blank[]]] := 
       Module[{$CellContext`deckStatusLocal = $CellContext`deckStatus, \
$CellContext`deckSelectLocal = $CellContext`deckSelect, \
$CellContext`playerStatusLocal = $CellContext`playerStatus, \
$CellContext`deckAvail, $CellContext`randomSample}, 
         If[$CellContext`deckSelectLocal != 0, 
           Part[$CellContext`deckStatusLocal, $CellContext`deckSelectLocal] = 
            1; $CellContext`deckSelectLocal = 0]; 
         If[Part[$CellContext`playerStatusLocal, 1] != 0, 
           Part[$CellContext`deckStatusLocal, 
              Part[$CellContext`playerStatusLocal, 1]] = 1; 
           Part[$CellContext`playerStatusLocal, 1] = 0]; 
         If[Part[$CellContext`playerStatusLocal, 2] != 0, 
           Part[$CellContext`deckStatusLocal, 
              Part[$CellContext`playerStatusLocal, 2]] = 1; 
           Part[$CellContext`playerStatusLocal, 2] = 
            0]; $CellContext`deckAvail = Union[
            Flatten[
             Position[$CellContext`deckStatusLocal, 1]], 
            Flatten[
             
             Position[$CellContext`deckStatusLocal, 
              2]]]; $CellContext`randomSample = 
          RandomSample[$CellContext`deckAvail, 2]; 
         Part[$CellContext`deckStatusLocal, 
            Part[$CellContext`randomSample, 1]] = 0; 
         Part[$CellContext`playerStatusLocal, 1] = 
          Part[$CellContext`randomSample, 1]; 
         Part[$CellContext`deckStatusLocal, 
            Part[$CellContext`randomSample, 2]] = 0; 
         Part[$CellContext`playerStatusLocal, 2] = 
          Part[$CellContext`randomSample, 
            2]; {$CellContext`deckStatusLocal, $CellContext`deckSelectLocal, \
$CellContext`playerStatusLocal}]; Null); Typeset`initDone$$ = True),
    SynchronousInitialization->False,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]]]
},
Editable->False,
Saveable->False,
WindowSize->{All, All},
WindowMargins->Automatic,
WindowElements->{},
WindowFrameElements->{"CloseBox"},
WindowTitle->"One Player Equity Calculator (Monte Carlo) Assuming Opponents \
PreFlop Hands Type",
ShowCellBracket->False,
CellMargins->0,
Deployed->True,
FrontEndVersion->"8.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (October 5, \
2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1331, 32, 454025, 7753, 1215, InheritFromParent]
}
]
*)

(* End of internal cache information *)
(* NotebookSignature VvDG38kOeFtmgCKpau22K6Ni *)
