.class public Lcom/sec/daliviews/views/CardViewContainer;
.super Lcom/sec/daliviews/views/ClippedContainerView;
.source "CardViewContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ClippedContainerView;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ClippedContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private native linkViewForAnimation(JJZ)V
.end method

.method private native setCollapsing(JZ)V
.end method

.method private native setContentView(JJ)V
.end method

.method private native setExpanding(JZ)V
.end method

.method private native setHasMultipleViews(JZ)V
.end method

.method private native unlinkView(JJ)V
.end method


# virtual methods
.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/ClippedContainerView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

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

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CardViewContainer;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/ClippedContainerView;->destroy()V

    return-void
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected linkViewForAnimation(Lcom/sec/daliviews/views/NativeViewBase;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CardViewContainer;->getmNPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/CardViewContainer;->linkViewForAnimation(JJZ)V

    return-void
.end method

.method protected setCollapsing(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CardViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/CardViewContainer;->setCollapsing(JZ)V

    return-void
.end method

.method protected setContentView(Lcom/sec/daliviews/views/ContainerView;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CardViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerView;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/CardViewContainer;->setContentView(JJ)V

    return-void
.end method

.method protected setExpanding(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CardViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/CardViewContainer;->setExpanding(JZ)V

    return-void
.end method

.method public setHasMultipleViews(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CardViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/CardViewContainer;->setHasMultipleViews(JZ)V

    return-void
.end method

.method protected unlinkView(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CardViewContainer;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/CardViewContainer;->unlinkView(JJ)V

    return-void
.end method
