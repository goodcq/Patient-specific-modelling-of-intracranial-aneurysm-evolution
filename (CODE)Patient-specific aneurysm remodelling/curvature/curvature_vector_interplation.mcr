#!MC 1200
# Created by Tecplot 360 build 12.2.0.9077
$!VarSet |MFBD| = '.\'
$!READDATASET  '".\firstPrincipalCurvatureVector.dat" '
  READDATAOPTION = NEW
  RESETSTYLE = YES
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDECUSTOMLABELS = NO
  VARLOADMODE = BYNAME
  ASSIGNSTRANDIDS = YES
  INITIALPLOTTYPE = CARTESIAN3D
  VARNAMELIST = '"X" "Y" "Z" "VA1" "VA2" "VA3"'
$!READDATASET  '".\centroid_tecplot.dat" '
  READDATAOPTION = APPEND
  RESETSTYLE = NO
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDECUSTOMLABELS = NO
  VARLOADMODE = BYNAME
  ASSIGNSTRANDIDS = YES
  INITIALPLOTTYPE = CARTESIAN3D
  VARNAMELIST = '"X" "Y" "Z" "VA1" "VA2" "VA3"'
$!INVERSEDISTINTERPOLATE 
  SOURCEZONES =  [1]
  DESTINATIONZONE = 2
  VARLIST =  [4-6]
  INVDISTEXPONENT = 3.5
  INVDISTMINRADIUS = 0
  INTERPPTSELECTION = OCTANTNPOINTS
  INTERPNPOINTS = 8
$!PICK ADDATPOSITION
  X = 3.94302176697
  Y = 3.0361715749
  CONSIDERSTYLE = YES
$!WRITEDATASET  ".\centroid_first_curvature_vector.dat"
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDECUSTOMLABELS = NO
  INCLUDEAUTOGENFACENEIGHBORS = YES
  ASSOCIATELAYOUTWITHDATAFILE = NO
  ZONELIST =  [2]
  VARPOSITIONLIST =  [4-6]
  BINARY = NO
  USEPOINTFORMAT = YES
  PRECISION = 9
  TECPLOTVERSIONTOWRITE = TECPLOTCURRENT
$!NEWLAYOUT 
$!READDATASET  '".\secondPrincipalCurvatureVector.dat" '
  READDATAOPTION = NEW
  RESETSTYLE = YES
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDECUSTOMLABELS = NO
  VARLOADMODE = BYNAME
  ASSIGNSTRANDIDS = YES
  INITIALPLOTTYPE = CARTESIAN3D
  VARNAMELIST = '"X" "Y" "Z" "VB1" "VB2" "VB3"'
$!READDATASET  '".\centroid_tecplot.dat" '
  READDATAOPTION = APPEND
  RESETSTYLE = NO
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDECUSTOMLABELS = NO
  VARLOADMODE = BYNAME
  ASSIGNSTRANDIDS = YES
  INITIALPLOTTYPE = CARTESIAN3D
  VARNAMELIST = '"X" "Y" "Z" "VB1" "VB2" "VB3"'
$!INVERSEDISTINTERPOLATE 
  SOURCEZONES =  [1]
  DESTINATIONZONE = 2
  VARLIST =  [4-6]
  INVDISTEXPONENT = 3.5
  INVDISTMINRADIUS = 0
  INTERPPTSELECTION = OCTANTNPOINTS
  INTERPNPOINTS = 8
$!WRITEDATASET  ".\centroid_second_curvature_vector.dat"
  INCLUDETEXT = NO
  INCLUDEGEOM = NO
  INCLUDECUSTOMLABELS = NO
  INCLUDEAUTOGENFACENEIGHBORS = YES
  ASSOCIATELAYOUTWITHDATAFILE = NO
  ZONELIST =  [2]
  VARPOSITIONLIST =  [4-6]
  BINARY = NO
  USEPOINTFORMAT = YES
  PRECISION = 9
  TECPLOTVERSIONTOWRITE = TECPLOTCURRENT
$!RemoveVar |MFBD|


$!QUIT