.class public Lcom/sec/daliviews/layouts/MagazineLayout;
.super Lcom/sec/daliviews/layouts/LayoutBase;
.source "MagazineLayout.java"


# static fields
.field private static final DEFAULT_COLUMNS:I = 0x5

.field private static final DEFAULT_ROWS:I = 0x1


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/daliviews/layouts/MagazineLayout;->setGridSize(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/layouts/LayoutBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v3, Lcom/sec/daliviews/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_android_rowCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Lcom/sec/daliviews/R$styleable;->GridLayout_android_columnCount:I

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/sec/daliviews/layouts/MagazineLayout;->setGridSize(II)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private native setGridSize(JII)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public setGridSize(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/layouts/MagazineLayout;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/layouts/MagazineLayout;->setGridSize(JII)V

    return-void
.end method
