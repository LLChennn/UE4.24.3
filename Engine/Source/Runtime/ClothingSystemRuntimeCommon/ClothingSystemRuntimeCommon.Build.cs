// Copyright 1998-2019 Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class ClothingSystemRuntimeCommon : ModuleRules
{
	public ClothingSystemRuntimeCommon(ReadOnlyTargetRules Target) : base(Target)
	{
		PrivateIncludePaths.Add("Runtime/ClothingSystemRuntimeCommon/Private");
		SetupModulePhysicsSupport(Target);

		PublicIncludePathModuleNames.Add("ClothingSystemRuntimeInterface");

		PublicDependencyModuleNames.AddRange(
		new string[] {
			"Core",
			"CoreUObject",
			"ClothingSystemRuntimeInterface"
		}
		);

		PrivateDependencyModuleNames.AddRange(
		new string[]
		{
			"Engine",
			"RenderCore",
			"SlateCore",
			"Slate"
		}
		);
	}
}
