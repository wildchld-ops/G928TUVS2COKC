.class Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/ResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalizerServiceConnection"
.end annotation


# instance fields
.field private volatile mConnected:Z

.field private volatile mNeedClearData:Z

.field final synthetic this$0:Lcom/ime/implement/setting/ResetSettings;


# direct methods
.method private constructor <init>(Lcom/ime/implement/setting/ResetSettings;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->this$0:Lcom/ime/implement/setting/ResetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->mConnected:Z

    iput-boolean v0, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->mNeedClearData:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ime/implement/setting/ResetSettings;Lcom/ime/implement/setting/ResetSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;-><init>(Lcom/ime/implement/setting/ResetSettings;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->mConnected:Z

    move-object v0, p2

    check-cast v0, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->this$0:Lcom/ime/implement/setting/ResetSettings;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;->getService()Lcom/touchtype/personalizer/PersonalizerService;

    move-result-object v2

    # setter for: Lcom/ime/implement/setting/ResetSettings;->mService:Lcom/touchtype/personalizer/PersonalizerService;
    invoke-static {v1, v2}, Lcom/ime/implement/setting/ResetSettings;->access$102(Lcom/ime/implement/setting/ResetSettings;Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizerService;

    iget-boolean v1, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->mNeedClearData:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->this$0:Lcom/ime/implement/setting/ResetSettings;

    # invokes: Lcom/ime/implement/setting/ResetSettings;->clearUserModel()V
    invoke-static {v1}, Lcom/ime/implement/setting/ResetSettings;->access$200(Lcom/ime/implement/setting/ResetSettings;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->mNeedClearData:Z

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->mConnected:Z

    iput-boolean v0, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->mNeedClearData:Z

    return-void
.end method

.method public declared-synchronized setClearUserModelModel(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/ime/implement/setting/ResetSettings$PersonalizerServiceConnection;->mNeedClearData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
