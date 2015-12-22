.class public Lcom/sec/daliviews/animation/RotateAnimation;
.super Lcom/sec/daliviews/animation/NativeAnimation;
.source "RotateAnimation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x0

    sget-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->ROTATE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/daliviews/animation/NativeAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/daliviews/animation/NativeAnimation$Type;)V

    sget-object v0, Lcom/sec/daliviews/R$styleable;->RotateAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    sget v0, Lcom/sec/daliviews/R$styleable;->RotateAnimation_android_fromDegrees:I

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    sget v0, Lcom/sec/daliviews/R$styleable;->RotateAnimation_android_toDegrees:I

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    sget v0, Lcom/sec/daliviews/R$styleable;->RotateAnimation_rotationAxisX:I

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    sget v0, Lcom/sec/daliviews/R$styleable;->RotateAnimation_rotationAxisY:I

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    sget v0, Lcom/sec/daliviews/R$styleable;->RotateAnimation_rotationAxisZ:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iget-boolean v0, p0, Lcom/sec/daliviews/animation/RotateAnimation;->mAnimateTo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/daliviews/animation/RotateAnimation;->setRotateTo(FFFF)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/daliviews/animation/RotateAnimation;->setRotate(FFFFF)V

    goto :goto_0
.end method

.method private native setRotate(JFFFFF)V
.end method

.method private native setRotateTo(JFFFF)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public setRotate(FFFFF)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/RotateAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/animation/RotateAnimation;->setRotate(JFFFFF)V

    return-void
.end method

.method public setRotateTo(FFFF)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/RotateAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/animation/RotateAnimation;->setRotateTo(JFFFF)V

    return-void
.end method
