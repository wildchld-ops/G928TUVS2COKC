.class public Lcom/sec/daliviews/dragAndDrop/DragState;
.super Lcom/sec/daliviews/views/PeerBase;
.source "DragState.java"


# static fields
.field public static final INTERESTED_IN_ALL:I = 0x2

.field public static final INTERESTED_IN_ENTEREXIT:I = 0x1

.field public static final NOT_INTERESTED:I = 0x0

.field public static final STATE_CANCELING:I = 0x5

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_DROPPED:I = 0x2

.field public static final STATE_FINISHED:I = 0x4

.field public static final STATE_NOTDRAGGING:I = 0x0

.field public static final STATE_RESIZING:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/sec/daliviews/dragAndDrop/DragState;

.field private static volatile mDragState:I


# instance fields
.field private mDragContainer:Lcom/sec/daliviews/views/ContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/dragAndDrop/DragState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragState;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    const/4 v0, 0x0

    sput v0, Lcom/sec/daliviews/dragAndDrop/DragState;->mDragState:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragState;->mDragContainer:Lcom/sec/daliviews/views/ContainerView;

    return-void
.end method

.method private native HasDropAnimation(J)Z
.end method

.method private native SetDropAnimPosition(JFFF)V
.end method

.method private native SetDropAnimation(JZ)V
.end method

.method private native getDragFingerPosition(J)I
.end method

.method private native getDraggedItem(J)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method private native getDraggedItemParent(J)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method public static getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/dragAndDrop/DragState;

    invoke-direct {v0}, Lcom/sec/daliviews/dragAndDrop/DragState;-><init>()V

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    :cond_0
    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    return-object v0
.end method

.method private native getSwappedOutItemView(J)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method public static hasInstance()Z
    .locals 1

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDragging()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isResizing()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    invoke-virtual {v1}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private publishDragState(I)V
    .locals 0

    sput p1, Lcom/sec/daliviews/dragAndDrop/DragState;->mDragState:I

    return-void
.end method

.method private native setDragContainer(JJ)V
.end method

.method private native setDragSource(JJ)V
.end method

.method private native setInternalImageOffset(JII)V
.end method

.method private native setUseSetImageForSilhouette(JZ)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    iput-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragState;->mDragContainer:Lcom/sec/daliviews/views/ContainerView;

    const/4 v0, 0x0

    sput v0, Lcom/sec/daliviews/dragAndDrop/DragState;->mDragState:I

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->destroy()V

    return-void
.end method

.method public destroyNow()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragState;->instance:Lcom/sec/daliviews/dragAndDrop/DragState;

    iput-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragState;->mDragContainer:Lcom/sec/daliviews/views/ContainerView;

    const/4 v0, 0x0

    sput v0, Lcom/sec/daliviews/dragAndDrop/DragState;->mDragState:I

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->destroyNow()V

    return-void
.end method

.method public getDragContainer()Lcom/sec/daliviews/views/ContainerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragState;->mDragContainer:Lcom/sec/daliviews/views/ContainerView;

    return-object v0
.end method

.method public getDragFingerPosition()Landroid/graphics/Point;
    .locals 7

    const v6, 0xffff

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getmNPeer()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragFingerPosition(J)I

    move-result v0

    and-int v1, v0, v6

    shr-int/lit8 v3, v0, 0x10

    and-int v2, v3, v6

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method public getDragState()I
    .locals 1

    sget v0, Lcom/sec/daliviews/dragAndDrop/DragState;->mDragState:I

    return v0
.end method

.method public getDraggedItem()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->isValidPeer()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getmNPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDraggedItem(J)Lcom/sec/daliviews/views/NativeViewBase;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/daliviews/dragAndDrop/DragState;->TAG:Ljava/lang/String;

    const-string v3, "IllegalStateException calling native getDraggedItem"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/daliviews/dragAndDrop/DragState;->TAG:Ljava/lang/String;

    const-string v3, "getDraggedItem: isValidPeer() false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDraggedItemParent()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getmNPeer()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDraggedItemParent(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public getDropAnimation()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/dragAndDrop/DragState;->HasDropAnimation(J)Z

    move-result v0

    return v0
.end method

.method public getSwappedOutItemView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/dragAndDrop/DragState;->getSwappedOutItemView(J)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public setDragContainer(Lcom/sec/daliviews/views/ContainerView;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/daliviews/dragAndDrop/DragState;->mDragContainer:Lcom/sec/daliviews/views/ContainerView;

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerView;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/dragAndDrop/DragState;->setDragContainer(JJ)V

    return-void
.end method

.method public setDragSource(Lcom/sec/daliviews/views/ContainerViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/dragAndDrop/DragState;->setDragSource(JJ)V

    return-void
.end method

.method public setDropAnimPosition(FFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getmNPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/dragAndDrop/DragState;->SetDropAnimPosition(JFFF)V

    return-void
.end method

.method public setDropAnimation(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/dragAndDrop/DragState;->SetDropAnimation(JZ)V

    return-void
.end method

.method public setInternalImageOffset(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragState;->setInternalImageOffset(JII)V

    return-void
.end method

.method public setUseSetImageForSilhouette(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragState;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/dragAndDrop/DragState;->setUseSetImageForSilhouette(JZ)V

    return-void
.end method
