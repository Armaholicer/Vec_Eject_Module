class cfgPatches
{
	class AMH_ModuleVecEject
	{
		units[] = {"AMH_ModuleVecEject"};
		requiredVersion = 1.0;
		requiredAddons [] = {"A3_Modules_F"};
	};
};

class cfgFactionClasses
{
	class ObjectModifiers;
	class AMH_immersion: ObjectModifiers
	{
		displayName = "Vehicle Eject"
	};
};

class cfgVehicles
{
	class Logic;
	class Module_F: Logic
	{
		class ArgumentsBaseUnits
		{
			class units;
		};
		class ModuleDescription
		{
			class AnyBrain;
		};
	};
	class AMH_ModuleVecEject: Module_F
	{
		scope = 2;
		displayName = "Vehicle Eject";
		icon = "\AMH_ModuleVecEject\data\iconve_ca.paa";
		category = "ObjectModifiers";
		function = "AMH_fnc_moduleveceject";
		functionPriority = 1;
		isGlobal = 1; 
		isTriggerActivated = 0;
		isDisposable= 1; 
		is 3DEN = 1;
		curatorInfoType = "RSCDisplayAttributeModuleVecEject";
		
		class arguments: ArgumentsBaseUnits
		{
			class units: units {};
			class Selector
			{
				displayName = "Vehicle Eject Optionen";
				description = "Bestimmt welche Seite Vehicle Eject Aktionen erhalten soll";
				typeName = "Number"; 
				class values
				{
					class allsides	{name = "Alle Seiten"; Value = 1; default = 1;};
					class bluside 	{name = "Nur BLUFOR"; Value = 2;};
					class Opfside	{name = "Nur OPFOR"; Value = 3;};
					class Guerside	{name = "Nur Unabhängig"; Value = 4;};
					class westside	{name = "BLUFOR und Unabhängig"; Value = 5;};
					class eastside 	{name = "OPFOR und Unabhängig"; Value = 6;};
				};
			};
			class Name
			{
				displayName = "Name";
				description = "Name des Moduls";
				defaultValue = "Vehicle Eject";
			};
		};
		class ModuleDescription: ModuleDescription
		{
			description = "Ein Modul das es ermöglicht, das Absitzen aus diversen Drehflüglern realistischer zu gestalten. Es werden sowohl für Passasgiere als auch Piloten neue Aktionen hinzugefügt."
			sync [] = {};
			
			position = 0; 
			direction = 0; 
			};
		};
	};
};

class cfgFunctions 
{
	class AMH
	{
		tag= "AMH";
		class ObjectModifiers
		{
			file= "\AMH_ModuleVecEject\functions";
			class moduleveceject{};
		};
	};
};
