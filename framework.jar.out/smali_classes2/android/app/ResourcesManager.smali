.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# static fields
.field static final DEBUG_CACHE:Z = false

.field static final DEBUG_STATS:Z = true

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final DEBUG:Z

.field private final DEBUG_ELASTIC:Z

.field private cookieMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isElasticEnabled:Z

.field final mActiveResources:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mDefaultDisplayMetrics:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/DisplayAdjustments;",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private mElasticAssets:Landroid/content/res/AssetManager;

.field mFakedResConfiguration:Landroid/content/res/Configuration;

.field mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mResConfiguration:Landroid/content/res/Configuration;

.field final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/app/ResourcesManager;->DEBUG:Z

    iput-boolean v0, p0, Landroid/app/ResourcesManager;->DEBUG_ELASTIC:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->cookieMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ResourcesManager;->isElasticEnabled:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mTmpConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .locals 2

    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    :cond_0
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public applyCompatConfiguration(ILandroid/content/res/Configuration;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z

    move-result v0

    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mFakedResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    new-instance v16, Landroid/content/res/Configuration;

    invoke-direct/range {v16 .. v16}, Landroid/content/res/Configuration;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mFakedResConfiguration:Landroid/content/res/Configuration;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->isFaked()Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mFakedResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mFakedResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Configuration;->toFaked()V

    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    new-instance v16, Landroid/content/res/Configuration;

    invoke-direct/range {v16 .. v16}, Landroid/content/res/Configuration;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v16

    if-nez v16, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    const/16 v16, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->flushDisplayMetricsLocked()V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getLastIntendedActivityToken()Landroid/os/IBinder;

    move-result-object v15

    if-eqz v15, :cond_c

    :try_start_0
    invoke-interface {v15}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_c

    invoke-static {v15}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/view/IApplicationToken;->hasSubWindow()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v3}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    if-eqz p2, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    or-int/lit16 v4, v4, 0xd00

    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v16

    add-int/lit8 v9, v16, -0x1

    :goto_3
    if-ltz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/Resources;

    if-eqz v13, :cond_f

    iget v6, v12, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v6, :cond_d

    const/4 v11, 0x1

    :goto_4
    move-object v7, v5

    invoke-virtual {v12}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v8

    if-eqz v11, :cond_8

    if-eqz v8, :cond_e

    :cond_8
    if-nez v14, :cond_9

    new-instance v14, Landroid/content/res/Configuration;

    invoke-direct {v14}, Landroid/content/res/Configuration;-><init>()V

    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_a
    if-eqz v8, :cond_b

    iget-object v0, v12, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v7, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    :goto_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v7, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_5

    :cond_10
    if-eqz v4, :cond_11

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v16

    goto/16 :goto_2
.end method

.method public final applyDisplayMetricsToResourcesLocked(Landroid/view/DisplayInfo;)V
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    iget v6, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v6, v8

    iput v6, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {v4}, Landroid/content/res/Resources;->updateSystemDisplayMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v6, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v6, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    iget-object v6, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    iget v0, v3, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v5, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->updateDisplayMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move v2, v7

    goto :goto_1

    :cond_2
    iget-object v6, p0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method

.method final applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x1

    iput v3, p2, Landroid/content/res/Configuration;->touchscreen:I

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->orientation:I

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    :goto_0
    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    return-void

    :cond_0
    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    iget v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_0
.end method

.method public flushDisplayMetricsLocked()V
    .locals 2

    iget-object v1, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;
    .locals 1

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMetricsLocked(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .locals 8

    const/4 v6, 0x1

    if-nez p1, :cond_0

    move v4, v6

    :goto_0
    const/4 v2, 0x0

    iget-object v7, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    monitor-enter v7

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/DisplayMetrics;

    move-object v2, v5

    :goto_1
    monitor-exit v7

    if-eqz v2, :cond_2

    move-object v3, v2

    :goto_2
    return-object v3

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    move-object v3, v2

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Landroid/app/ResourcesManager;->mDefaultDisplayMetrics:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;Z)V

    :goto_3
    move-object v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_3
.end method

.method public getResIdOffset(Ljava/lang/String;)I
    .locals 3

    iget-object v2, p0, Landroid/app/ResourcesManager;->cookieMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    iget-object v2, v2, Landroid/content/res/AssetManager;->elasticAppCookieOffset:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 12

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;Ljava/lang/String;ZI)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;Ljava/lang/String;Z)Landroid/content/res/Resources;
    .locals 12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;Ljava/lang/String;ZI)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;Ljava/lang/String;ZI)Landroid/content/res/Resources;
    .locals 32

    move-object/from16 v0, p7

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    new-instance v2, Landroid/content/res/ResourcesKey;

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p8

    move/from16 v8, p11

    invoke-direct/range {v2 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;ILandroid/content/res/Configuration;FLandroid/os/IBinder;I)V

    if-nez p10, :cond_2

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/ref/WeakReference;

    if-eqz v30, :cond_0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object v7, v3

    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit p0

    :goto_1
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    if-eqz p9, :cond_5

    invoke-static/range {p9 .. p9}, Landroid/app/im/InjectionManager;->getClassLibPath(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v17

    :goto_2
    if-eqz v17, :cond_3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    :cond_3
    if-eqz v14, :cond_a

    const-string v3, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    :cond_4
    :goto_3
    if-nez v8, :cond_b

    const/4 v7, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    :cond_6
    const-string v3, "#"

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/4 v3, 0x0

    aget-object v31, v25, v3

    const/4 v3, 0x1

    aget-object v26, v25, v3

    const/16 v27, 0x0

    if-eqz v26, :cond_7

    const-string v3, ":"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    :cond_7
    if-eqz v31, :cond_9

    if-eqz v27, :cond_9

    const-string v3, ":"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, v28

    array-length v3, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    aget-object v4, v28, v18

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->cookieMap:Ljava/util/HashMap;

    aget-object v4, v27, v18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ResourcesManager;->mElasticAssets:Landroid/content/res/AssetManager;

    goto :goto_3

    :cond_9
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "ERROR: Asset path is null"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_3

    :cond_a
    new-instance v8, Landroid/content/res/AssetManager;

    invoke-direct {v8}, Landroid/content/res/AssetManager;-><init>()V

    if-eqz p1, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    if-eqz p2, :cond_d

    move-object/from16 v13, p2

    array-length v0, v13

    move/from16 v23, v0

    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    aget-object v29, v13, v20

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_d
    if-eqz p3, :cond_e

    invoke-static/range {p11 .. p11}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v13, p3

    array-length v0, v13

    move/from16 v23, v0

    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    aget-object v21, v13, v20

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    :cond_e
    if-eqz p4, :cond_10

    move-object/from16 v13, p4

    array-length v0, v13

    move/from16 v23, v0

    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    aget-object v24, v13, v20

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset path \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' does not exist or contains no resources."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/app/ResourcesManager;->getDisplayMetricsLocked(I)Landroid/util/DisplayMetrics;

    move-result-object v9

    if-nez p5, :cond_14

    const/16 v22, 0x1

    :goto_8
    invoke-virtual {v2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v19

    if-eqz v22, :cond_11

    if-eqz v19, :cond_15

    :cond_11
    new-instance v10, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-nez v22, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfigurationLocked(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_12
    if-eqz v19, :cond_13

    iget-object v3, v2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_13
    :goto_9
    new-instance v7, Landroid/content/res/Resources;

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v7 .. v12}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    monitor-enter p0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/ref/WeakReference;

    if-eqz v30, :cond_16

    invoke-virtual/range {v30 .. v30}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    move-object/from16 v16, v3

    :goto_a
    if-nez p10, :cond_17

    if-eqz v16, :cond_17

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->close()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, v16

    goto/16 :goto_1

    :cond_14
    const/16 v22, 0x0

    goto :goto_8

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    goto :goto_9

    :cond_16
    const/16 v16, 0x0

    goto :goto_a

    :cond_17
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mActiveResources:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
