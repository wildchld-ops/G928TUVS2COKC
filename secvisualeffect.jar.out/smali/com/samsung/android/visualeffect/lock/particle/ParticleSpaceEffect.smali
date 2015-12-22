.class public Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;
.super Landroid/widget/FrameLayout;
.source "ParticleSpaceEffect.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectView;


# instance fields
.field private CREATED_DOTS_AMOUNT_AFFORDANCE:I

.field private CREATED_DOTS_AMOUNT_DOWN:I

.field private CREATED_DOTS_AMOUNT_MOVE:I

.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private affordanceColor:I

.field private affordanceRunnable:Ljava/lang/Runnable;

.field private affordanceX:F

.field private affordanceY:F

.field private centerX:F

.field private centerY:F

.field private currentX:F

.field private currentY:F

.field private isUnlocked:Z

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mLockscreenWallpaperImage:Landroid/widget/ImageView;

.field private particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

.field private stageHeight:F

.field private stageRatio:F

.field private stageWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_AFFORDANCE:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleSpaceInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_AFFORDANCE:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleSpaceInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "VisualEffectParticleEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_AFFORDANCE:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->isUnlocked:Z

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleSpaceInit()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->unlockFinished()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_AFFORDANCE:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceX:F

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceY:F

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceColor:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private clearEffect()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v1, "clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->centerX:F

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->centerY:F

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentY:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->clearEffect()V

    return-void
.end method

.method private getColor(FF)I
    .locals 17

    const v4, 0xffffff

    const/4 v14, 0x0

    cmpg-float v14, p1, v14

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageWidth:F

    cmpl-float v14, p1, v14

    if-lez v14, :cond_1

    :cond_0
    move v5, v4

    :goto_0
    return v5

    :cond_1
    const/4 v14, 0x0

    cmpg-float v14, p2, v14

    if-lez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageHeight:F

    cmpl-float v14, p2, v14

    if-lez v14, :cond_3

    :cond_2
    move v5, v4

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v15, "getColor : mBgBitmap = null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    move v5, v4

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v14, v3

    int-to-float v15, v1

    div-float v2, v14, v15

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageRatio:F

    cmpl-float v14, v2, v14

    if-lez v14, :cond_a

    int-to-float v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageHeight:F

    div-float v11, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageWidth:F

    mul-float v13, v14, v11

    int-to-float v12, v1

    int-to-float v14, v3

    sub-float/2addr v14, v13

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    float-to-int v9, v14

    :goto_2
    mul-float v14, p1, v11

    float-to-int v14, v14

    add-int v7, v9, v14

    mul-float v14, p2, v11

    float-to-int v14, v14

    add-int v8, v10, v14

    if-gez v7, :cond_6

    const/4 v7, 0x0

    :cond_6
    if-lt v7, v3, :cond_7

    add-int/lit8 v7, v3, -0x1

    :cond_7
    if-gez v8, :cond_8

    const/4 v8, 0x0

    :cond_8
    if-lt v8, v1, :cond_9

    add-int/lit8 v8, v1, -0x1

    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    :cond_a
    int-to-float v14, v3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageWidth:F

    div-float v11, v14, v15

    int-to-float v13, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageHeight:F

    mul-float v12, v14, v11

    int-to-float v14, v1

    sub-float/2addr v14, v12

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    float-to-int v10, v14

    goto :goto_2

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getColor : IllegalArgumentException = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getColor : bitmap = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " x "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getColor : stageWidth = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageWidth:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", stageHeight =  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageHeight:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getColor : x = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", y =  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private particleSpaceInit()V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v1, "particleSpaceInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->resetOrientation()V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mLockscreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mLockscreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mLockscreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mLockscreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->addView(Landroid/view/View;II)V

    new-instance v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->addView(Landroid/view/View;)V

    return-void
.end method

.method private resetOrientation()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v2, "resetOrientation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageWidth:F

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageHeight:F

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageWidth:F

    div-float/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->centerX:F

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageHeight:F

    div-float/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->centerY:F

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageWidth:F

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageHeight:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->stageRatio:F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->clearEffect()V

    :cond_2
    return-void
.end method

.method private setBGBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBGBitmap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBGBitmap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mBgBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mLockscreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->mLockscreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method private showAffordanceEffect(JLandroid/graphics/Rect;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceX:F

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceY:F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceX:F

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceY:F

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->getColor(FF)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceColor:I

    new-instance v0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$2;-><init>(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unlock()V
    .locals 4

    iget-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v3, "unlock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->isUnlocked:Z

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->unlockDots()V

    const-wide/16 v0, 0x15e

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect$1;-><init>(Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private unlockFinished()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v1, "unlockFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->clearEffect()V

    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->clearEffect()V

    return-void
.end method

.method public handleCustomEvent(ILjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const-string v0, "BGBitmap"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->setBGBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string v0, "StartDelay"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "Rect"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->showAffordanceEffect(JLandroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->unlock()V

    goto :goto_0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentY:F

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentX:F

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentY:F

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->getColor(FF)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v2, "handleTouchEvent : ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->isUnlocked:Z

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_DOWN:I

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentX:F

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentY:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->addDots(IFFI)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->isUnlocked:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->particleEffect:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->CREATED_DOTS_AMOUNT_MOVE:I

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentX:F

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentY:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->addDots(IFFI)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v2, "handleTouchEvent : ACTION_UP || ACTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->centerX:F

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentX:F

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->centerY:F

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->currentY:F

    goto :goto_0
.end method

.method public init(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->clearEffect()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleSpaceEffect;->resetOrientation()V

    return-void
.end method

.method public reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 0

    return-void
.end method

.method public removeListener()V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V
    .locals 0

    return-void
.end method
