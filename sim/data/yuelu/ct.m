
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Generated by MATLAB(R) 9.13 (R2022b) and Automated Driving Toolbox 3.6 (R2022b).
% Generated on: 08-Sep-2023 15:12:58

% Construct a drivingScenario object.
scenario = drivingScenario;

% Add all road segments
roadCenters = [100 0 0;
    150 0 0];
laneSpecification = lanespec([4 4], 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [125 -25 0;
    125 25 0];
laneSpecifications = [lanespec([1 1], 'Width', 4)
    lanespec([2 2], 'Width', 4)];
lsConnector = laneSpecConnector('Position', 'Both', 'TaperShape', 'None');
compLaneSpecification = compositeLaneSpec(laneSpecifications, 'Connector', lsConnector);
road(scenario, roadCenters, 'Lanes', compLaneSpecification, 'Name', 'Road1');

roadCenters = [125 -25 0;
    125 -100 0];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 4, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road2');

roadCenters = [125 25 0;
    125 500 -3];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('DoubleSolid', 'Color', [0.98 0.86 0.36])
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(4, 'Width', 4, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road3');

roadCenters = [150 0 0;
    200 0 0];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(8, 'Width', 4, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road4');

roadCenters = [100 0 0;
    -200 0 0];
marking1 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];

marking2 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')];

marking3 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];

laneSpecifications = [lanespec(8, 'Width', 4, 'Marking', marking1)
    lanespec(6, 'Width', 4, 'Marking', marking2)
    lanespec(8, 'Width', 4, 'Marking', marking3)];
lsConnector = laneSpecConnector('Position', 'Both', 'TaperLength', 5);
compLaneSpecification = compositeLaneSpec(laneSpecifications, 'Connector', lsConnector, 'SegmentRange', [0.05 0.9 0.05]);
road(scenario, roadCenters, 'Lanes', compLaneSpecification, 'Name', 'Road5');

roadCenters = [-260 0 0;
    -200 0 0];
laneSpecification = lanespec([4 4], 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road6');

roadCenters = [-252.38 -15.98 0;
    -252.38 -90.98 0];
marking1 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];

marking2 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];

laneSpecifications = [lanespec(4, 'Width', 4, 'Marking', marking1)
    lanespec(3, 'Width', 4, 'Marking', marking2)];
lsConnector = laneSpecConnector('Position', 'Right', 'TaperLength', 5);
compLaneSpecification = compositeLaneSpec(laneSpecifications, 'Connector', lsConnector, 'SegmentRange', [0.1 0.9]);
road(scenario, roadCenters, 'Lanes', compLaneSpecification, 'Name', 'Road8');

roadCenters = [-207.86 -16.15 0;
    -207.86 -91.15 0];
marking1 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];

marking2 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];

laneSpecifications = [lanespec(4, 'Width', 4, 'Marking', marking1)
    lanespec(3, 'Width', 4, 'Marking', marking2)];
lsConnector = laneSpecConnector('Position', 'Left', 'TaperLength', 5);
compLaneSpecification = compositeLaneSpec(laneSpecifications, 'Connector', lsConnector, 'SegmentRange', [0.1 0.9]);
road(scenario, roadCenters, 'Lanes', compLaneSpecification, 'Name', 'Road9');

roadCenters = [-208.6 16.3 0;
    -208.6 31.3 0];
marking1 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];

marking2 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];

laneSpecifications = [lanespec(4, 'Width', 4, 'Marking', marking1)
    lanespec(3, 'Width', 4, 'Marking', marking2)];
lsConnector = laneSpecConnector('Position', 'Left', 'TaperLength', 1);
compLaneSpecification = compositeLaneSpec(laneSpecifications, 'Connector', lsConnector, 'SegmentRange', [0.4 0.6]);
road(scenario, roadCenters, 'Lanes', compLaneSpecification, 'Name', 'Road8');

roadCenters = [-251.8 16.3 0;
    -251.8 31.3 0];
marking1 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];

marking2 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];

laneSpecifications = [lanespec(4, 'Width', 4, 'Marking', marking1)
    lanespec(3, 'Width', 4, 'Marking', marking2)];
lsConnector = laneSpecConnector('Position', 'Right', 'TaperLength', 1);
compLaneSpecification = compositeLaneSpec(laneSpecifications, 'Connector', lsConnector, 'SegmentRange', [0.4 0.6]);
road(scenario, roadCenters, 'Lanes', compLaneSpecification, 'Name', 'Road8');

roadCenters = [-208.66 31.35 0;
    -208.8 60.3 10;
    -215.5 107.5 13;
    -223 118.2 14];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 4, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [-251.86 31.35 0;
    -251.86 71.35 5];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 4, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road2');

roadCenters = [-260 0 0;
    -310 0 0];
marking = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(8, 'Width', 4, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road5');

roadCenters = [-203.4 191.5 0;
    -203.4 81.5 0];
laneSpecification = lanespec(2, 'Width', 3);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [-256.59 186.24 0;
    -256.59 81.24 0];
laneSpecification = lanespec(2, 'Width', 3);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [-203.51 81.5 0;
    -203.51 31.5 0];
marking1 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')];

marking2 = [laneMarking('Solid')
    laneMarking('Dashed')];

laneSpecifications = [lanespec(2, 'Width', 3, 'Marking', marking1)
    lanespec(1, 'Width', 4, 'Marking', marking2)];
lsConnector = laneSpecConnector('Position', 'Right', 'TaperLength', 4);
compLaneSpecification = compositeLaneSpec(laneSpecifications, 'Connector', lsConnector, 'SegmentRange', [0.1 0.9]);
road(scenario, roadCenters, 'Lanes', compLaneSpecification, 'Name', 'Road8');

roadCenters = [-256.7 81.2 0;
    -256.7 31.2 0];
marking1 = [laneMarking('Solid')
    laneMarking('Dashed')
    laneMarking('Dashed')];

marking2 = [laneMarking('Solid')
    laneMarking('Dashed')];

laneSpecifications = [lanespec(2, 'Width', 3, 'Marking', marking1)
    lanespec(1, 'Width', 3, 'Marking', marking2)];
lsConnector = laneSpecConnector('Position', 'Left', 'TaperLength', 4);
compLaneSpecification = compositeLaneSpec(laneSpecifications, 'Connector', lsConnector, 'SegmentRange', [0.1 0.9]);
road(scenario, roadCenters, 'Lanes', compLaneSpecification, 'Name', 'Road9');

roadCenters = [-203.4 191.4 0;
    -203.11 197.86 0;
    -201.6 204.9 0;
    -196.3 215 0;
    -149.6 281.1 0;
    -24.7 356.5 0;
    180.4 376.7 0];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [-458.6 386.3 3;
    -385 373 2;
    -279.9 298.5 0;
    -256.4 186.2 0];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [-277 295.2 0;
    -234 349 0;
    -219 356 0;
    -163 351 0;
    -118 309.1 0];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road2');

roadCenters = [-227 446.8 0;
    -227 354.8 0];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road3');

roadCenters = [-97 477 0;
    -225.9 444.7 0];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road4');

roadCenters = [-203 684 0;
    -148.1 528.6 0;
    -6.7 434.3 0;
    121.3 422.8 -2];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road5');

roadCenters = [-277 559 0;
    -226.6 445 0];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road6');

roadCenters = [-263 682 0;
    -281.8 548.9 0;
    -328.7 481 0;
    -461.4 408.5 3];
marking = [laneMarking('Unmarked')
    laneMarking('Unmarked')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road7');

roadCenters = [145.2 377.4 0;
    130.9 362.7 -2];
marking = [laneMarking('Unmarked')
    laneMarking('Dashed')
    laneMarking('Solid')];
laneSpecification = lanespec(2, 'Width', 3, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [170.1 410.1 0;
    -481.9 407.1 3];
laneSpecification = lanespec(3, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [169.85 389.35 0;
    -482.15 386.35 3];
laneSpecification = lanespec(3, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [123.5 385.2 0;
    134.8 377.3 0];
marking = laneMarking('Unmarked');
laneSpecification = lanespec(1, 'Width', 4, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road2');

roadCenters = [145.5 377.7 0;
    154.1 385.8 0];
marking = laneMarking('Unmarked');
laneSpecification = lanespec(1, 'Width', 4, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road3');

roadCenters = [-223.8 -101.4 10;
    -224.2 286.6 15;
    -226.8 697.6 10];
laneSpecification = lanespec(3, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [-237.95 -102.15 10;
    -239.1 501.5 15;
    -240.95 696.85 10];
laneSpecification = lanespec(3, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [-327.1 385.2 3;
    -268.7 353.3 8;
    -248.3 276.8 15;
    -248.2 235.8 15;
    -248.12 210.13 15;
    -248.09 186.25 14;
    -248.1 170 14;
    -248.1 154.52 14;
    -248.19 131.43 14;
    -249 116.7 14;
    -251.96 71.02 5];
laneSpecification = lanespec(2, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road2');

roadCenters = [-222.7 124 14;
    -216.1 135.5 13;
    -210.3 155.4 13;
    -210.5 173 8;
    -204.5 227.3 8;
    -121.4 323.7 5;
    78.1 387.2 1];
laneSpecification = lanespec(2, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [-209.9 91.5 13;
    -209.9 156.1 13];
laneSpecification = lanespec(2);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [-237.3 304 15;
    -203.5 275.3 9;
    -157.6 298.5 6];
laneSpecification = lanespec(2, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road2');

roadCenters = [-167.3 385.7 1;
    -144 374.2 3;
    -152.3 322.7 8;
    -209.3 317.3 14;
    -222.2 350.1 15];
laneSpecification = lanespec(2, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road3');

roadCenters = [-431.5 407.5 3;
    -346.6 447 4;
    -243.4 685.6 10];
laneSpecification = lanespec(2, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [-227.9 484.2 14;
    -259.6 513 10;
    -305.9 487.9 5];
laneSpecification = lanespec(2, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road1');

roadCenters = [-294 410.3 2;
    -315.8 422.4 2;
    -307.2 468.3 10;
    -243.4 452.5 15;
    -240.6 436.5 15];
laneSpecification = lanespec(2, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road2');

roadCenters = [20.4 410.3 1;
    -175.1 484.3 0;
    -223.9 561.2 13];
laneSpecification = lanespec(2, 'Width', 4);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road3');

roadCenters = [-203.3 117.3 0;
    -230.8 135.1 0;
    -256.1 117.2 0];
roadWidth = 4;
road(scenario, roadCenters, roadWidth, 'Name', 'Road4');

roadCenters = [-203.7 101.5 0;
    -230.9 87.9 0;
    -255.2 103.9 0];
roadWidth = 4;
road(scenario, roadCenters, roadWidth, 'Name', 'Road5');

% Add the barriers
barrierCenters = [100 0 0.5;
    -200 0 0.5];
barrier(scenario, barrierCenters, ...
    'ClassID', 5, ...
    'Width', 0.61, ...
    'Height', 0.81, ...
    'Mesh', driving.scenario.jerseyBarrierMesh, 'PlotColor', [0.65 0.65 0.65], 'Name', 'Jersey Barrier1');

barrierCenters = [150 0 0;
    200 0 0];
barrier(scenario, barrierCenters, ...
    'ClassID', 5, ...
    'Width', 0.61, ...
    'Height', 0.81, ...
    'Mesh', driving.scenario.jerseyBarrierMesh, 'PlotColor', [0.65 0.65 0.65], 'Name', 'Jersey Barrier');

barrierCenters = [-204.7 30.7 0;
    -204.6 71.3 0];
barrier(scenario, barrierCenters, ...
    'ClassID', 6, ...
    'SegmentLength', 4.51112479472473, ...
    'Width', 0.433, ...
    'Mesh', driving.scenario.guardrailMesh, 'PlotColor', [0.55 0.55 0.55], 'Name', 'Guardrail1');

barrierCenters = [-256.32 31.44 0;
    -256.12 71.34 0];
barrier(scenario, barrierCenters, ...
    'ClassID', 6, ...
    'SegmentLength', 4.98756265624804, ...
    'Width', 0.433, ...
    'Mesh', driving.scenario.guardrailMesh, 'PlotColor', [0.55 0.55 0.55], 'Name', 'Guardrail2');

barrierCenters = [-259.1 0 0;
    -309.1 0 0];
barrier(scenario, barrierCenters, ...
    'ClassID', 6, ...
    'Width', 0.433, ...
    'Mesh', driving.scenario.guardrailMesh, 'PlotColor', [0.55 0.55 0.55], 'Name', 'Guardrail');
