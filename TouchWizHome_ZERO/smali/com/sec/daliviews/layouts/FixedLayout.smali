.class public Lcom/sec/daliviews/layouts/FixedLayout;
.super Lcom/sec/daliviews/layouts/LayoutBase;
.source "FixedLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/sec/daliviews/R$styleable;->FixedLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private native addPosition(JFFFII)V
.end method

.method private native setPosition(JIFFFII)V
.end method


# virtual methods
.method public addPosition(FFFII)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/FixedLayout;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/layouts/FixedLayout;->addPosition(JFFFII)V

    return-void
.end method

.method protected native create()J
.end method

.method public inflateAndAddPosition(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/daliviews/R$styleable;->LayoutPosition:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutPosition_centerX:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutPosition_centerY:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutPosition_centerZ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutPosition_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    sget v1, Lcom/sec/daliviews/R$styleable;->LayoutPosition_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/FixedLayout;->getmNPeer()J

    move-result-wide v2

    int-to-float v4, v9

    int-to-float v5, v10

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/layouts/FixedLayout;->addPosition(JFFFII)V

    return-void
.end method

.method public setPosition(IFFFII)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/FixedLayout;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/layouts/FixedLayout;->setPosition(JIFFFII)V

    return-void
.end method
