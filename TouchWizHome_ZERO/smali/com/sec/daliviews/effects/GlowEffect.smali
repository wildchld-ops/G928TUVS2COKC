.class public Lcom/sec/daliviews/effects/GlowEffect;
.super Lcom/sec/daliviews/effects/NativeEffect;
.source "GlowEffect.java"


# direct methods
.method public constructor <init>(IFI)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/effects/NativeEffect;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/effects/GlowEffect;->setColor(I)V

    invoke-virtual {p0, p2}, Lcom/sec/daliviews/effects/GlowEffect;->setThickness(F)V

    invoke-virtual {p0, p3}, Lcom/sec/daliviews/effects/GlowEffect;->setBloom(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/effects/NativeEffect;-><init>()V

    sget-object v5, Lcom/sec/daliviews/R$styleable;->GlowEffect:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v5, Lcom/sec/daliviews/R$styleable;->GlowEffect_color:I

    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sget v5, Lcom/sec/daliviews/R$styleable;->GlowEffect_thickness:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    sget v5, Lcom/sec/daliviews/R$styleable;->GlowEffect_delayFinished:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    sget v5, Lcom/sec/daliviews/R$styleable;->GlowEffect_bloom:I

    invoke-virtual {v3, v5, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/effects/GlowEffect;->setColor(I)V

    invoke-virtual {p0, v4}, Lcom/sec/daliviews/effects/GlowEffect;->setThickness(F)V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/effects/GlowEffect;->setBloom(I)V

    invoke-virtual {p0, v2}, Lcom/sec/daliviews/effects/GlowEffect;->setDelayFinishedSignal(F)V

    return-void
.end method

.method private native apply(JJJ)V
.end method

.method private native remove(JJ)V
.end method

.method private native setBloom(JI)V
.end method

.method private native setColor(JI)V
.end method

.method private native setDelayFinishedSignal(JF)V
.end method

.method private native setScale(JJFFF)V
.end method

.method private native setThickness(JF)V
.end method

.method private native setVisible(JJZFZ)V
.end method


# virtual methods
.method public apply(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/effects/GlowEffect;->apply(JJJ)V

    return-void
.end method

.method public native create()J
.end method

.method public remove(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/effects/GlowEffect;->remove(JJ)V

    return-void
.end method

.method public setBloom(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/GlowEffect;->setBloom(JI)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/GlowEffect;->setColor(JI)V

    return-void
.end method

.method public setDelayFinishedSignal(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/GlowEffect;->setDelayFinishedSignal(JF)V

    return-void
.end method

.method public setScale(Lcom/sec/daliviews/views/NativeViewBase;FFF)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/effects/GlowEffect;->setScale(JJFFF)V

    return-void
.end method

.method public setThickness(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/effects/GlowEffect;->setThickness(JF)V

    return-void
.end method

.method public setVisible(Lcom/sec/daliviews/views/NativeViewBase;Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/effects/GlowEffect;->setVisible(JJZFZ)V

    return-void
.end method

.method public setVisible(Lcom/sec/daliviews/views/NativeViewBase;ZF)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object v1, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/effects/GlowEffect;->setVisible(JJZFZ)V

    return-void
.end method

.method public setVisible(Lcom/sec/daliviews/views/NativeViewBase;ZFZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/effects/GlowEffect;->setVisible(JJZFZ)V

    return-void
.end method

.method public setVisible(Lcom/sec/daliviews/views/NativeViewBase;ZZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/effects/GlowEffect;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v1, p0

    move v6, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/effects/GlowEffect;->setVisible(JJZFZ)V

    return-void
.end method
