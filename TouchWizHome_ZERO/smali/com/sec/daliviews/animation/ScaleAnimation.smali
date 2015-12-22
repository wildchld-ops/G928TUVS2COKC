.class public Lcom/sec/daliviews/animation/ScaleAnimation;
.super Lcom/sec/daliviews/animation/NativeAnimation;
.source "ScaleAnimation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    sget-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->SCALE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/daliviews/animation/NativeAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/daliviews/animation/NativeAnimation$Type;)V

    sget-object v0, Lcom/sec/daliviews/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v0, Lcom/sec/daliviews/R$styleable;->ScaleAnimation_android_fromXScale:I

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    sget v0, Lcom/sec/daliviews/R$styleable;->ScaleAnimation_android_toXScale:I

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    sget v0, Lcom/sec/daliviews/R$styleable;->ScaleAnimation_android_fromYScale:I

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    sget v0, Lcom/sec/daliviews/R$styleable;->ScaleAnimation_android_toYScale:I

    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    sget v0, Lcom/sec/daliviews/R$styleable;->ScaleAnimation_fromZScale:I

    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    sget v0, Lcom/sec/daliviews/R$styleable;->ScaleAnimation_toZScale:I

    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iget-boolean v0, p0, Lcom/sec/daliviews/animation/ScaleAnimation;->mAnimateTo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v4, v6}, Lcom/sec/daliviews/animation/ScaleAnimation;->setScaleTo(FFF)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/daliviews/animation/ScaleAnimation;->setScale(FFFFFF)V

    goto :goto_0
.end method

.method private native setScale(JFFFFFF)V
.end method

.method private native setScaleTo(JFFF)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public setScale(FFFFFF)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/ScaleAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/animation/ScaleAnimation;->setScale(JFFFFFF)V

    return-void
.end method

.method public setScaleTo(FFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/ScaleAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/animation/ScaleAnimation;->setScaleTo(JFFF)V

    return-void
.end method
