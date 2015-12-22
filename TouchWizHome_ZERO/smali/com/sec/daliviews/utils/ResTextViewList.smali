.class public Lcom/sec/daliviews/utils/ResTextViewList;
.super Ljava/lang/Object;
.source "ResTextViewList.java"


# static fields
.field private static mAndroidResTextViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/daliviews/views/TextView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/daliviews/utils/ResTextViewList;->mAndroidResTextViews:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTextView(Lcom/sec/daliviews/views/TextView;)V
    .locals 3

    sget-object v2, Lcom/sec/daliviews/utils/ResTextViewList;->mAndroidResTextViews:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/sec/daliviews/utils/ResTextViewList;->mAndroidResTextViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static clear()V
    .locals 2

    sget-object v1, Lcom/sec/daliviews/utils/ResTextViewList;->mAndroidResTextViews:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/daliviews/utils/ResTextViewList;->mAndroidResTextViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static refreshLanguage()V
    .locals 5

    sget-object v4, Lcom/sec/daliviews/utils/ResTextViewList;->mAndroidResTextViews:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/sec/daliviews/utils/ResTextViewList;->mAndroidResTextViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v3, Lcom/sec/daliviews/utils/ResTextViewList;->mAndroidResTextViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->refreshResText()V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/sec/daliviews/utils/ResTextViewList;->mAndroidResTextViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
