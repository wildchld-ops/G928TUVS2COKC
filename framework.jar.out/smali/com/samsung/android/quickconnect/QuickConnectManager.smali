.class public final Lcom/samsung/android/quickconnect/QuickConnectManager;
.super Ljava/lang/Object;
.source "QuickConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;,
        Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;
    }
.end annotation


# static fields
.field public static final DO_QUICK_CONNECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QuickConnectManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/quickconnect/IQuickConnectManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    return-void
.end method


# virtual methods
.method public registerListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const-string v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v0

    move-object v4, v3

    :goto_1
    if-nez v4, :cond_3

    :try_start_1
    new-instance v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p1, v5}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;-><init>(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v7}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_3
    :try_start_4
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :catch_0
    move-exception v1

    :try_start_5
    const-string v5, "QuickConnectManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException in registerListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_4

    :cond_3
    move-object v3, v4

    goto :goto_2

    :cond_4
    move-object v4, v3

    goto :goto_1
.end method

.method public registerListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/content/Context;)V
    .locals 10

    if-nez p1, :cond_0

    const-string v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    :try_start_0
    const-string v5, "QuickConnectManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerListener with context  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    const/4 v3, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v0

    move-object v4, v3

    :goto_2
    if-nez v4, :cond_3

    :try_start_2
    new-instance v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p1, v5}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;-><init>(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v7}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_4
    :try_start_5
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    :catch_0
    move-exception v1

    const-string v5, "QuickConnectManager"

    const-string/jumbo v6, "registerListener with context, context is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_6
    const-string v5, "QuickConnectManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException in registerListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_5

    :cond_3
    move-object v3, v4

    goto :goto_3

    :cond_4
    move-object v4, v3

    goto :goto_2
.end method

.method public terminate()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V
    .locals 8

    const-string v4, "QuickConnectManager"

    const-string/jumbo v5, "unregisterListener!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v4, "QuickConnectManager"

    const-string/jumbo v5, "unregisterListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->getListener()Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v0

    :cond_2
    if-nez v3, :cond_3

    const-string v4, "QuickConnectManager"

    const-string/jumbo v6, "quickconnectListener is null"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    if-eqz v4, :cond_4

    const-string v4, "QuickConnectManager"

    const-string/jumbo v6, "mQuickConnectService != null"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mQuickConnectService:Lcom/samsung/android/quickconnect/IQuickConnectManager;

    invoke-interface {v4, v3}, Lcom/samsung/android/quickconnect/IQuickConnectManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/quickconnect/QuickConnectManager;->mListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListenerDelegate;->mListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "QuickConnectManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException in unregisterListener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
