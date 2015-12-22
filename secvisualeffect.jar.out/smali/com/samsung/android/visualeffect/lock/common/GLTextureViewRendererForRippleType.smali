.class public Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;
.super Ljava/lang/Object;
.source "GLTextureViewRendererForRippleType.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/common/GLTextureView$Renderer;


# static fields
.field protected static final PORTRAIT_MODE:I = 0x0

.field protected static final TABLET_MODE:I = 0x1


# instance fields
.field protected final BMP_ENVIRONMENTIMG:I

.field protected final BMP_LANDSCAPEIMG:I

.field protected final BMP_PORTRAITIMG:I

.field protected final DBG:Z

.field protected final INK_DISABLE:I

.field protected MESH_SIZE_HEIGHT:I

.field protected MESH_SIZE_WIDTH:I

.field protected NUM_DETAILS_HEIGHT:I

.field protected NUM_DETAILS_WIDTH:I

.field protected final REDUCTION_RATE_NORMAL:F

.field protected final RIPPLE_LIGHT:I

.field protected final RIPPLE_LIGHT_WITH_INK:I

.field protected SURFACE_DETAILS_HEIGHT:I

.field protected SURFACE_DETAILS_WIDTH:I

.field protected TAG:Ljava/lang/String;

.field protected TOUCH_EXPONENT:F

.field protected TOUCH_FRESENL:F

.field protected TOUCH_SPECULAR:F

.field protected final UPDATE_TYPE_USER_SWITCHING:I

.field protected VCOUNT:I

.field protected XRatioAdjustLandscape:F

.field protected XRatioAdjustPortrait:F

.field protected XRatioForLandscape:F

.field protected XRatioForPortrait:F

.field protected YRatioForLandscape:F

.field protected YRatioForPortrait:F

.field protected alphaRatio1:F

.field protected alphaRatio2:F

.field protected bitmapEnvironmentBG:Landroid/graphics/Bitmap;

.field protected bitmapLandscapeBG:Landroid/graphics/Bitmap;

.field protected bitmapPortraitBG:Landroid/graphics/Bitmap;

.field protected defaultX:F

.field protected defaultY:F

.field protected diffPressTime:J

.field protected downX:F

.field protected downY:F

.field protected drawCount:I

.field protected effectType:I

.field protected framecounter:I

.field protected glX:F

.field protected glY:F

.field protected gpuHeights:[F

.field protected heights:[F

.field protected heightsSub1:[F

.field protected heightsSub2:[F

.field protected indices:[S

.field protected inkColorFromSetting:[[F

.field protected inkColors:[F

.field protected intensityForLandscape:F

.field protected intensityForPortrait:F

.field protected intensityForRipple:F

.field protected isIndigoDiffusion:Z

.field protected isMakedASpenToucdUp:Z

.field protected isOrientationChangCount:I

.field protected isOrientationChanged:Z

.field protected isSPenSupport:Z

.field protected isSurfaceChanged:Z

.field protected isTouched:Z

.field protected mBgChangeCheckQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mBitmapRatio:F

.field protected mDefaultRunnable:Ljava/lang/Runnable;

.field protected mEffectChangeCheckQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mExponentRatio:F

.field protected mFresnelRatio:F

.field protected mInkEffectColor:I

.field protected mLandscape:Z

.field mListener:Lcom/samsung/android/visualeffect/IEffectListener;

.field protected mParent:Lcom/samsung/android/visualeffect/common/GLTextureView;

.field protected mReductionRate:F

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mSpecularRatio:F

.field protected max:I

.field protected minLength:I

.field protected mouseX:F

.field protected mouseY:F

.field protected preEffectType:I

.field protected prevPressTime:J

.field protected proj:[F

.field protected reflectionRatio:F

.field protected refractiveIndex:F

.field protected rippleDistance:I

.field protected rippleDragThreshold:D

.field protected spanXForLandscape:I

.field protected spanXForPortrait:I

.field protected spanYForLandscape:I

.field protected spanYForPortrait:I

.field protected spenUspLevel:I

.field protected textures0:[I

.field protected textures1:[I

.field protected timeStart:J

.field protected translateXForLandscape:F

.field protected translateXForPortrait:F

.field protected translateYForLandscape:F

.field protected translateYForPortrait:F

.field protected translateZForLandscape:F

.field protected translateZForPortrait:F

.field protected unitCellHeight:F

.field protected unitCellWidth:F

.field protected velocity:[F

.field protected velocitySub1:[F

.field protected velocitySub2:[F

.field protected vertices:[F

.field protected view:[F

.field protected windowHeight:I

.field protected windowWidth:I

.field protected world:[F

.field protected wvp:[F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->DBG:Z

    const-string v0, "RippleTypes"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const/16 v0, 0x68

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    const/16 v0, 0x68

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_HEIGHT:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->MESH_SIZE_WIDTH:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->MESH_SIZE_HEIGHT:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_WIDTH:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_HEIGHT:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->max:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->VCOUNT:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->unitCellWidth:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->unitCellHeight:F

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heights:[F

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocity:[F

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub1:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocitySub1:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub2:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocitySub2:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->vertices:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    new-array v0, v3, [S

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->indices:[S

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->textures0:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->textures1:[I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->view:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->proj:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->world:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->wvp:[F

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseX:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseY:F

    const v0, 0x3f70a3d7    # 0.94f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->REDUCTION_RATE_NORMAL:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mBitmapRatio:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TOUCH_FRESENL:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TOUCH_SPECULAR:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TOUCH_EXPONENT:F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TOUCH_FRESENL:F

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mFresnelRatio:F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TOUCH_SPECULAR:F

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mSpecularRatio:F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TOUCH_EXPONENT:F

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mExponentRatio:F

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mLandscape:Z

    const v0, 0x3f70a3d7    # 0.94f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mReductionRate:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->refractiveIndex:F

    const v0, 0x3e051eb8    # 0.13f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->reflectionRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->alphaRatio1:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->alphaRatio2:F

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForLandscape:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForPortrait:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateXForLandscape:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateXForPortrait:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateYForLandscape:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateYForPortrait:F

    const v0, -0x3dd3cccd    # -43.05f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateZForPortrait:F

    const v0, -0x3e41999a    # -23.8f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateZForLandscape:F

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanXForLandscape:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanYForLandscape:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanXForPortrait:I

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanYForPortrait:I

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioForLandscape:F

    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->YRatioForLandscape:F

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioForPortrait:F

    const/high16 v0, 0x42380000    # 46.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->YRatioForPortrait:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioAdjustLandscape:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForRipple:F

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->minLength:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->downX:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->downY:F

    const-wide v0, 0x4062c00000000000L    # 150.0

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->rippleDragThreshold:D

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->rippleDistance:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->diffPressTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->prevPressTime:J

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->drawCount:I

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    iput-boolean v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isMakedASpenToucdUp:Z

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->defaultX:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->defaultY:F

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isTouched:Z

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->INK_DISABLE:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mInkEffectColor:I

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->inkColors:[F

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spenUspLevel:I

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isSPenSupport:Z

    const/16 v0, 0x9

    new-array v0, v0, [[F

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v4, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-array v2, v4, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->inkColorFromSetting:[[F

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mBgChangeCheckQueue:Ljava/util/Queue;

    iput-object v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mEffectChangeCheckQueue:Ljava/util/Queue;

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChanged:Z

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChangCount:I

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isSurfaceChanged:Z

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->RIPPLE_LIGHT:I

    iput v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->RIPPLE_LIGHT_WITH_INK:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->preEffectType:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->UPDATE_TYPE_USER_SWITCHING:I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->BMP_ENVIRONMENTIMG:I

    iput v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->BMP_PORTRAITIMG:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->BMP_LANDSCAPEIMG:I

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isIndigoDiffusion:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f43c3b5
        0x3ef0f0e9
        0x3f0c8c82
    .end array-data

    :array_2
    .array-data 4
        0x3f3ebebe
        0x3edcdcca
        0x3df0f0e9    # 0.117647f
    .end array-data

    :array_3
    .array-data 4
        0x3e8c8c72
        0x3f028273
        0x3df0f0e9    # 0.117647f
    .end array-data

    :array_4
    .array-data 4
        0x3d209fe8
        0x3eaaaa9f
        0x3f7afaf8
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3df0f0e9    # 0.117647f
        0x3eb4b4af
    .end array-data

    :array_6
    .array-data 4
        0x3eb4b4af
        0x3e70f0e9    # 0.235294f
        0x3f34b4af
    .end array-data

    :array_7
    .array-data 4
        0x3e5cdcca
        0x3dc8c8ac
        0x3d209fe8
    .end array-data

    :array_8
    .array-data 4
        0x3ea0a090
        0x3f20a090
        0x3f34b4af
    .end array-data
.end method


# virtual methods
.method public declared-synchronized changeBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "bmp == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->setBackground(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mBgChangeCheckQueue:Ljava/util/Queue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isIndigoDiffusion:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->setRippleVersion(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mParent:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkBackground()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "Change opengl BG Texture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->loadBGTexture()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkEffectChange()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mEffectChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "Change Effect Type and loadShaderSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->loadShaderSetting()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mEffectChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mEffectChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public checkOrientationChanged()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChanged:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isSurfaceChanged:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChangCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= onConfigurationChanged = onDrawFrame isSurfaceChanged == true && isOrientationChanged == true, isOrientationChangCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChangCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChanged:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChangCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChangCount:I

    goto :goto_0
.end method

.method public declared-synchronized clearAllEffect()V
    .locals 2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->clearRipple()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isTouched:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChanged:Z

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "clearInkValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mParent:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearRipple()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "clearRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocity:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heights:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocity:[F

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->max:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heights:[F

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->max:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocity:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocitySub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocitySub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0
.end method

.method public getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v8, "getCenterCropBitmap()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v7, p2

    int-to-float v8, p3

    div-float v4, v7, v8

    int-to-float v7, v2

    int-to-float v8, v0

    div-float v1, v7, v8

    cmpl-float v7, v1, v4

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v8, "bmp is horizontally"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v0

    mul-float/2addr v7, v4

    float-to-int v6, v7

    sub-int v7, v2, v6

    div-int/lit8 v7, v7, 0x2

    invoke-static {p1, v7, v9, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v8, "bmp is vertically"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v7, v2

    div-float/2addr v7, v4

    float-to-int v5, v7

    sub-int v7, v0, v5

    div-int/lit8 v7, v7, 0x2

    invoke-static {p1, v9, v7, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method public handleTouchEvent(IIFFF)V
    .locals 14

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->drawCount:I

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v8, "drawCount == 0 Touch Return"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move/from16 v0, p3

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseX:F

    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseY:F

    iget-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mLandscape:Z

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseX:F

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioAdjustLandscape:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioForLandscape:F

    iget v9, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseY:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    neg-float v7, v7

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->YRatioForLandscape:F

    iget v9, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    :goto_1
    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    move/from16 v5, p5

    iget-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isIndigoDiffusion:Z

    if-nez v7, :cond_2

    float-to-double v8, v5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_3

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    :cond_3
    const/4 v7, 0x3

    if-eq p1, v7, :cond_4

    const/4 v7, 0x1

    if-ne p1, v7, :cond_7

    :cond_4
    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseX:F

    float-to-int v7, v7

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseY:F

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9, v5}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_onTouch(IIIF)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isMakedASpenToucdUp:Z

    :cond_5
    :goto_2
    if-nez p1, :cond_9

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isTouched:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChanged:Z

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseX:F

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->downX:F

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseY:F

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->downY:F

    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->rippleDistance:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->prevPressTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->diffPressTime:J

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget v9, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForRipple:F

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v9, v10

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->ripple(FFF)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "sound"

    const-string v8, "down"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    const/4 v8, 0x1

    invoke-interface {v7, v8, v6}, Lcom/samsung/android/visualeffect/IEffectListener;->onReceive(ILjava/util/HashMap;)V

    goto/16 :goto_0

    :cond_6
    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseX:F

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioAdjustPortrait:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioForPortrait:F

    iget v9, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseY:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    neg-float v7, v7

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->YRatioForPortrait:F

    iget v9, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    goto/16 :goto_1

    :cond_7
    iget-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isIndigoDiffusion:Z

    if-nez v7, :cond_8

    move/from16 v0, p2

    and-int/lit16 v7, v0, 0x4002

    const/16 v8, 0x4002

    if-ne v8, v8, :cond_5

    :cond_8
    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseX:F

    float-to-int v7, v7

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseY:F

    float-to-int v8, v8

    invoke-virtual {p0, v7, v8, p1, v5}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_onTouch(IIIF)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isMakedASpenToucdUp:Z

    goto/16 :goto_2

    :cond_9
    const/4 v7, 0x2

    if-ne p1, v7, :cond_a

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isTouched:Z

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseX:F

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->downX:F

    sub-float v3, v7, v8

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseY:F

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->downY:F

    sub-float v4, v7, v8

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v2, v8

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->rippleDistance:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->rippleDistance:I

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseX:F

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->downX:F

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mouseY:F

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->downY:F

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->rippleDistance:I

    int-to-double v8, v7

    iget-wide v10, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->rippleDragThreshold:D

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->rippleDistance:I

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget v9, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForRipple:F

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->ripple(FFF)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "sound"

    const-string v8, "drag"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    const/4 v8, 0x1

    invoke-interface {v7, v8, v6}, Lcom/samsung/android/visualeffect/IEffectListener;->onReceive(ILjava/util/HashMap;)V

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x1

    if-ne p1, v7, :cond_b

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isTouched:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->prevPressTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->diffPressTime:J

    iget-wide v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->diffPressTime:J

    const-wide/16 v10, 0x258

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    iget v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glY:F

    iget v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->glX:F

    iget v9, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForRipple:F

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v9, v10

    invoke-virtual {p0, v7, v8, v9}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->ripple(FFF)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "sound"

    const-string v8, "down"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    const/4 v8, 0x1

    invoke-interface {v7, v8, v6}, Lcom/samsung/android/visualeffect/IEffectListener;->onReceive(ILjava/util/HashMap;)V

    goto/16 :goto_0

    :cond_b
    const/4 v7, 0x3

    if-ne p1, v7, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isTouched:Z

    goto/16 :goto_0
.end method

.method public initWaters()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "initWaters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->vertices:[F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->indices:[S

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heights:[F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocity:[F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub1:[F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocitySub1:[F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub2:[F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocitySub2:[F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_initWaters()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocity:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocitySub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocitySub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public declared-synchronized loadBGTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "loadBGTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "transferBitmap bitmapPortraitBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_LoadTextures(Landroid/graphics/Bitmap;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "transferBitmap bitmapLandscapeBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_LoadTextures(Landroid/graphics/Bitmap;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapLandscapeBG:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "bitmapPortraitBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "bitmapLandscapeBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized loadEnvironmentTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "loadEnvironmentTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "transferWaterBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_LoadTextures(Landroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "bitmapEnvironmentBG is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadShaderSetting()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_loadShaderSetting(Z)V

    return-void
.end method

.method public declared-synchronized move()V
    .locals 15

    const/4 v12, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heights:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocity:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub1:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocitySub1:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub2:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->velocitySub2:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v5, "initWaters don\'t called"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v2, 0x1

    const/4 v1, 0x1

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mLandscape:Z

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanXForLandscape:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanYForLandscape:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    sub-int v3, v0, v1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_HEIGHT:I

    sub-int v4, v0, v2

    :goto_0
    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_move(IIIIZF)I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->drawCount:I

    const/4 v5, 0x2

    if-lt v0, v5, :cond_3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mBgChangeCheckQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    if-ne v0, v12, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isTouched:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->setRenderModeDirty()V

    :cond_3
    :goto_1
    const/4 v7, 0x0

    :goto_2
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_HEIGHT:I

    if-ge v7, v0, :cond_1

    const/4 v9, 0x0

    :goto_3
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_WIDTH:I

    if-ge v9, v0, :cond_7

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v9

    add-int/2addr v0, v7

    mul-int/lit8 v8, v0, 0x3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    add-int/lit8 v5, v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heights:[F

    add-int/lit8 v12, v9, 0x2

    iget v13, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v7

    add-int/lit8 v12, v12, 0x2

    aget v6, v6, v12

    aput v6, v0, v5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    add-int/lit8 v5, v8, 0x1

    iget-object v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heights:[F

    add-int/lit8 v12, v9, 0x2

    iget v13, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v7

    add-int/lit8 v12, v12, 0x1

    aget v6, v6, v12

    aput v6, v0, v5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    add-int/lit8 v5, v8, 0x2

    iget-object v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heights:[F

    add-int/lit8 v12, v9, 0x1

    iget v13, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v7

    add-int/lit8 v12, v12, 0x2

    aget v6, v6, v12

    aput v6, v0, v5

    add-int/lit8 v0, v7, -0x7

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    add-int/lit8 v5, v8, 0x0

    aget v6, v0, v5

    iget-object v12, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub1:[F

    add-int/lit8 v13, v9, 0x2

    iget v14, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, -0x6

    aget v12, v12, v13

    add-float/2addr v6, v12

    aput v6, v0, v5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    add-int/lit8 v5, v8, 0x1

    aget v6, v0, v5

    iget-object v12, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub1:[F

    add-int/lit8 v13, v9, 0x2

    iget v14, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, -0x7

    aget v12, v12, v13

    add-float/2addr v6, v12

    aput v6, v0, v5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    add-int/lit8 v5, v8, 0x2

    aget v6, v0, v5

    iget-object v12, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub1:[F

    add-int/lit8 v13, v9, 0x1

    iget v14, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, -0x6

    aget v12, v12, v13

    add-float/2addr v6, v12

    aput v6, v0, v5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    add-int/lit8 v5, v8, 0x0

    aget v6, v0, v5

    iget-object v12, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub2:[F

    add-int/lit8 v13, v9, 0x2

    iget v14, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, -0x6

    aget v12, v12, v13

    add-float/2addr v6, v12

    aput v6, v0, v5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    add-int/lit8 v5, v8, 0x1

    aget v6, v0, v5

    iget-object v12, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub2:[F

    add-int/lit8 v13, v9, 0x2

    iget v14, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, -0x7

    aget v12, v12, v13

    add-float/2addr v6, v12

    aput v6, v0, v5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->gpuHeights:[F

    add-int/lit8 v5, v8, 0x2

    aget v6, v0, v5

    iget-object v12, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->heightsSub2:[F

    add-int/lit8 v13, v9, 0x1

    iget v14, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v7

    add-int/lit8 v13, v13, -0x6

    aget v12, v12, v13

    add-float/2addr v6, v12

    aput v6, v0, v5

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_5
    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanXForPortrait:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanYForPortrait:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    sub-int v3, v0, v1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_HEIGHT:I

    sub-int v4, v0, v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->setRenderModeDirty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method

.method public native_LoadTextures(Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method

.method public native_clear()V
    .locals 0

    return-void
.end method

.method public native_initWaters()V
    .locals 0

    return-void
.end method

.method public native_loadShaderSetting(Z)V
    .locals 0

    return-void
.end method

.method public native_move(IIIIZF)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native_onDrawFrame()V
    .locals 0

    return-void
.end method

.method public native_onInitUVHBuffer()V
    .locals 0

    return-void
.end method

.method public native_onTouch(IIIF)V
    .locals 0

    return-void
.end method

.method public native_ripple(FFF)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "= onConfigurationChanged = Renderer onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChangCount:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mParent:Lcom/samsung/android/visualeffect/common/GLTextureView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/high16 v6, 0x447a0000    # 1000.0f

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->minLength:I

    if-lt v4, v5, :cond_0

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->minLength:I

    if-ge v4, v5, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDrawFrame problem width "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  disp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isIndigoDiffusion:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->checkEffectChange()V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->checkBackground()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_onDrawFrame()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isSurfaceChanged:Z

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->drawCount:I

    if-lez v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isOrientationChanged:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->move()V

    :cond_4
    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->drawCount:I

    if-ge v4, v8, :cond_5

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->drawCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->drawCount:I

    :cond_5
    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->framecounter:I

    if-ne v4, v7, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->timeStart:J

    :cond_6
    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->framecounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->framecounter:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->timeStart:J

    sub-long v4, v2, v4

    long-to-float v1, v4

    cmpl-float v4, v1, v6

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->framecounter:I

    if-le v4, v8, :cond_7

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->framecounter:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    div-float v0, v4, v1

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fps "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->framecounter:I

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged, width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isSurfaceChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->drawCount:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->minLength:I

    if-lt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->minLength:I

    if-ge v2, v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged problem width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  disp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->proj:[F

    const/high16 v4, 0x42340000    # 45.0f

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x43fa0000    # 500.0f

    move-object/from16 v2, p0

    move v5, v13

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->perspectiveM([FFFFF)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mScreenHeight:I

    if-le v2, v3, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mLandscape:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForRipple:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mBitmapRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateXForLandscape:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateYForLandscape:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateZForLandscape:F

    move/from16 v16, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->loadShaderSetting()V

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->framecounter:I

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mLandscape:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->intensityForRipple:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mBitmapRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateXForPortrait:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateYForPortrait:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateZForPortrait:F

    move/from16 v16, v0

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_onInitUVHBuffer()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->loadEnvironmentTexture()V

    return-void
.end method

.method public perspectiveM([FFFFF)V
    .locals 9

    const/4 v8, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v1, p4, p5

    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    const/4 v2, 0x1

    aput v8, p1, v2

    const/4 v2, 0x2

    aput v8, p1, v2

    const/4 v2, 0x3

    aput v8, p1, v2

    const/4 v2, 0x4

    aput v8, p1, v2

    const/4 v2, 0x5

    aput v0, p1, v2

    const/4 v2, 0x6

    aput v8, p1, v2

    const/4 v2, 0x7

    aput v8, p1, v2

    const/16 v2, 0x8

    aput v8, p1, v2

    const/16 v2, 0x9

    aput v8, p1, v2

    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    const/16 v2, 0xb

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, p1, v2

    const/16 v2, 0xc

    aput v8, p1, v2

    const/16 v2, 0xd

    aput v8, p1, v2

    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    const/16 v2, 0xf

    aput v8, p1, v2

    return-void
.end method

.method public declared-synchronized ripple(FFF)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ripple(), mx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->native_ripple(FFF)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mParent:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "TABLET_MODE, getCenterCropBitmap bitmapPortraitBG, bitmapLandscapeBG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapPortraitBG:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapLandscapeBG:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mListener:Lcom/samsung/android/visualeffect/IEffectListener;

    return-void
.end method

.method public setRenderModeDirty()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mParent:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized setResourcesBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "setResourcesBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->bitmapEnvironmentBG:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRippleConfiguration(II)V
    .locals 9

    const/16 v8, 0xe

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x500

    const/16 v4, 0x320

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRippleConfiguration, w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    iput p2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->minLength:I

    const v0, 0x3e4ccccd    # 0.2f

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->rippleDragThreshold:D

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rippleDragThreshold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->rippleDragThreshold:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    const/16 v1, 0xa00

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    const/16 v1, 0x640

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    const/16 v1, 0x640

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    const/16 v1, 0xa00

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->VCOUNT:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->max:I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->initWaters()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->setRippleVersion(Z)V

    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    if-eq v0, v4, :cond_4

    :cond_3
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    if-ne v0, v4, :cond_5

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    if-ne v0, v5, :cond_5

    :cond_4
    const v0, -0x3e388937    # -24.933f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->translateZForLandscape:F

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanXForLandscape:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanYForLandscape:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanXForPortrait:I

    iput v7, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanYForPortrait:I

    const/high16 v0, 0x42400000    # 48.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioForLandscape:F

    const/high16 v0, 0x41d80000    # 27.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->YRatioForLandscape:F

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    if-eq v0, v5, :cond_1

    :cond_6
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    if-ne v0, v5, :cond_7

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    const/16 v1, 0x2d0

    if-eq v0, v1, :cond_1

    :cond_7
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_1

    :cond_8
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    const/16 v1, 0x21c

    if-eq v0, v1, :cond_1

    :cond_9
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    if-eq v0, v4, :cond_b

    :cond_a
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowWidth:I

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->windowHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_1

    :cond_b
    const/16 v0, 0x4a

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_WIDTH:I

    const/16 v0, 0x4a

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->NUM_DETAILS_HEIGHT:I

    iput v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanXForLandscape:I

    iput v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanYForLandscape:I

    iput v8, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanXForPortrait:I

    iput v6, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->spanYForPortrait:I

    const/high16 v0, 0x41e00000    # 28.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->XRatioForPortrait:F

    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->YRatioForPortrait:F

    goto/16 :goto_0
.end method

.method public setRippleVersion(Z)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "setRippleVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isIndigoDiffusion:Z

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isSPenSupport:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInkEffectColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mInkEffectColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mInkEffectColor:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "Def.MODE = ModeType.RIPPLE_LIGHT_WITH_INK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->inkColors:[F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->inkColorFromSetting:[[F

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mInkEffectColor:I

    aget-object v1, v1, v2

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->inkColors:[F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->inkColorFromSetting:[[F

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mInkEffectColor:I

    aget-object v1, v1, v2

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->inkColors:[F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->inkColorFromSetting:[[F

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mInkEffectColor:I

    aget-object v1, v1, v2

    aget v1, v1, v5

    aput v1, v0, v5

    :goto_1
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->preEffectType:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effectType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preEffectType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->preEffectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mEffectChangeCheckQueue:Ljava/util/Queue;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mParent:Lcom/samsung/android/visualeffect/common/GLTextureView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/common/GLTextureView;->setRenderMode(I)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->preEffectType:I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "ModeType.RIPPLE_LIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    goto :goto_1

    :cond_3
    iput v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mInkEffectColor:I

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->effectType:I

    goto/16 :goto_0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->isIndigoDiffusion:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->setRippleVersion(Z)V

    :cond_0
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->defaultX:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->defaultY:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType$1;-><init>(Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mDefaultRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->TAG:Ljava/lang/String;

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mParent:Lcom/samsung/android/visualeffect/common/GLTextureView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRendererForRippleType;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/visualeffect/common/GLTextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
