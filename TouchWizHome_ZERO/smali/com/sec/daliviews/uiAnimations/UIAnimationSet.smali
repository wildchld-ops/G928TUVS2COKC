.class public Lcom/sec/daliviews/uiAnimations/UIAnimationSet;
.super Lcom/sec/daliviews/views/PeerBase;
.source "UIAnimationSet.java"


# static fields
.field public static final END_PROPERTY_VALUE_INDEX:I = 0x4

.field public static final NUM_TOTAL_VALUES_PER_PROPERTY:I = 0x8

.field public static final START_PROPERTY_VALUE_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UIAnimationSet"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    return-void
.end method

.method private native addColourAnim(JFFFFFFI)V
.end method

.method private native addFadeAnim(JFFFI)V
.end method

.method private native addParticleAnim(JFFFFF[I[FLjava/lang/String;)V
.end method

.method private native addPixelAreaAnim(JFFFFFFI)V
.end method

.method private native addResizeAnim(JFFFFI)V
.end method

.method private native addRotateAnim(JFFFFFFI)V
.end method

.method private native addScaleAnim(JFFFFFI)V
.end method

.method private native addShaderAnim(JFFLjava/lang/String;[Ljava/lang/String;[F[I[I)V
.end method

.method private native addSlideAnim(JFFFFFI)V
.end method

.method private native reset(J)V
.end method


# virtual methods
.method public add(Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;->getEndColour()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;->getStartTime()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;->getDuration()F

    move-result v5

    iget v6, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->r:F

    iget v7, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->g:F

    iget v8, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->b:F

    iget v9, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Colour;->a:F

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ColourUIAnimation;->getAlphaFunc()I

    move-result v10

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->addColourAnim(JFFFFFFI)V

    return-void
.end method

.method public add(Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;->getStartTime()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;->getDuration()F

    move-result v5

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;->getEndAlpha()F

    move-result v6

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/FadeUIAnimation;->getAlphaFunc()I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->addFadeAnim(JFFFI)V

    return-void
.end method

.method public add(Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;)V
    .locals 13

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->getConfig()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->getTextureFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->getPosition()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    move-result-object v12

    const/4 v1, 0x2

    new-array v9, v1, [I

    const/16 v1, 0x27

    new-array v10, v1, [F

    invoke-virtual {v0, v9, v10}, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$ParticleAttributes;->CopyDataToArrays([I[F)V

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->getStartTime()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ParticleUIAnimation;->getDuration()F

    move-result v5

    iget v6, v12, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->x:F

    iget v7, v12, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->y:F

    iget v8, v12, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->z:F

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->addParticleAnim(JFFFFF[I[FLjava/lang/String;)V

    return-void
.end method

.method public add(Lcom/sec/daliviews/uiAnimations/PixelAreaUIAnimation;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/PixelAreaUIAnimation;->getPixelArea()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/PixelAreaUIAnimation;->getStartTime()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/PixelAreaUIAnimation;->getDuration()F

    move-result v5

    iget v6, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->x:F

    iget v7, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->y:F

    iget v8, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->width:F

    iget v9, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$PixelArea;->height:F

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/PixelAreaUIAnimation;->getAlphaFunc()I

    move-result v10

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->addPixelAreaAnim(JFFFFFFI)V

    return-void
.end method

.method public add(Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->getAxis()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->getEndAngle()F

    move-result v9

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->getStartTime()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->getDuration()F

    move-result v5

    iget v6, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->x:F

    iget v7, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->y:F

    iget v8, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->z:F

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/RotateUIAnimation;->getAlphaFunc()I

    move-result v10

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->addRotateAnim(JFFFFFFI)V

    return-void
.end method

.method public add(Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;)V
    .locals 10

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;->getEndScale()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;->getStartTime()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;->getDuration()F

    move-result v5

    iget v6, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->x:F

    iget v7, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->y:F

    iget v8, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->z:F

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ScaleUIAnimation;->getAlphaFunc()I

    move-result v9

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->addScaleAnim(JFFFFFI)V

    return-void
.end method

.method public add(Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;)V
    .locals 14

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;->getProperties()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    new-array v8, v1, [F

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v9, v1, [I

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v10, v1, [I

    const/4 v11, 0x0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;

    div-int/lit8 v1, v11, 0x8

    iget-object v2, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mName:Ljava/lang/String;

    aput-object v2, v7, v1

    div-int/lit8 v1, v11, 0x8

    iget v2, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mSize:I

    aput v2, v9, v1

    div-int/lit8 v1, v11, 0x8

    iget v2, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mAlphaFunc:I

    aput v2, v10, v1

    iget-object v1, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mStartVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->x:F

    aput v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    iget-object v1, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mStartVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->y:F

    aput v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    iget-object v1, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mStartVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->z:F

    aput v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    iget-object v1, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mStartVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->w:F

    aput v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    iget-object v1, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mEndVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->x:F

    aput v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    iget-object v1, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mEndVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->y:F

    aput v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    iget-object v1, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mEndVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->z:F

    aput v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    iget-object v1, v12, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation$ShaderProperties;->mEndVal:Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;

    iget v1, v1, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector4;->w:F

    aput v1, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;->getStartTime()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;->getDuration()F

    move-result v5

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/ShaderUIAnimation;->getEffectName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->addShaderAnim(JFFLjava/lang/String;[Ljava/lang/String;[F[I[I)V

    return-void
.end method

.method public add(Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->getStartTime()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->getDuration()F

    move-result v5

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->getWidth()F

    move-result v6

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->getHeight()F

    move-result v7

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/SizeUIAnimation;->getAlphaFunc()I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->addResizeAnim(JFFFFI)V

    return-void
.end method

.method public add(Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;)V
    .locals 10

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;->getEndPos()Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;->getStartTime()F

    move-result v4

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;->getDuration()F

    move-result v5

    iget v6, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->x:F

    iget v7, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->y:F

    iget v8, v0, Lcom/sec/daliviews/uiAnimations/UIAnimationDefs$Vector3;->z:F

    invoke-virtual {p1}, Lcom/sec/daliviews/uiAnimations/SlideUIAnimation;->getAlphaFunc()I

    move-result v9

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->addSlideAnim(JFFFFFI)V

    return-void
.end method

.method protected native create()J
.end method

.method public reset()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/uiAnimations/UIAnimationSet;->reset(J)V

    return-void
.end method
