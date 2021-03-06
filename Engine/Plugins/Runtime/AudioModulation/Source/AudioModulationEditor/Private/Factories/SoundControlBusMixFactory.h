// Copyright 1998-2019 Epic Games, Inc. All Rights Reserved.

//=============================================================================
// USoundModulationBusFactory
//=============================================================================

#pragma once

#include "CoreMinimal.h"
#include "UObject/ObjectMacros.h"
#include "Factories/Factory.h"
#include "SoundControlBusMixFactory.generated.h"

UCLASS(hidecategories=Object, MinimalAPI)
class USoundControlBusMixFactory : public UFactory
{
	GENERATED_UCLASS_BODY()

	virtual UObject* FactoryCreateNew(UClass* Class, UObject* InParent, FName Name, EObjectFlags Flags, UObject* Context, FFeedbackContext* Warn) override;
};
