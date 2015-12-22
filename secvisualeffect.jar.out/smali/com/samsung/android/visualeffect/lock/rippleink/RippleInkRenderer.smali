.class public Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;
.super Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;
.source "RippleInkRenderer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;-><init>()V

    const-string v0, "RippleInkRenderer"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->TAG:Ljava/lang/String;

    const-string v1, "RippleInkRenderer Constructor 2014-1031"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mParent:Lcom/samsung/android/visualeffect/common/GLTextureView;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mBgChangeCheckQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mEffectChangeCheckQueue:Ljava/util/Queue;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spenUspLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->spenUspLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->spenUspLevel:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->isSPenSupport:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public native_LoadTextures(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->LoadTextures(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public native_clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->clearInkValue()V

    return-void
.end method

.method public native_initWaters()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->vertices:[F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->indices:[S

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->VCOUNT:I

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->initWaters([F[SIIIII)V

    return-void
.end method

.method public native_loadShaderSetting(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mScreenHeight:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->onInitSetting(IIZ)V

    invoke-static {}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->onInitGPU()V

    return-void
.end method

.method public native_move(IIIIZF)I
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->velocity:[F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->heights:[F

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v8, 0x1

    iget v9, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mReductionRate:F

    const/high16 v10, 0x3f000000    # 0.5f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v10}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->move([F[FIIIIIIZFF)I

    move-result v0

    return v0
.end method

.method public native_onDrawFrame()V
    .locals 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mLandscape:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mExponentRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mLandscape:Z

    move/from16 v22, v0

    invoke-static/range {v1 .. v22}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->onDrawFrame([F[F[SIII[FIIIIFFFFFFFFFFZ)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mExponentRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->mLandscape:Z

    move/from16 v22, v0

    invoke-static/range {v1 .. v22}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->onDrawFrame([F[F[SIII[FIIIIFFFFFFFFFFZ)V

    goto/16 :goto_0
.end method

.method public native_onInitUVHBuffer()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->onInitUVHBuffer()V

    return-void
.end method

.method public native_onTouch(IIIF)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->onTouch(IIIF)V

    return-void
.end method

.method public native_ripple(FFF)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->velocity:[F

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/visualeffect/lock/rippleink/NativeForRippleInk;->ripple([FIIIIFFF)V

    return-void
.end method
