.class public Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;
.super Ljava/lang/Object;
.source "CocktailBarWakeUpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;
    }
.end annotation


# static fields
.field private static final COCKTAILBAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SECOND_SCREEN_WAKEUP_BOOST_TIMEOUT:I

.field private busMinFreqBooster:Landroid/os/DVFSHelper;

.field private cpuCoreBooster:Landroid/os/DVFSHelper;

.field private cpuFreq:I

.field private cpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private gpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private mCocktaiBarWakeUpState:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

.field private supportedBUSFreqTable:[I

.field private supportedCPUCoreTable:[I

.field private supportedGPUFreqTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->SECOND_SCREEN_WAKEUP_BOOST_TIMEOUT:I

    iput-object p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->prepareBooster()V

    return-void
.end method

.method private applyBooster(I)V
    .locals 3

    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyBooster cpuFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_3
    return-void
.end method

.method private isAllowedWakeUpCocktailBar()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAllowedWakeUpCocktailBar : false due to provision"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAllowedWakeUpCocktailBar : false due to emergency mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_information_stream"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private prepareBooster()V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const v1, 0x124f80

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    iget v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_1
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const/16 v3, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_2
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getWakeUpState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    return v0
.end method

.method public setWakeUpState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    return-void
.end method

.method public wakeupCocktailBar(ZI)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setWakeUpState(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->isAllowedWakeUpCocktailBar()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    const/16 v2, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->applyBooster(I)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p2}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;->onNotifyCocktailBarWakeUp(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p2}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;->onNotifyCocktailBarWakeUp(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
