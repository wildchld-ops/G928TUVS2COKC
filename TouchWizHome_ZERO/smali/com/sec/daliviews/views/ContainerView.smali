.class public Lcom/sec/daliviews/views/ContainerView;
.super Lcom/sec/daliviews/views/ContainerViewBase;
.source "ContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/ContainerView$Policy;
    }
.end annotation


# instance fields
.field public final HORIZONTAL:I

.field public final VERTICAL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerViewBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/views/ContainerView;->HORIZONTAL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/views/ContainerView;->VERTICAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/daliviews/views/ContainerView;->HORIZONTAL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/daliviews/views/ContainerView;->VERTICAL:I

    return-void
.end method

.method private native setBlackAndWhiteEffect(JZ)V
.end method

.method private native size(J)I
.end method


# virtual methods
.method public addView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method protected native create()J
.end method

.method public detachView(I)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->detachView(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public detachView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/daliviews/views/ContainerViewBase;->detachView(Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method protected inflateViewPolicy(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    new-instance v0, Lcom/sec/daliviews/views/ContainerView$Policy;

    invoke-direct {v0, p1, p2}, Lcom/sec/daliviews/views/ContainerView$Policy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/ContainerView;->setViewPolicy(Lcom/sec/daliviews/views/NativeViewBase$Policy;)V

    return-void
.end method

.method public insertView(ILcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase;->insertView(ILcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public setBlackAndWhiteEffect(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ContainerView;->setBlackAndWhiteEffect(JZ)V

    return-void
.end method

.method public size()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ContainerView;->size(J)I

    move-result v0

    return v0
.end method
