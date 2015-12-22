.class public Lcom/sec/daliviews/views/MiniPageView;
.super Lcom/sec/daliviews/views/PageView;
.source "MiniPageView.java"


# instance fields
.field private mIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PageView;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/views/MiniPageView;->mIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/PageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/daliviews/views/MiniPageView;->mIndex:I

    return-void
.end method

.method private native setImages(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native updateImages(J)V
.end method


# virtual methods
.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/PageView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/MiniPageView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/PageView;->destroy()V

    return-void
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/MiniPageView;->mIndex:I

    return v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/MiniPageView;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/MiniPageView;->setImages(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/MiniPageView;->mIndex:I

    return-void
.end method

.method public updateImages()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/MiniPageView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/MiniPageView;->updateImages(J)V

    return-void
.end method
