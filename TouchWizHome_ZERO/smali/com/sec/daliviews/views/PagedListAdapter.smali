.class public Lcom/sec/daliviews/views/PagedListAdapter;
.super Lcom/sec/daliviews/views/ListAdapter;
.source "PagedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/PagedListAdapter$OnItemsReorderedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mItemsReorderedListener:Lcom/sec/daliviews/views/PagedListAdapter$OnItemsReorderedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/PagedListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/PagedListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/ListAdapter;-><init>(Z)V

    return-void
.end method

.method private native reorderItems(J)V
.end method

.method private native reorderItems(JI)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public deserialiseReorderedItems([J)V
    .locals 14

    iget-object v10, p0, Lcom/sec/daliviews/views/PagedListAdapter;->mItemsReorderedListener:Lcom/sec/daliviews/views/PagedListAdapter$OnItemsReorderedListener;

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

    sget-object v10, Lcom/sec/daliviews/views/PagedListAdapter;->TAG:Ljava/lang/String;

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

    sget-object v10, Lcom/sec/daliviews/views/PagedListAdapter;->TAG:Ljava/lang/String;

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

    sget-object v10, Lcom/sec/daliviews/views/PagedListAdapter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deserialiseReorderedItems: item id "

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

    sget-object v10, Lcom/sec/daliviews/views/PagedListAdapter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deserialiseReorderedItems: item "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " id "

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
    iget-object v10, p0, Lcom/sec/daliviews/views/PagedListAdapter;->mItemsReorderedListener:Lcom/sec/daliviews/views/PagedListAdapter$OnItemsReorderedListener;

    invoke-interface {v10, v0}, Lcom/sec/daliviews/views/PagedListAdapter$OnItemsReorderedListener;->OnItemsReordered([Lcom/sec/daliviews/dragAndDrop/DisplacedItem;)V

    goto/16 :goto_0
.end method

.method public reorderItems()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedListAdapter;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedListAdapter;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems(J)V

    :cond_0
    return-void
.end method

.method public reorderItems(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedListAdapter;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/PagedListAdapter;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems(JI)V

    :cond_0
    return-void
.end method

.method public setOnItemsReorderedListener(Lcom/sec/daliviews/views/PagedListAdapter$OnItemsReorderedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/PagedListAdapter;->mItemsReorderedListener:Lcom/sec/daliviews/views/PagedListAdapter$OnItemsReorderedListener;

    return-void
.end method
