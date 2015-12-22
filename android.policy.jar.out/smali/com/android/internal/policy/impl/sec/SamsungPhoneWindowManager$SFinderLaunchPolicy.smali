.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SFinderLaunchPolicy"
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "com.sec.feature.findo"

.field private static final TAG:Ljava/lang/String; = "SFinderLaunchPolicy"


# instance fields
.field private mDeniedActivities:[Ljava/lang/String;

.field private mFeatureCached:Z

.field private mFeatureEnabled:Z

.field private mLaunchSFinder:Ljava/lang/Runnable;

.field private mSFinderIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "{com.android.phone/com.android.phone.UsimDownload}"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    const-string v1, "callername"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isLaunchable()Z

    move-result v0

    return v0
.end method

.method private ensureFeatureCached()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.findo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    goto :goto_0
.end method

.method private isDeniedActivity()Z
    .locals 8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isLaunchable()Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->ensureFeatureCached()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    if-nez v1, :cond_1

    const-string v1, "SFinderLaunchPolicy"

    const-string v2, "isLaunchable: feature is disabled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-nez v1, :cond_2

    const-string v1, "SFinderLaunchPolicy"

    const-string v2, "isLaunchable: mBootCompleted=false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isDeniedActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SFinderLaunchPolicy"

    const-string v2, "isLaunchable: isDeniedActivity()=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SFinderLaunchPolicy"

    const-string v2, "isLaunchable: device is not provisioned yet!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SFinderLaunchPolicy"

    const-string v2, "isLaunchable: keyguard is on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "SFinderLaunchPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLaunchable: isFactoryMode()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAutomaticTestMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private launch()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->ensureFeatureCached()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isLaunchable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    goto :goto_0
.end method
