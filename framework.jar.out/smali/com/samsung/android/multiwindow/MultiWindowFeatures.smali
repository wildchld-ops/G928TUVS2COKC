.class public Lcom/samsung/android/multiwindow/MultiWindowFeatures;
.super Ljava/lang/Object;
.source "MultiWindowFeatures.java"


# static fields
.field public static final MULTIWINDOW_ENABLED:Z = true

.field private static SUPPORT_BEZEL_UI:J

.field private static SUPPORT_COMMON_UI:J

.field private static SUPPORT_FIXED_SPLIT_VIEW:J

.field private static SUPPORT_FREESTYLE:J

.field private static SUPPORT_FREESTYLE_DOCKING:J

.field private static SUPPORT_FREESTYLE_LAUNCH:J

.field private static SUPPORT_MINIMIZE_ANIMATION:J

.field private static SUPPORT_MULTIWINDOW:J

.field private static SUPPORT_MULTIWINDOW_LAUNCH:J

.field private static SUPPORT_MULTI_INSTANCE:J

.field private static SUPPORT_QUADVIEW:J

.field private static SUPPORT_RECENT_UI:J

.field private static SUPPORT_RESIZE_VISUAL_CUE:J

.field private static SUPPORT_SCALE_WINDOW:J

.field private static SUPPORT_SELECTIVE_1_ORIENTATION:J

.field private static SUPPORT_SELECTIVE_2_ORIENTATION:J

.field private static SUPPORT_SIMPLIFICATION_UI:J

.field private static SUPPORT_SPLIT_FULLSCREEN:J

.field private static SUPPORT_STYLE_TRANSITION:J

.field private static SUPPORT_TAB_PEN_WINDOW:J

.field private static sEnabledFeaturesFlags:J

.field private static sQueriedTypeMultiWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTIWINDOW:J

    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE:J

    const-wide/16 v0, 0x4

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_QUADVIEW:J

    const-wide/16 v0, 0x8

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FIXED_SPLIT_VIEW:J

    const-wide/16 v0, 0x10

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE_DOCKING:J

    const-wide/16 v0, 0x20

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE_LAUNCH:J

    const-wide/16 v0, 0x40

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SCALE_WINDOW:J

    const-wide/16 v0, 0x80

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTIWINDOW_LAUNCH:J

    const-wide/16 v0, 0x100

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SPLIT_FULLSCREEN:J

    const-wide/16 v0, 0x200

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTI_INSTANCE:J

    const-wide/16 v0, 0x400

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_COMMON_UI:J

    const-wide/16 v0, 0x800

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_STYLE_TRANSITION:J

    const-wide/16 v0, 0x1000

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_RECENT_UI:J

    const-wide/16 v0, 0x2000

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MINIMIZE_ANIMATION:J

    const-wide/16 v0, 0x4000

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_TAB_PEN_WINDOW:J

    const-wide/32 v0, 0x8000

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SIMPLIFICATION_UI:J

    const-wide/32 v0, 0x10000

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_BEZEL_UI:J

    const-wide/32 v0, 0x20000

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SELECTIVE_1_ORIENTATION:J

    const-wide/32 v0, 0x40000

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SELECTIVE_2_ORIENTATION:J

    const-wide/32 v0, 0x80000

    sput-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_RESIZE_VISUAL_CUE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMultiWindowFeature(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    if-eqz v3, :cond_0

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2

    const-string/jumbo v3, "multiwindow_facade"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getEnabledFeaturesFlags()J

    move-result-wide v4

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v2, :cond_16

    :try_start_0
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTIWINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_3
    const-string v3, "com.sec.feature.multiwindow.freestyle"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_4
    const-string v3, "com.sec.feature.multiwindow.quadview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_QUADVIEW:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_5
    const-string v3, "com.sec.feature.multiwindow.fixedsplitview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FIXED_SPLIT_VIEW:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_6
    const-string v3, "com.sec.feature.multiwindow.freestyledocking"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE_DOCKING:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_7
    const-string v3, "com.sec.feature.multiwindow.freestylelaunch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE_LAUNCH:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_8
    const-string v3, "com.sec.feature.multiwindow.scalewindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SCALE_WINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_9
    const-string v3, "com.sec.feature.multiwindow.multiwindowlaunch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTIWINDOW_LAUNCH:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_a
    const-string v3, "com.sec.feature.multiwindow.splitfullscreen"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SPLIT_FULLSCREEN:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_b
    const-string v3, "com.sec.feature.multiwindow.multiinstance"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTI_INSTANCE:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_c
    const-string v3, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_COMMON_UI:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_d
    const-string v3, "com.sec.feature.multiwindow.styletransition"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_STYLE_TRANSITION:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_e
    const-string v3, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_RECENT_UI:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_f
    const-string v3, "com.sec.feature.multiwindow.minimizeanimation"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MINIMIZE_ANIMATION:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_10
    const-string v3, "com.sec.feature.multiwindow.tabpenwindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_TAB_PEN_WINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_11
    const-string v3, "com.sec.feature.multiwindow.simplificationui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SIMPLIFICATION_UI:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_12
    const-string v3, "com.sec.feature.multiwindow.bezelui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_BEZEL_UI:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_13
    const-string v3, "com.sec.feature.multiwindow.selective1orientation"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SELECTIVE_1_ORIENTATION:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_14
    const-string v3, "com.sec.feature.multiwindow.selective2orientation"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SELECTIVE_2_ORIENTATION:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_15
    const-string v3, "com.sec.feature.multiwindow.resizevisualcue"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_RESIZE_VISUAL_CUE:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sQueriedTypeMultiWindow:Z

    goto/16 :goto_0

    :cond_16
    :try_start_1
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_17

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTIWINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_17
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.freestyle.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_18
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.quadview.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_19

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_QUADVIEW:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_19
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.fixedsplitview"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FIXED_SPLIT_VIEW:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_1a
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.freestyledocking.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE_DOCKING:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_1b
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.freestylelaunch.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE_LAUNCH:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_1c
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.scalewindow.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SCALE_WINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_1d
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.multiwindowlaunch.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTIWINDOW_LAUNCH:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_1e
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.splitfullscreen.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SPLIT_FULLSCREEN:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_1f
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.multiinstance.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_20

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTI_INSTANCE:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_20
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.commonui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_COMMON_UI:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_21
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.styletransition.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_22

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_STYLE_TRANSITION:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_22
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.recentui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_23

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_RECENT_UI:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_23
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.minimizeanimation.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_24

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MINIMIZE_ANIMATION:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_24
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.tabpenwindow.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_TAB_PEN_WINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_25
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.simplificationui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_26

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SIMPLIFICATION_UI:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_26
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.bezelui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_BEZEL_UI:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_27
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.selective1orientation.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_28

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SELECTIVE_1_ORIENTATION:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_28
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.selective2orientation.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_29

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SELECTIVE_2_ORIENTATION:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    :cond_29
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.resizevisualcue.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    sget-wide v6, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_RESIZE_VISUAL_CUE:J

    or-long/2addr v4, v6

    sput-wide v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getEnabledFeaturesFlags(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    return-wide v0
.end method

.method private static isEnabled(J)Z
    .locals 4

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->sEnabledFeaturesFlags:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportBezelUI(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_BEZEL_UI:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportCommonUI(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_COMMON_UI:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFixedSplitView(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FIXED_SPLIT_VIEW:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyle(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyleDocking(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE_DOCKING:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyleLaunch(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_FREESTYLE_LAUNCH:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMinimizeAnimation(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MINIMIZE_ANIMATION:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiInstance(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTI_INSTANCE:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiWindow(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTIWINDOW:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiWindowLaunch(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_MULTIWINDOW_LAUNCH:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportOpenTheme(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportQuadView(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_QUADVIEW:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportRecentUI(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_RECENT_UI:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportResizeVisualCue(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_RESIZE_VISUAL_CUE:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportScaleWindow(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SCALE_WINDOW:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSelective1Orientation(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SELECTIVE_1_ORIENTATION:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSelective2Orientation(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SELECTIVE_1_ORIENTATION:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SELECTIVE_2_ORIENTATION:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSimplificationUI(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SIMPLIFICATION_UI:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSplitFullScreen(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_SPLIT_FULLSCREEN:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportStyleTransition(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_STYLE_TRANSITION:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportTabPenWindow(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->checkMultiWindowFeature(Landroid/content/Context;)V

    sget-wide v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SUPPORT_TAB_PEN_WINDOW:J

    invoke-static {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isEnabled(J)Z

    move-result v0

    return v0
.end method
