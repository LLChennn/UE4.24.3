// Copyright 1998-2019 Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "ThumbnailRendering/ThumbnailRenderer.h"
#include "RuntimeVirtualTextureThumbnailRenderer.generated.h"

UCLASS(MinimalAPI)
class URuntimeVirtualTextureThumbnailRenderer : public UThumbnailRenderer
{
	GENERATED_UCLASS_BODY()

	//~ Begin UThumbnailRenderer Interface.
	virtual bool CanVisualizeAsset(UObject* Object);
	virtual void Draw(UObject* Object, int32 X, int32 Y, uint32 Width, uint32 Height, FRenderTarget*, FCanvas* Canvas) override;
	//~ EndUThumbnailRenderer Interface.
};
