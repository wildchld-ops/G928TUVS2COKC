.class public Lcom/sec/daliviews/effects/ShadowEffect;
.super Lcom/sec/daliviews/effects/NativeEffect;
.source "ShadowEffect.java"


# instance fields
.field mUseGenericShadow:Z


# direct methods
.method public constructor <init>(FFFFFI)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/daliviews/effects/NativeEffect;-><init>()V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/ShadowEffect;->setStrength(JF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(JFF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/sec/daliviews/effects/ShadowEffect;->setScale(JFF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p6}, Lcom/sec/daliviews/effects/ShadowEffect;->setBlur(JI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/effects/NativeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect:[I

    invoke-virtual {p1, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    sget v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect_offsetX:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    sget v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect_offsetY:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    sget v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect_scaleX:I

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    sget v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect_scaleY:I

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    sget v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect_strength:I

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    sget v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect_blur:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    sget v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect_depth:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    sget v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect_angle:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    sget v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect_distance:I

    const/high16 v11, 0x42480000    # 50.0f

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    sget v10, Lcom/sec/daliviews/R$styleable;->ShadowEffect_genericshadow:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sec/daliviews/effects/ShadowEffect;->mUseGenericShadow:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v10

    invoke-direct {p0, v10, v11, v8}, Lcom/sec/daliviews/effects/ShadowEffect;->setStrength(JF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v10

    invoke-direct {p0, v10, v11, v4, v5}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(JFF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v10

    invoke-direct {p0, v10, v11, v6, v7}, Lcom/sec/daliviews/effects/ShadowEffect;->setScale(JFF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v10

    invoke-direct {p0, v10, v11, v1}, Lcom/sec/daliviews/effects/ShadowEffect;->setBlur(JI)V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v10

    invoke-direct {p0, v10, v11, v0}, Lcom/sec/daliviews/effects/ShadowEffect;->setAngle(JF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v10

    invoke-direct {p0, v10, v11, v3}, Lcom/sec/daliviews/effects/ShadowEffect;->setDistance(JF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v10

    invoke-direct {p0, v10, v11, v2}, Lcom/sec/daliviews/effects/ShadowEffect;->setDepth(JF)V

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v10

    iget-boolean v12, p0, Lcom/sec/daliviews/effects/ShadowEffect;->mUseGenericShadow:Z

    invoke-direct {p0, v10, v11, v12}, Lcom/sec/daliviews/effects/ShadowEffect;->setUseGenericShadow(JZ)V

    return-void
.end method

.method private native apply(JJJ)V
.end method

.method private native applyWithAnimation(JJJFF)V
.end method

.method private native remove(JJ)V
.end method

.method private native removeConstraints(JJ)V
.end method

.method private native setAngle(JF)V
.end method

.method private native setBlur(JI)V
.end method

.method private native setDepth(JF)V
.end method

.method private native setDistance(JF)V
.end method

.method private native setOffset(JFF)V
.end method

.method private native setOffsetAnimated(JFFF)V
.end method

.method private native setScale(JFF)V
.end method

.method private native setStrength(JF)V
.end method

.method private native setUseGenericShadow(JZ)V
.end method

.method private native setVisible(JZ)V
.end method

.method private native setVisibleOnView(JJZ)V
.end method


# virtual methods
.method public apply(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/effects/ShadowEffect;->apply(JJJ)V

    return-void
.end method

.method public applyWithAnimation(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;FF)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v6

    move-object v1, p0

    move v8, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/effects/ShadowEffect;->applyWithAnimation(JJJFF)V

    return-void
.end method

.method public native create()J
.end method

.method public getUseGenericShadow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/daliviews/effects/ShadowEffect;->mUseGenericShadow:Z

    return v0
.end method

.method public remove(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/effects/ShadowEffect;->remove(JJ)V

    return-void
.end method

.method public removeConstraints(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/effects/ShadowEffect;->removeConstraints(JJ)V

    return-void
.end method

.method public setAngle(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/ShadowEffect;->setAngle(JF)V

    return-void
.end method

.method public setBlur(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/ShadowEffect;->setBlur(JI)V

    return-void
.end method

.method public setDepth(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/ShadowEffect;->setDepth(JF)V

    return-void
.end method

.method public setDistance(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/ShadowEffect;->setDistance(JF)V

    return-void
.end method

.method public setOffset(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffset(JFF)V

    return-void
.end method

.method public setOffsetAnimated(FFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/effects/ShadowEffect;->setOffsetAnimated(JFFF)V

    return-void
.end method

.method public setScale(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/effects/ShadowEffect;->setScale(JFF)V

    return-void
.end method

.method public setStrength(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/ShadowEffect;->setStrength(JF)V

    return-void
.end method

.method public setUseGenericShadow(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/ShadowEffect;->setUseGenericShadow(JZ)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisible(JZ)V

    return-void
.end method

.method public setVisibleOnView(Lcom/sec/daliviews/views/NativeViewBase;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/ShadowEffect;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/effects/ShadowEffect;->setVisibleOnView(JJZ)V

    return-void
.end method
