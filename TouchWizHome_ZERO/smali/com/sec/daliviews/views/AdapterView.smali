.class public Lcom/sec/daliviews/views/AdapterView;
.super Lcom/sec/daliviews/views/ContainerViewBase;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/AdapterView$1;,
        Lcom/sec/daliviews/views/AdapterView$Policy;,
        Lcom/sec/daliviews/views/AdapterView$AdapterViewRecycler;,
        Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;,
        Lcom/sec/daliviews/views/AdapterView$dragLocationListener;,
        Lcom/sec/daliviews/views/AdapterView$OnItemMoveListener;,
        Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;,
        Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sec/daliviews/views/Adapter;

.field private mDragLocationListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

.field private mItemClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;

.field private mItemLongClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;

.field private mItemTouchListener:Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;

.field private mRecycler:Lcom/sec/daliviews/views/ViewRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/AdapterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ContainerViewBase;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mAdapter:Lcom/sec/daliviews/views/Adapter;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemLongClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mDragLocationListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ContainerViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mAdapter:Lcom/sec/daliviews/views/Adapter;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemLongClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mDragLocationListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/daliviews/views/AdapterView;)Lcom/sec/daliviews/views/Adapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mAdapter:Lcom/sec/daliviews/views/Adapter;

    return-object v0
.end method

.method private native enableGrid(JZ)V
.end method

.method private native hideGrid(J)V
.end method

.method private native onChildRearranged(JJ)V
.end method

.method private native onChildSizeChanged(JJ)V
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mAdapter:Lcom/sec/daliviews/views/Adapter;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemLongClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method private native setAdapter(JJ)V
.end method

.method private native setViewRecycler(JJ)V
.end method

.method private native showGrid(J)V
.end method

.method private native showSnapshot(JJI)V
.end method

.method private native showSnapshot(JJ[II)V
.end method

.method private native stopLoadingViews(J)V
.end method


# virtual methods
.method public clearAdapter()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mAdapter:Lcom/sec/daliviews/views/Adapter;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/AdapterView;->setAdapter(JJ)V

    :cond_0
    return-void
.end method

.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/AdapterView;

    invoke-direct {v0}, Lcom/sec/daliviews/views/AdapterView;->reset()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method protected declared-synchronized createDefaultViewRecycler()J
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sec/daliviews/views/AdapterView$AdapterViewRecycler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/daliviews/views/AdapterView$AdapterViewRecycler;-><init>(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/AdapterView$1;)V

    invoke-virtual {v0}, Lcom/sec/daliviews/views/AdapterView$AdapterViewRecycler;->getPeer()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createGradationMask()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/AdapterView;->createGradationMask(J)V

    :cond_0
    return-void
.end method

.method public native createGradationMask(J)V
.end method

.method public destroyGradationMask()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/daliviews/views/AdapterView;->destroyGradationMask(J)V

    :cond_0
    return-void
.end method

.method public native destroyGradationMask(J)V
.end method

.method public enableGrid(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/AdapterView;->enableGrid(JZ)V

    return-void
.end method

.method public enterEditMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getViewPolicy()Lcom/sec/daliviews/views/AdapterView$Policy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/AdapterView$Policy;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/daliviews/views/AdapterView;->enterEditMode(J)V

    :cond_0
    return-void
.end method

.method protected native enterEditMode(J)V
.end method

.method public getAdapter()Lcom/sec/daliviews/views/Adapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mAdapter:Lcom/sec/daliviews/views/Adapter;

    return-object v0
.end method

.method public getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/daliviews/views/ContainerViewBase;->getNodeInfo(Landroid/util/SparseIntArray;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    return-void
.end method

.method public getRecycler()Lcom/sec/daliviews/views/ViewRecycler;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    return-object v0
.end method

.method public getViewPolicy()Lcom/sec/daliviews/views/AdapterView$Policy;
    .locals 1

    invoke-super {p0}, Lcom/sec/daliviews/views/ContainerViewBase;->getViewPolicy()Lcom/sec/daliviews/views/NativeViewBase$Policy;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/AdapterView$Policy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/AdapterView$Policy;

    invoke-direct {v0}, Lcom/sec/daliviews/views/AdapterView$Policy;-><init>()V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getViewPolicy()Lcom/sec/daliviews/views/NativeViewBase$Policy;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getViewPolicy()Lcom/sec/daliviews/views/AdapterView$Policy;

    move-result-object v0

    return-object v0
.end method

.method public hideGrid()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/AdapterView;->hideGrid(J)V

    return-void
.end method

.method protected inflateViewPolicy(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    new-instance v0, Lcom/sec/daliviews/views/AdapterView$Policy;

    invoke-direct {v0, p1, p2}, Lcom/sec/daliviews/views/AdapterView$Policy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/AdapterView;->setViewPolicy(Lcom/sec/daliviews/views/NativeViewBase$Policy;)V

    return-void
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChildRearranged(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/AdapterView;->onChildRearranged(JJ)V

    :cond_0
    return-void
.end method

.method public onChildSizeChanged(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/AdapterView;->onChildSizeChanged(JJ)V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;->onItemClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onItemLongPress(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemLongClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemLongClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onItemTouch(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemTouchListener:Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mItemTouchListener:Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;->onItemTouch(Lcom/sec/daliviews/views/AdapterView;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSilhouettePositionUpdated(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mDragLocationListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/AdapterView;->mDragLocationListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/daliviews/views/AdapterView$dragLocationListener;->onDragLocationChaned(II)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/sec/daliviews/views/Adapter;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/daliviews/views/AdapterView;->mAdapter:Lcom/sec/daliviews/views/Adapter;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Adapter;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/AdapterView;->setAdapter(JJ)V

    :cond_0
    return-void
.end method

.method public setDragLocationListener(Lcom/sec/daliviews/views/AdapterView$dragLocationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/AdapterView;->mDragLocationListener:Lcom/sec/daliviews/views/AdapterView$dragLocationListener;

    return-void
.end method

.method public setEditable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getViewPolicy()Lcom/sec/daliviews/views/AdapterView$Policy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/AdapterView$Policy;->setEditable(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/AdapterView;->setViewPolicy(Lcom/sec/daliviews/views/NativeViewBase$Policy;)V

    return-void
.end method

.method public setGradationThreshold(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/daliviews/views/AdapterView;->setGradationThreshold(JI)V

    :cond_0
    return-void
.end method

.method public native setGradationThreshold(JI)V
.end method

.method public setOnItemClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/AdapterView;->mItemClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/AdapterView;->mItemLongClickListener:Lcom/sec/daliviews/views/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemTouchListener(Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/AdapterView;->mItemTouchListener:Lcom/sec/daliviews/views/AdapterView$OnItemTouchListener;

    return-void
.end method

.method public setScreenGridSize(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/views/AdapterView;->setScreenGridSize(JII)V

    :cond_0
    return-void
.end method

.method public native setScreenGridSize(JII)V
.end method

.method public declared-synchronized setViewRecycler(Lcom/sec/daliviews/views/ViewRecycler;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/daliviews/views/AdapterView;->mRecycler:Lcom/sec/daliviews/views/ViewRecycler;

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ViewRecycler;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/AdapterView;->setViewRecycler(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showGrid()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/AdapterView;->showGrid(J)V

    return-void
.end method

.method public showSnapshot(Lcom/sec/daliviews/views/AdapterView;I)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/AdapterView;->showSnapshot(JJI)V

    :cond_0
    return-void
.end method

.method public showSnapshot(Lcom/sec/daliviews/views/AdapterView;[II)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/AdapterView;->showSnapshot(JJ[II)V

    :cond_0
    return-void
.end method

.method public stopLoadingViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/AdapterView;->stopLoadingViews(J)V

    :cond_0
    return-void
.end method
