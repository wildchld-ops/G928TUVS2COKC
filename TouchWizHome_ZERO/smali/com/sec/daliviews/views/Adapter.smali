.class public abstract Lcom/sec/daliviews/views/Adapter;
.super Lcom/sec/daliviews/views/PeerBase;
.source "Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/Adapter$DataSetObserver;
    }
.end annotation


# static fields
.field public static final SORT_ORDER_CUSTOM:I = 0x7

.field public static final SORT_ORDER_ID_ASC:I = 0x5

.field public static final SORT_ORDER_ID_DESC:I = 0x6

.field public static final SORT_ORDER_NONE:I = 0x0

.field public static final SORT_ORDER_POS_ASC:I = 0x1

.field public static final SORT_ORDER_POS_DESC:I = 0x2

.field public static final SORT_ORDER_TITLE_ASC:I = 0x3

.field public static final SORT_ORDER_TITLE_DESC:I = 0x4


# instance fields
.field protected mGridColumns:I

.field protected mGridRows:I

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Adapter$DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mOwnsItems:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    iput v0, p0, Lcom/sec/daliviews/views/Adapter;->mGridRows:I

    iput v0, p0, Lcom/sec/daliviews/views/Adapter;->mGridColumns:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Adapter;->mObservers:Ljava/util/List;

    iput-boolean p1, p0, Lcom/sec/daliviews/views/Adapter;->mOwnsItems:Z

    return-void
.end method

.method private native addAdapterListener(JJ)V
.end method

.method private native removeAdapterListener(JJ)V
.end method

.method private native setSortOrder(JI)V
.end method


# virtual methods
.method public addAdapterListener(Lcom/sec/daliviews/views/AdapterView;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Adapter;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/Adapter;->addAdapterListener(JJ)V

    return-void
.end method

.method public addItem(Lcom/sec/daliviews/views/Item;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/Adapter;->addItem(Lcom/sec/daliviews/views/Item;Z)V

    return-void
.end method

.method public abstract addItem(Lcom/sec/daliviews/views/Item;Z)V
.end method

.method public addItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/Adapter;->addItems(Ljava/util/List;Z)V

    return-void
.end method

.method public abstract addItems(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public detachAllItems()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/Adapter;->detachAllItems(Z)V

    return-void
.end method

.method public abstract detachAllItems(Z)V
.end method

.method public detachItem(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/Adapter;->detachItem(Lcom/sec/daliviews/views/Item;Z)Z

    move-result v0

    return v0
.end method

.method public abstract detachItem(Lcom/sec/daliviews/views/Item;Z)Z
.end method

.method public detachItems(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/Adapter;->detachItems(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public abstract detachItems(Ljava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract getItem(I)Lcom/sec/daliviews/views/Item;
.end method

.method public abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getView(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/AdapterView;)Lcom/sec/daliviews/views/NativeViewBase;
.end method

.method protected notifyDataSetChanged()V
    .locals 3

    iget-object v2, p0, Lcom/sec/daliviews/views/Adapter;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Adapter$DataSetObserver;

    invoke-interface {v1}, Lcom/sec/daliviews/views/Adapter$DataSetObserver;->onChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyDataSetInvalidated()V
    .locals 3

    iget-object v2, p0, Lcom/sec/daliviews/views/Adapter;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Adapter$DataSetObserver;

    invoke-interface {v1}, Lcom/sec/daliviews/views/Adapter$DataSetObserver;->onInvalidated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract onNativeItemAttached(J)V
.end method

.method protected abstract onNativeItemDetached(J)V
.end method

.method public registerDataSetObserver(Lcom/sec/daliviews/views/Adapter$DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Adapter;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAdapterListener(Lcom/sec/daliviews/views/AdapterView;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Adapter;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/AdapterView;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/Adapter;->removeAdapterListener(JJ)V

    return-void
.end method

.method public removeItem(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/Adapter;->removeItem(Lcom/sec/daliviews/views/Item;Z)Z

    move-result v0

    return v0
.end method

.method public abstract removeItem(Lcom/sec/daliviews/views/Item;Z)Z
.end method

.method public removeItems(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/Adapter;->removeItems(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public abstract removeItems(Ljava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public resetItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/Adapter;->resetItems(Ljava/util/List;Z)V

    return-void
.end method

.method public abstract resetItems(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public resetItemsAndSortOrder(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/daliviews/views/Adapter;->resetItemsAndSortOrder(Ljava/util/List;IZ)V

    return-void
.end method

.method public abstract resetItemsAndSortOrder(Ljava/util/List;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public setGridSize(II)V
    .locals 0

    iput p1, p0, Lcom/sec/daliviews/views/Adapter;->mGridRows:I

    iput p2, p0, Lcom/sec/daliviews/views/Adapter;->mGridColumns:I

    return-void
.end method

.method public setSortOrder(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/Adapter;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/Adapter;->setSortOrder(JI)V

    return-void
.end method

.method public unregisterDataSetObserver(Lcom/sec/daliviews/views/Adapter$DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Adapter;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract updateItem(Lcom/sec/daliviews/views/Item;)V
.end method
