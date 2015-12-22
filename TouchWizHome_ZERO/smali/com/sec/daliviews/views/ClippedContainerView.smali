.class public Lcom/sec/daliviews/views/ClippedContainerView;
.super Lcom/sec/daliviews/views/ContainerView;
.source "ClippedContainerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClippedContainerView"


# instance fields
.field protected mClipping:Z

.field protected mLayerLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerView;-><init>()V

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/utils/LayerManager;->addLayer(Lcom/sec/daliviews/views/ClippedContainerView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/daliviews/utils/LayerManager;->addLayer(Lcom/sec/daliviews/views/ClippedContainerView;)V

    sget-object v1, Lcom/sec/daliviews/R$styleable;->ClippedContainerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->ClippedContainerView_layerHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/ClippedContainerView;->setLayerLocation(I)V

    sget v1, Lcom/sec/daliviews/R$styleable;->ClippedContainerView_clip:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/daliviews/views/ClippedContainerView;->setClipping(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private cleanup()V
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/utils/LayerManager;->removeLayer(Lcom/sec/daliviews/views/ClippedContainerView;)V

    return-void
.end method

.method private native lowerToBottom(J)V
.end method

.method private native raiseToTop(J)V
.end method

.method private native setClipping(JZ)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ClippedContainerView;->cleanup()V

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerView;->destroy()V

    return-void
.end method

.method public getLayerLocation()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/views/ClippedContainerView;->mLayerLocation:I

    return v0
.end method

.method public lowerToBottom()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ClippedContainerView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ClippedContainerView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ClippedContainerView;->lowerToBottom(J)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ClippedContainerView"

    const-string v1, "raiseToTop(), native object already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    goto :goto_0
.end method

.method protected onViewAttached()V
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    return-void
.end method

.method public raiseToTop()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ClippedContainerView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ClippedContainerView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ClippedContainerView;->raiseToTop(J)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ClippedContainerView"

    const-string v1, "raiseToTop(), native object already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    goto :goto_0
.end method

.method protected resetPeer()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ClippedContainerView;->cleanup()V

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerView;->resetPeer()V

    return-void
.end method

.method public setClipping(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/daliviews/views/ClippedContainerView;->mClipping:Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ClippedContainerView;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ClippedContainerView;->setClipping(JZ)V

    return-void
.end method

.method public setLayerLocation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/ClippedContainerView;->mLayerLocation:I

    return-void
.end method
