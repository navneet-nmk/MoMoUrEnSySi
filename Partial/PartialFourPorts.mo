within MoMoUrEnSySi.Partial;

partial model PartialFourPorts "Partial model of four flow ports component with a unique medium"

	import SI = Modelica.SIunits;
	import TH = Modelica.Thermal;

	parameter SI.Temperature TAmb = 293.15 "Ambient temperature";  // [K]

	replaceable package medium=TH.FluidHeatFlow.Media.Water;

	// Input
	TH.Interfaces.FlowPort_a flowPort_a1(medium = medium);
	TH.Interfaces.FlowPort_a flowPort_a2(medium = medium);

	// Output
	TH.Interfaces.FlowPort_b flowPort_b1(medium = medium);
	TH.Interfaces.FlowPort_b flowPort_b2(medium = medium);

end PartialFourPorts;