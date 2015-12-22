.class public Lcom/sec/daliviews/layouts/LinearLayout;
.super Lcom/sec/daliviews/layouts/LayoutBase;
.source "LinearLayout.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/daliviews/layouts/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/sec/daliviews/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->LinearLayout_android_orientation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    sget v1, Lcom/sec/daliviews/R$styleable;->LinearLayout_android_gravity:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    sget v1, Lcom/sec/daliviews/R$styleable;->LinearLayout_android_weightSum:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    sget v1, Lcom/sec/daliviews/R$styleable;->LinearLayout_scrollable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    sget v1, Lcom/sec/daliviews/R$styleable;->LinearLayout_matchParentSeparately:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/layouts/LinearLayout;->initParams(JIIFZZ)V

    return-void
.end method

.method private native getGravity(J)I
.end method

.method private native getOrientation(J)I
.end method

.method private native getScrollable(J)Z
.end method

.method private native getWeightSum(J)F
.end method

.method private native initParams(JIIFZZ)V
.end method

.method private native scrollToPosition(JFFF)V
.end method

.method private native setBackgroundEffectEnabled(JZ)V
.end method

.method private native setGravity(JI)V
.end method

.method private native setOrientation(JI)V
.end method

.method private native setSnapPointToView(JI)V
.end method

.method private native setWeightSum(JF)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public getGravity()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/LinearLayout;->getGravity(J)I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/LinearLayout;->getOrientation(J)I

    move-result v0

    return v0
.end method

.method public getScrollable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/LinearLayout;->getScrollable(J)Z

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/layouts/LinearLayout;->getWeightSum(J)F

    move-result v0

    return v0
.end method

.method public scrollToPosition(FFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/layouts/LinearLayout;->scrollToPosition(JFFF)V

    return-void
.end method

.method public setBackgroundEffectEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LinearLayout;->setBackgroundEffectEnabled(JZ)V

    return-void
.end method

.method public setGravity(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LinearLayout;->setGravity(JI)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LinearLayout.setLayoutDirection() invalid direction!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LinearLayout;->setOrientation(JI)V

    return-void
.end method

.method public setSnapPointToView(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LinearLayout;->setSnapPointToView(JI)V

    return-void
.end method

.method public setWeightSum(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/LinearLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/layouts/LinearLayout;->setWeightSum(JF)V

    return-void
.end method
