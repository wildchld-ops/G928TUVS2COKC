.class public Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;
.super Lcom/sec/daliviews/views/Filter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListAdapterFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/views/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/daliviews/views/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    invoke-direct {p0}, Lcom/sec/daliviews/views/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Lcom/sec/daliviews/views/Filter$FilterResults;
    .locals 8

    new-instance v5, Lcom/sec/daliviews/views/Filter$FilterResults;

    invoke-direct {v5}, Lcom/sec/daliviews/views/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    # getter for: Lcom/sec/daliviews/views/ListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sec/daliviews/views/ListAdapter;->access$000(Lcom/sec/daliviews/views/ListAdapter;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    # getter for: Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/daliviews/views/ListAdapter;->access$100(Lcom/sec/daliviews/views/ListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, v5, Lcom/sec/daliviews/views/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, v5, Lcom/sec/daliviews/views/Filter$FilterResults;->count:I

    :goto_0
    return-object v5

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    # getter for: Lcom/sec/daliviews/views/ListAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sec/daliviews/views/ListAdapter;->access$000(Lcom/sec/daliviews/views/ListAdapter;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    # getter for: Lcom/sec/daliviews/views/ListAdapter;->mItems:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/daliviews/views/ListAdapter;->access$100(Lcom/sec/daliviews/views/ListAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/Item;->containsKeyword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    :cond_3
    iput-object v3, v5, Lcom/sec/daliviews/views/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, v5, Lcom/sec/daliviews/views/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Lcom/sec/daliviews/views/Filter$FilterResults;)V
    .locals 16

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/daliviews/views/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v4

    # invokes: Lcom/sec/daliviews/views/ListAdapter;->clear(J)V
    invoke-static {v3, v4, v5}, Lcom/sec/daliviews/views/ListAdapter;->access$200(Lcom/sec/daliviews/views/ListAdapter;J)V

    :goto_0
    move-object/from16 v0, p2

    iget v3, v0, Lcom/sec/daliviews/views/Filter$FilterResults;->count:I

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    new-array v6, v3, [J

    const/4 v10, 0x0

    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_1

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v11}, Lcom/sec/daliviews/views/Item;->getPeer()J

    move-result-wide v4

    aput-wide v4, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    iget v3, v3, Lcom/sec/daliviews/views/ListAdapter;->mGridRows:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    iget v4, v4, Lcom/sec/daliviews/views/ListAdapter;->mGridColumns:I

    mul-int v12, v3, v4

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v15, :cond_3

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/daliviews/views/Item;

    div-int v3, v10, v12

    invoke-virtual {v11, v3}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    div-int v3, v10, v12

    invoke-virtual {v11, v3}, Lcom/sec/daliviews/views/Item;->setCustomContainerId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    iget v3, v3, Lcom/sec/daliviews/views/ListAdapter;->mGridColumns:I

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    iget v3, v3, Lcom/sec/daliviews/views/ListAdapter;->mGridRows:I

    if-ne v9, v3, :cond_2

    const/4 v9, 0x0

    const/4 v14, 0x0

    :cond_2
    invoke-virtual {v11, v14}, Lcom/sec/daliviews/views/Item;->setCustomPos(I)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/ListAdapter;->getPeer()J

    move-result-wide v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    # invokes: Lcom/sec/daliviews/views/ListAdapter;->resetItems(J[JIZ)V
    invoke-static/range {v3 .. v8}, Lcom/sec/daliviews/views/ListAdapter;->access$300(Lcom/sec/daliviews/views/ListAdapter;J[JIZ)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/daliviews/views/ListAdapter$ListAdapterFilter;->this$0:Lcom/sec/daliviews/views/ListAdapter;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/ListAdapter;->notifyDataSetInvalidated()V

    goto/16 :goto_1
.end method
