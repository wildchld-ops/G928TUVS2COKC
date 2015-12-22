.class public abstract Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;
.super Ljava/lang/Object;
.source "DataItemBase.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;
.implements Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/DataItemBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "LoadTask"
.end annotation


# instance fields
.field protected volatile mCancelled:Z

.field protected mTaskView:Lcom/sec/daliviews/views/NativeViewBase;

.field final synthetic this$0:Lcom/sec/android/app/launcher/data/DataItemBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/data/DataItemBase;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->this$0:Lcom/sec/android/app/launcher/data/DataItemBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->mCancelled:Z

    iput-object p2, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->mTaskView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/sec/daliviews/views/NativeViewBase;->registerDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->cancelNoRemove()V

    return-void
.end method

.method private addTask(Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->this$0:Lcom/sec/android/app/launcher/data/DataItemBase;

    # getter for: Lcom/sec/android/app/launcher/data/DataItemBase;->mTasks:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/DataItemBase;->access$000(Lcom/sec/android/app/launcher/data/DataItemBase;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->this$0:Lcom/sec/android/app/launcher/data/DataItemBase;

    # getter for: Lcom/sec/android/app/launcher/data/DataItemBase;->mTasks:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/DataItemBase;->access$000(Lcom/sec/android/app/launcher/data/DataItemBase;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private cancelAndRemoveTask()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->mCancelled:Z

    invoke-direct {p0, p0}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->removeTask(Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)V

    return-void
.end method

.method private cancelNoRemove()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->mCancelled:Z

    return-void
.end method

.method private removeTask(Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->this$0:Lcom/sec/android/app/launcher/data/DataItemBase;

    # getter for: Lcom/sec/android/app/launcher/data/DataItemBase;->mTasks:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/DataItemBase;->access$000(Lcom/sec/android/app/launcher/data/DataItemBase;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->this$0:Lcom/sec/android/app/launcher/data/DataItemBase;

    # getter for: Lcom/sec/android/app/launcher/data/DataItemBase;->mTasks:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/DataItemBase;->access$000(Lcom/sec/android/app/launcher/data/DataItemBase;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->mCancelled:Z

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->mCancelled:Z

    return v0
.end method

.method public onPeerDestroyed(Lcom/sec/daliviews/views/PeerBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->cancelAndRemoveTask()V

    return-void
.end method

.method public onPostLoad(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p0}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->removeTask(Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->mTaskView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->mTaskView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0, p0}, Lcom/sec/daliviews/views/NativeViewBase;->unregisterDestroyListener(Lcom/sec/daliviews/views/PeerBase$OnPeerDestroyedListener;)V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->mCancelled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p0}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->addTask(Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)V

    goto :goto_0
.end method
