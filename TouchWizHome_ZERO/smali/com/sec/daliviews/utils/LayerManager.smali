.class public Lcom/sec/daliviews/utils/LayerManager;
.super Ljava/lang/Object;
.source "LayerManager.java"


# static fields
.field public static final SECOND_TOP_LAYER:I = 0x63

.field public static final TOP_LAYER:I = 0x64

.field public static mInstance:Lcom/sec/daliviews/utils/LayerManager;


# instance fields
.field private mDisableLayerUpdate:Z

.field private mLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/views/ClippedContainerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/daliviews/utils/LayerManager;->mDisableLayerUpdate:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/utils/LayerManager;->mLayers:Ljava/util/ArrayList;

    return-void
.end method

.method public static destroy()V
    .locals 1

    sget-object v0, Lcom/sec/daliviews/utils/LayerManager;->mInstance:Lcom/sec/daliviews/utils/LayerManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/daliviews/utils/LayerManager;->mInstance:Lcom/sec/daliviews/utils/LayerManager;

    iget-object v0, v0, Lcom/sec/daliviews/utils/LayerManager;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public static instance()Lcom/sec/daliviews/utils/LayerManager;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/utils/LayerManager;->mInstance:Lcom/sec/daliviews/utils/LayerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/utils/LayerManager;

    invoke-direct {v0}, Lcom/sec/daliviews/utils/LayerManager;-><init>()V

    sput-object v0, Lcom/sec/daliviews/utils/LayerManager;->mInstance:Lcom/sec/daliviews/utils/LayerManager;

    :cond_0
    sget-object v0, Lcom/sec/daliviews/utils/LayerManager;->mInstance:Lcom/sec/daliviews/utils/LayerManager;

    return-object v0
.end method

.method private sortLayers()V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/utils/LayerManager;->mLayers:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/daliviews/utils/LayerManager$1;

    invoke-direct {v1, p0}, Lcom/sec/daliviews/utils/LayerManager$1;-><init>(Lcom/sec/daliviews/utils/LayerManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public addLayer(Lcom/sec/daliviews/views/ClippedContainerView;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/daliviews/utils/LayerManager;->mLayers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/utils/LayerManager;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLayer(Lcom/sec/daliviews/views/ClippedContainerView;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/daliviews/utils/LayerManager;->mLayers:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/daliviews/utils/LayerManager;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisableLayerUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/daliviews/utils/LayerManager;->mDisableLayerUpdate:Z

    return-void
.end method

.method public updateLayers()V
    .locals 4

    iget-object v3, p0, Lcom/sec/daliviews/utils/LayerManager;->mLayers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/sec/daliviews/utils/LayerManager;->sortLayers()V

    iget-boolean v2, p0, Lcom/sec/daliviews/utils/LayerManager;->mDisableLayerUpdate:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/daliviews/utils/LayerManager;->mLayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ClippedContainerView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ClippedContainerView;->getLayerLocation()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/daliviews/views/ClippedContainerView;->raiseToTop()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/sec/daliviews/views/ClippedContainerView;->lowerToBottom()V

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
