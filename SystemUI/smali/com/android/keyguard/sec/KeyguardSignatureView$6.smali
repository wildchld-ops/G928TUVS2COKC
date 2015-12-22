.class Lcom/android/keyguard/sec/KeyguardSignatureView$6;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-static {p2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$102(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;

    const-string v0, "KeyguardSignatureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected to sign service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->initRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "KeyguardSignatureView"

    const-string v2, "Disconnected to sign service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$102(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$6;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mEngineStarted:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$302(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
