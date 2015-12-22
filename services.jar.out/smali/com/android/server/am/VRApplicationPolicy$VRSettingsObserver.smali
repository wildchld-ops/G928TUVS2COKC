.class Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VRApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/VRApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VRApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/VRApplicationPolicy;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    # getter for: Lcom/android/server/am/VRApplicationPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/VRApplicationPolicy;->access$200(Lcom/android/server/am/VRApplicationPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vrmode_developer_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    # getter for: Lcom/android/server/am/VRApplicationPolicy;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/VRApplicationPolicy;->access$300(Lcom/android/server/am/VRApplicationPolicy;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/VRApplicationPolicy$VRSettingsObserver;->this$0:Lcom/android/server/am/VRApplicationPolicy;

    iput-boolean v0, v1, Lcom/android/server/am/VRApplicationPolicy;->mVRDevelopMode:Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
