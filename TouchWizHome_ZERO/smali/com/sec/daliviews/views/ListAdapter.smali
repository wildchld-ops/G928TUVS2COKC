.class public Lcom/sec/daliviews/views/ListAdapter;
.super Lcom/sec/daliviews/views/Adapter;
.source "ListAdapter.java"

# interfaces
.implements Lcom/sec/daliviews/views/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mFilter:Lcom/sec/daliviews/views/Filter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/ListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/Adapter;-><init>(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mFilter:Lcom/sec/daliviews/views/Filter;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/daliviews/views/ListAdapter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/daliviews/views/ListAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/daliviews/views/ListAdapter;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ListAdapter;->clear(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/daliviews/views/ListAdapter;J[JIZ)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/sec/daliviews/views/ListAdapter;->resetItems(J[JIZ)V

    return-void
.end method

.method private native addItem(JJZ)V
.end method

.method private native addItems(J[JIZ)V
.end method

.method private cleanupJava()V
    .locals 3

    iget-boolean v2, p0, Lcom/sec/daliviews/views/ListAdapter;->mOwnsItems:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private native clear(J)V
.end method

.method private native detachAllItems(JZ)V
.end method

.method private native detachItem(JJZ)V
.end method

.method private native detachItems(J[JIZ)V
.end method

.method private native refresh(J)V
.end method

.method private native removeItem(JJZ)V
.end method

.method private native removeItems(J[JIZ)V
.end method

.method private native resetItems(J[JIZ)V
.end method

.method private native resetItemsAndSortOrder(J[JIIZ)V
.end method

.method private native updateItem(JJ)V
.end method


# virtual methods
.method public addItem(Lcom/sec/daliviews/views/Item;Z)V
    .locals 7

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPeerAndCreateIfNeeded()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ListAdapter;->addItem(JJZ)V

    return-void
.end method

.method public addItems(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/ListAdapter;->getItemPeerArray(Ljava/util/List;)[J

    move-result-object v4

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ListAdapter;->addItems(J[JIZ)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ListAdapter;->clear(J)V

    invoke-direct {p0}, Lcom/sec/daliviews/views/ListAdapter;->cleanupJava()V

    return-void
.end method

.method protected native create()J
.end method

.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/daliviews/views/Adapter;->destroy()V

    invoke-direct {p0}, Lcom/sec/daliviews/views/ListAdapter;->cleanupJava()V

    return-void
.end method

.method public detachAllItems(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/ListAdapter;->detachAllItems(JZ)V

    return-void
.end method

.method public detachItem(Lcom/sec/daliviews/views/Item;Z)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ListAdapter;->detachItem(JJZ)V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/daliviews/views/ListAdapter;->mOwnsItems:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->destroy()V

    :cond_0
    :goto_1
    return v0

    :cond_1
    sget-object v2, Lcom/sec/daliviews/views/ListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "detachItem : item peer is null - %s(%d,%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public detachItems(Ljava/util/List;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [J

    iget-object v2, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->getPeer()J

    move-result-wide v2

    aput-wide v2, v4, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sec/daliviews/views/ListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "detachItems : item peer is null - %s(%d,%d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    aput-wide v2, v4, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ListAdapter;->detachItems(J[JIZ)V

    iget-boolean v1, p0, Lcom/sec/daliviews/views/ListAdapter;->mOwnsItems:Z

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->destroy()V

    goto :goto_3

    :cond_4
    move v1, v9

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Lcom/sec/daliviews/views/Filter;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mFilter:Lcom/sec/daliviews/views/Filter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;-><init>(Lcom/sec/daliviews/views/ListAdapter;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mFilter:Lcom/sec/daliviews/views/Filter;

    :cond_0
    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mFilter:Lcom/sec/daliviews/views/Filter;

    return-object v0
.end method

.method public getItem(I)Lcom/sec/daliviews/views/Item;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/Item;

    return-object v0
.end method

.method getItemPeerArray(Ljava/util/List;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)[J"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [J

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getPeerAndCreateIfNeeded()J

    move-result-wide v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getView(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/AdapterView;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/sec/daliviews/views/Item;->populateView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/daliviews/views/Item;->createItemView(Z)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object p2

    goto :goto_0
.end method

.method public onNativeItemAttached(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onNativeItemDetached(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ListAdapter;->refresh(J)V

    return-void
.end method

.method public removeItem(Lcom/sec/daliviews/views/Item;Z)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPeer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ListAdapter;->removeItem(JJZ)V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/daliviews/views/ListAdapter;->mOwnsItems:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->destroy()V

    :cond_0
    :goto_1
    return v0

    :cond_1
    sget-object v2, Lcom/sec/daliviews/views/ListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "removeItem : item peer is null - %s(%d,%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public removeItems(Ljava/util/List;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [J

    iget-object v2, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->getPeer()J

    move-result-wide v2

    aput-wide v2, v4, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sec/daliviews/views/ListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "removeItems : item peer is null - %s(%d,%d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    aput-wide v2, v4, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ListAdapter;->removeItems(J[JIZ)V

    iget-boolean v1, p0, Lcom/sec/daliviews/views/ListAdapter;->mOwnsItems:Z

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v8}, Lcom/sec/daliviews/views/Item;->destroy()V

    goto :goto_3

    :cond_4
    move v1, v9

    goto :goto_0
.end method

.method public resetItems(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ListAdapter;->clear(J)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/ListAdapter;->getItemPeerArray(Ljava/util/List;)[J

    move-result-object v4

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/views/ListAdapter;->resetItems(J[JIZ)V

    goto :goto_0
.end method

.method public resetItemsAndSortOrder(Ljava/util/List;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;IZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/ListAdapter;->clear(J)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/daliviews/views/ListAdapter;->getItemPeerArray(Ljava/util/List;)[J

    move-result-object v4

    iget-object v0, p0, Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/views/ListAdapter;->resetItemsAndSortOrder(J[JIIZ)V

    goto :goto_0
.end method

.method protected resetPeer()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ListAdapter;->cleanupJava()V

    invoke-super {p0}, Lcom/sec/daliviews/views/Adapter;->resetPeer()V

    return-void
.end method

.method public updateItem(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/ListAdapter;->updateItem(JJ)V

    :cond_0
    return-void
.end method
