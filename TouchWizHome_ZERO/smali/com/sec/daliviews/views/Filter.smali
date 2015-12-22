.class public abstract Lcom/sec/daliviews/views/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/Filter$1;,
        Lcom/sec/daliviews/views/Filter$FilterResults;,
        Lcom/sec/daliviews/views/Filter$FilterListener;,
        Lcom/sec/daliviews/views/Filter$RequestArguments;,
        Lcom/sec/daliviews/views/Filter$ResultsHandler;,
        Lcom/sec/daliviews/views/Filter$RequestHandler;
    }
.end annotation


# static fields
.field private static final FILTER_TOKEN:I = 0x1

.field private static final FINISH_TOKEN:I = 0x0

.field private static final FINISH_TOKEN_DELAY:I = 0xbb8

.field private static final SEARCH_TOKEN:I = 0x2

.field private static final THREAD_NAME:Ljava/lang/String; = "SearchFilter"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mResultHandler:Landroid/os/Handler;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/Filter;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/sec/daliviews/views/Filter$ResultsHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/daliviews/views/Filter$ResultsHandler;-><init>(Lcom/sec/daliviews/views/Filter;Lcom/sec/daliviews/views/Filter$1;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/Filter;->mResultHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Lcom/sec/daliviews/views/Filter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Filter;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/daliviews/views/Filter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Filter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/daliviews/views/Filter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/daliviews/views/Filter;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private perform(Ljava/lang/CharSequence;ILcom/sec/daliviews/views/Filter$FilterListener;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/daliviews/views/Filter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "SearchFilter"

    const/16 v6, 0xa

    invoke-direct {v2, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/sec/daliviews/views/Filter$RequestHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/sec/daliviews/views/Filter$RequestHandler;-><init>(Lcom/sec/daliviews/views/Filter;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;

    :cond_0
    iget-object v5, p0, Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Lcom/sec/daliviews/views/Filter$RequestArguments;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/sec/daliviews/views/Filter$RequestArguments;-><init>(Lcom/sec/daliviews/views/Filter$1;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iput-object v3, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/sec/daliviews/views/Filter$RequestArguments;->filterListener:Lcom/sec/daliviews/views/Filter$FilterListener;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/daliviews/views/Filter;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/daliviews/views/Filter;->filter(Ljava/lang/CharSequence;Lcom/sec/daliviews/views/Filter$FilterListener;)V

    return-void
.end method

.method public filter(Ljava/lang/CharSequence;Lcom/sec/daliviews/views/Filter$FilterListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/daliviews/views/Filter;->perform(Ljava/lang/CharSequence;ILcom/sec/daliviews/views/Filter$FilterListener;)V

    return-void
.end method

.method protected abstract performFiltering(Ljava/lang/CharSequence;)Lcom/sec/daliviews/views/Filter$FilterResults;
.end method

.method protected abstract publishResults(Ljava/lang/CharSequence;Lcom/sec/daliviews/views/Filter$FilterResults;)V
.end method

.method public search(Ljava/lang/CharSequence;Lcom/sec/daliviews/views/Filter$FilterListener;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/daliviews/views/Filter;->perform(Ljava/lang/CharSequence;ILcom/sec/daliviews/views/Filter$FilterListener;)V

    return-void
.end method
