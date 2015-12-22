.class Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DVFSWrapper"
.end annotation


# instance fields
.field private busFreqBooster:Landroid/os/DVFSHelper;

.field private cpuCoreBooster:Landroid/os/DVFSHelper;

.field private cpuFreqBooster:Landroid/os/DVFSHelper;

.field private gpuFreqBooster:Landroid/os/DVFSHelper;

.field private mCpuMaxBooster:Landroid/os/DVFSHelper;

.field private mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 8

    const/16 v7, 0xe

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mCpuMaxBooster:Landroid/os/DVFSHelper;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->cpuFreqBooster:Landroid/os/DVFSHelper;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->busFreqBooster:Landroid/os/DVFSHelper;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->cpuCoreBooster:Landroid/os/DVFSHelper;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->gpuFreqBooster:Landroid/os/DVFSHelper;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mThread:Ljava/lang/Thread;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isDVFSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->cpuFreqBooster:Landroid/os/DVFSHelper;

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher"

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->busFreqBooster:Landroid/os/DVFSHelper;

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher"

    move v3, v7

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->cpuCoreBooster:Landroid/os/DVFSHelper;

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher"

    const/16 v3, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->gpuFreqBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->cpuFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->busFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->cpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->gpuFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/DVFSHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mCpuMaxBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mCpuMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mCpuMaxBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->boostOn()V

    return-void
.end method

.method private boostOff()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mThread:Ljava/lang/Thread;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isDVFSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->cpuFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->busFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->cpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->gpuFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mCpuMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1
.end method

.method private boostOn()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isDVFSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->cpuFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->busFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->cpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->gpuFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mCpuMaxBooster:Landroid/os/DVFSHelper;

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$26;->$SwitchMap$com$sec$android$app$launcher$activities$LauncherActivity$BoostKind:[I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBoosterEnabled:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$600(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mBoosterEnabled:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;
    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$600(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->boostOn()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    # getter for: Lcom/sec/android/app/launcher/activities/LauncherActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->access$800(Lcom/sec/android/app/launcher/activities/LauncherActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper$1;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper$2;

    const-string v1, "DVFS Wrapper"

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper$2;-><init>(Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/LauncherActivity$DVFSWrapper;->boostOff()V

    return-void
.end method
