.class public Lcom/sec/daliviews/dragAndDrop/DragAndDrop;
.super Lcom/sec/daliviews/views/PeerBase;
.source "DragAndDrop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DisplacedItemsListener;,
        Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;,
        Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final VECTORISE_ENTER_EXIT_THRESHOLD:I = 0x2

.field private static instance:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;


# instance fields
.field private mDisplacedItemsListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DisplacedItemsListener;

.field private mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

.field private mDraggedItem:Lcom/sec/daliviews/views/Item;

.field private mHandler:Landroid/os/Handler;

.field private mResizeFrame:Lcom/sec/daliviews/views/ResizeFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->instance:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    return-void
.end method

.method private constructor <init>(Lcom/sec/daliviews/views/ContainerView;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    iput-object v7, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    iput-object v7, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDraggedItem:Lcom/sec/daliviews/views/Item;

    iput-object v7, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mResizeFrame:Lcom/sec/daliviews/views/ResizeFrame;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mHandler:Landroid/os/Handler;

    iput-object v7, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDisplacedItemsListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DisplacedItemsListener;

    if-nez p1, :cond_1

    new-instance p1, Lcom/sec/daliviews/views/ClippedContainerView;

    invoke-direct {p1}, Lcom/sec/daliviews/views/ClippedContainerView;-><init>()V

    instance-of v0, p1, Lcom/sec/daliviews/views/ClippedContainerView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/daliviews/views/ClippedContainerView;

    const/16 v6, 0x63

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/ClippedContainerView;->setLayerLocation(I)V

    move-object v0, p1

    check-cast v0, Lcom/sec/daliviews/views/ClippedContainerView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/daliviews/views/ClippedContainerView;->setClipping(Z)V

    invoke-static {}, Lcom/sec/daliviews/utils/LayerManager;->instance()Lcom/sec/daliviews/utils/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/utils/LayerManager;->updateLayers()V

    :cond_0
    new-instance v0, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;

    const/16 v6, 0x33

    invoke-direct {v0, v8, v8, v6}, Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/ContainerView;->setLayoutParams(Lcom/sec/daliviews/views/NativeViewBase$LayoutParams;)V

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    new-instance v0, Lcom/sec/daliviews/layouts/AbsoluteLayout;

    invoke-direct/range {v0 .. v5}, Lcom/sec/daliviews/layouts/AbsoluteLayout;-><init>(ZZZZF)V

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/ContainerView;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/daliviews/dragAndDrop/DragState;->setDragContainer(Lcom/sec/daliviews/views/ContainerView;)V

    return-void
.end method

.method public static Create(Lcom/sec/daliviews/views/ContainerView;)V
    .locals 1

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->instance:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;-><init>(Lcom/sec/daliviews/views/ContainerView;)V

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->instance:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ContainerView;->unparentAndDestroy()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;JJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->onResizeStart(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->onResizeFinished()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->onDragEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->onDragCancel(Z)V

    return-void
.end method

.method private native configureShrinkEffect(JFF)V
.end method

.method private native enableSilhouetteVisibility(JZ)V
.end method

.method public static getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;
    .locals 2

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->instance:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;-><init>(Lcom/sec/daliviews/views/ContainerView;)V

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->instance:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    :cond_0
    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->instance:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->instance:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native makeSilhouetteVisible(JZ)V
.end method

.method private native onDragCancel(Z)V
.end method

.method private native onDragEnd()V
.end method

.method private native onDragStart(JJII)V
.end method

.method private native onResizeFinished()V
.end method

.method private native onResizeStart(JJ)V
.end method

.method private native setMotionBlurParams(JFFFF)V
.end method

.method private native setResizeFrame(J)V
.end method


# virtual methods
.method public configureShrinkEffect(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->configureShrinkEffect(JFF)V

    return-void
.end method

.method protected native create()J
.end method

.method public deleteOrphanedItem(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/Item;->destroy()V

    :cond_0
    return-void
.end method

.method public deserialiseDisplacedItems([J)V
    .locals 14

    iget-object v10, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDisplacedItemsListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DisplacedItemsListener;

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0xf

    add-int/lit8 v3, v2, 0x1

    aget-wide v10, p1, v2

    long-to-int v8, v10

    add-int/lit8 v2, v3, 0x1

    aget-wide v10, p1, v3

    long-to-int v9, v10

    sget-object v10, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deserialiseDisplacedItems: numItems "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_1

    sget-object v10, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Record size mis-match! Expected 15 got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-array v0, v8, [Lcom/sec/daliviews/dragAndDrop/DisplacedItem;

    const/4 v7, 0x0

    move v3, v2

    :goto_1
    if-ge v7, v8, :cond_3

    add-int/lit8 v2, v3, 0x1

    aget-wide v4, p1, v3

    invoke-static {v4, v5}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v10, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deserialiseDisplacedItems: item id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not exist"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v9, -0x1

    add-int/2addr v2, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    new-instance v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;

    invoke-direct {v10}, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;-><init>()V

    aput-object v10, v0, v7

    aget-object v10, v0, v7

    iput-object v6, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    aget-object v10, v0, v7

    add-int/lit8 v3, v2, 0x1

    aget-wide v12, p1, v2

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellX:I

    aget-object v10, v0, v7

    add-int/lit8 v2, v3, 0x1

    aget-wide v12, p1, v3

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellY:I

    aget-object v10, v0, v7

    add-int/lit8 v3, v2, 0x1

    aget-wide v12, p1, v2

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldPos:I

    aget-object v10, v0, v7

    add-int/lit8 v2, v3, 0x1

    aget-wide v12, p1, v3

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldSpanX:I

    aget-object v10, v0, v7

    add-int/lit8 v3, v2, 0x1

    aget-wide v12, p1, v2

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldSpanY:I

    aget-object v10, v0, v7

    add-int/lit8 v2, v3, 0x1

    aget-wide v12, p1, v3

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerDbId:I

    aget-object v10, v0, v7

    add-int/lit8 v3, v2, 0x1

    aget-wide v12, p1, v2

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerType:I

    aget-object v10, v0, v7

    add-int/lit8 v2, v3, 0x1

    aget-wide v12, p1, v3

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellX:I

    aget-object v10, v0, v7

    add-int/lit8 v3, v2, 0x1

    aget-wide v12, p1, v2

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellY:I

    aget-object v10, v0, v7

    add-int/lit8 v2, v3, 0x1

    aget-wide v12, p1, v3

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewPos:I

    aget-object v10, v0, v7

    add-int/lit8 v3, v2, 0x1

    aget-wide v12, p1, v2

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewSpanX:I

    aget-object v10, v0, v7

    add-int/lit8 v2, v3, 0x1

    aget-wide v12, p1, v3

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewSpanY:I

    aget-object v10, v0, v7

    add-int/lit8 v3, v2, 0x1

    aget-wide v12, p1, v2

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    aget-object v10, v0, v7

    add-int/lit8 v2, v3, 0x1

    aget-wide v12, p1, v3

    long-to-int v11, v12

    iput v11, v10, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    sget-object v10, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deserialiseDisplacedItems: item id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " moved from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v7

    iget v12, v12, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v7

    iget v12, v12, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldCellY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v7

    iget v12, v12, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldPos:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v7

    iget v12, v12, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v7

    iget v12, v12, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v7

    iget v12, v12, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewPos:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") and from dbid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v7

    iget v12, v12, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerDbId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v7

    iget v12, v12, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mOldContainerType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to dbid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v7

    iget v12, v12, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v7

    iget v12, v12, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    iget-object v10, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDisplacedItemsListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DisplacedItemsListener;

    invoke-interface {v10, v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DisplacedItemsListener;->onItemsDisplaced([Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V

    goto/16 :goto_0
.end method

.method public deserialiseEnterExitViews(II[Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 6

    if-nez p3, :cond_0

    sget-object v3, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v4, "No serialised data in deserialiseEnterExitViews"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deserialiseEnterExitViews() call: NumExitViews="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NumEnterViews="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", datalen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    array-length v4, p3

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v4, "serialised data length inconsistent with other parameters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    aget-object v1, p3, v3

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    sget-object v3, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exit on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dragView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, p3, v0

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/NativeViewBase;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_3

    sget-object v3, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dragView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, p3, v0

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/NativeViewBase;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v4, "(J)deserialiseEnterExitViews() retn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deserialiseEnterViews(I[Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 6

    if-eqz p2, :cond_0

    add-int/lit8 v3, p1, 0x1

    array-length v4, p2

    if-eq v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    aget-object v1, p2, v3

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    sget-object v3, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dragView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, p2, v0

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/NativeViewBase;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public deserialiseExitViews(I[Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 6

    if-eqz p2, :cond_0

    add-int/lit8 v3, p1, 0x1

    array-length v4, p2

    if-eq v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    aget-object v1, p2, v3

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    sget-object v3, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exit on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dragView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, p2, v0

    invoke-virtual {v3, v1}, Lcom/sec/daliviews/views/NativeViewBase;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragState;->destroy()V

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->destroy()V

    sput-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->instance:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    return-void
.end method

.method public destroyNow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragState;->destroyNow()V

    invoke-super {p0}, Lcom/sec/daliviews/views/PeerBase;->destroyNow()V

    sput-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->instance:Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    return-void
.end method

.method public disableSilhouette()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getPeer()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->enableSilhouetteVisibility(JZ)V

    return-void
.end method

.method public dragCancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel(Z)V

    return-void
.end method

.method public dragCancel(Z)V
    .locals 3

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dragCancel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$4;-><init>(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dragEnd()V
    .locals 2

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v1, "dragEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$3;

    invoke-direct {v1, p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$3;-><init>(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dragEnter() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragEnter(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public dragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 3

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dragExit() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragExit(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V

    return-void
.end method

.method public dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;FFII)V

    return-void
.end method

.method public dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;FFII)V
    .locals 9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;Lcom/sec/daliviews/views/NativeViewBase;FFII)V

    return-void
.end method

.method public dragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;Landroid/view/MotionEvent;Lcom/sec/daliviews/views/NativeViewBase;FFII)V
    .locals 8

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v1, "dragStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDraggedItem:Lcom/sec/daliviews/views/Item;

    const-wide/16 v4, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v4

    :cond_0
    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->onDragStart(JJII)V

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDragStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method public drop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 2

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v1, "drop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    iget-object v1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDraggedItem:Lcom/sec/daliviews/views/Item;

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->onDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method public native enableDragViewToCenter(Z)V
.end method

.method public enableSilhouette()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getPeer()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->enableSilhouetteVisibility(JZ)V

    return-void
.end method

.method public getDraggedItem()Lcom/sec/daliviews/views/Item;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDraggedItem:Lcom/sec/daliviews/views/Item;

    return-object v0
.end method

.method public native initEmitterProperties(FFFIIIFFFFFFFFFFFFFFFFFFLjava/lang/String;)V
.end method

.method public invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/ContainerViewBase;)Z
    .locals 3

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v2, "invalidDrop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    iget-object v2, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDraggedItem:Lcom/sec/daliviews/views/Item;

    invoke-interface {v1, p1, p2, v2, p3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;->invalidDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/ContainerViewBase;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v2, "invalidDrop() - app failed to place the item alternatively. Canceling drag"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    :cond_0
    return v0
.end method

.method public makeSilhouetteVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->makeSilhouetteVisible(JZ)V

    return-void
.end method

.method public native oneShotRearrange(JJZ)Z
.end method

.method public oneShotRearrange(Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->oneShotRearrange(Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Z)Z

    move-result v0

    return v0
.end method

.method public oneShotRearrange(Lcom/sec/daliviews/views/ContainerViewBase;Lcom/sec/daliviews/views/Item;Z)Z
    .locals 7

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v1, "oneShotRearrange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->oneShotRearrange(JJZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/daliviews/views/ContainerViewBase;->getPeer()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->oneShotRearrange(JJZ)Z

    move-result v0

    goto :goto_0
.end method

.method public resizeEnd()V
    .locals 2

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v1, "resizeEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    return-void
.end method

.method public resizeFinished()V
    .locals 2

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v1, "resizeFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$2;

    invoke-direct {v1, p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$2;-><init>(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v1, "resizeStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$1;-><init>(Lcom/sec/daliviews/dragAndDrop/DragAndDrop;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDisplacedItemsListener(Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DisplacedItemsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDisplacedItemsListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DisplacedItemsListener;

    return-void
.end method

.method public native setDnDEffect(I)V
.end method

.method public setDragListener(Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->TAG:Ljava/lang/String;

    const-string v1, "Drag Listener Overwritten"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mDragListener:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$OnDragListener;

    return-void
.end method

.method public native setDragViewOffset(FF)V
.end method

.method public native setFadeOutItem(Z)V
.end method

.method public setMotionBlurParams(FFFF)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setMotionBlurParams(JFFFF)V

    return-void
.end method

.method public setResizeFrame(Lcom/sec/daliviews/views/ResizeFrame;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mResizeFrame:Lcom/sec/daliviews/views/ResizeFrame;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->mResizeFrame:Lcom/sec/daliviews/views/ResizeFrame;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/ResizeFrame;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setResizeFrame(J)V

    :cond_0
    return-void
.end method

.method public native setSilhouetteOpacity(F)V
.end method

.method public native setSilhouetteQuality(F)V
.end method

.method public native tempEnableShrinkEffect(Z)V
.end method
