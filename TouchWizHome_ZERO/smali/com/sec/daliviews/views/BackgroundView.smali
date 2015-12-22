.class public Lcom/sec/daliviews/views/BackgroundView;
.super Lcom/sec/daliviews/views/ContainerViewBase;
.source "BackgroundView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FZZ)V
    .locals 8

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerViewBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/BackgroundView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/BackgroundView;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/BackgroundView;->init(JLandroid/graphics/Bitmap;FZZ)V

    iput-object p1, p0, Lcom/sec/daliviews/views/BackgroundView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private native animateBackgroundOffset(JFFF)V
.end method

.method private native blurBackground(JZ)V
.end method

.method private native init(JLandroid/graphics/Bitmap;FZZ)V
.end method

.method private native setBackgroundColorModulation(JI)V
.end method

.method private native setBackgroundScale(JFF)V
.end method


# virtual methods
.method public animateBackgroundOffset(FFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/BackgroundView;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/BackgroundView;->animateBackgroundOffset(JFFF)V

    return-void
.end method

.method public blurBackground(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/BackgroundView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/BackgroundView;->blurBackground(JZ)V

    return-void
.end method

.method protected native create()J
.end method

.method public recycleBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/BackgroundView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/BackgroundView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/BackgroundView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setBackgroundColorModulation(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/BackgroundView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/BackgroundView;->setBackgroundColorModulation(JI)V

    return-void
.end method

.method public setBackgroundScale(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/BackgroundView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/BackgroundView;->setBackgroundScale(JFF)V

    return-void
.end method
