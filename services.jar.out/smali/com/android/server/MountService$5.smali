.class Lcom/android/server/MountService$5;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iput-object p3, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x6

    if-ge v3, v6, :cond_2

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumePendingStates:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/LinkedHashMap;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "MountService"

    const-string v7, "\'%s\' waiting over pending state "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    const-string v6, "MountService"

    const-string v7, "Failed to mount media on insertion"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_5
    iget-object v6, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iget-object v7, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const-string v6, "MountService"

    const-string v7, "Insertion mount failed (%d)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method
