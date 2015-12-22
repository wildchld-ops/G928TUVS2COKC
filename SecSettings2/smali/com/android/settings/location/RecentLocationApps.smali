.class public Lcom/android/settings/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/RecentLocationApps;)Lcom/android/settings/SettingsActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object v0
.end method

.method private createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceClickListener;)Lcom/android/settings/location/DimmableIconPreference;
    .locals 2

    new-instance v0, Lcom/android/settings/location/DimmableIconPreference;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, v1, p4}, Lcom/android/settings/location/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/location/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/location/DimmableIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    const v1, 0x7f0a0721

    invoke-virtual {v0, v1}, Lcom/android/settings/location/DimmableIconPreference;->setSummary(I)V

    :goto_0
    invoke-virtual {v0, p5}, Lcom/android/settings/location/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-object v0

    :cond_0
    const v1, 0x7f0a0722

    invoke-virtual {v0, v1}, Lcom/android/settings/location/DimmableIconPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private getPreferenceFromOps(Landroid/os/UserManager;JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;
    .locals 28

    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v13

    const/4 v7, 0x0

    const/16 v17, 0x0

    const-wide/32 v26, 0xdbba0

    sub-long v20, p2, v26

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v26

    cmp-long v4, v26, v20

    if-ltz v4, :cond_0

    :cond_1
    invoke-virtual {v14}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v17, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    if-nez v7, :cond_4

    if-nez v17, :cond_4

    sget-object v4, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v4, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v26, " hadn\'t used location within the time interval."

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v19, 0x0

    :goto_1
    return-object v19

    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    const/16 v19, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v16

    const/16 v4, 0x80

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-interface {v0, v1, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    if-nez v11, :cond_5

    sget-object v4, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Null application info retrieved for package "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v26, ", userId "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    new-instance v24, Landroid/os/UserHandle;

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v24

    invoke-virtual {v4, v10, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v24

    invoke-virtual {v4, v6, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v8, 0x0

    :cond_6
    new-instance v9, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-direct {v9, v0, v1, v2}, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;-><init>(Lcom/android/settings/location/RecentLocationApps;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/location/RecentLocationApps;->createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/preference/Preference$OnPreferenceClickListener;)Lcom/android/settings/location/DimmableIconPreference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    goto/16 :goto_1

    :catch_0
    move-exception v12

    sget-object v4, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Error while retrieving application info for package "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v26, ", userId "

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isKioskEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    move-object/from16 v17, v0

    const-string v18, "appops"

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v3

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Lcom/android/settings/SettingsActivity;

    move-object/from16 v17, v0

    const-string v18, "user"

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    if-nez v3, :cond_1

    :cond_0
    return-object v12

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    const-string v17, "android"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v6, 0x1

    :goto_1
    if-nez v6, :cond_2

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/location/RecentLocationApps;->isKioskEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8, v9, v7}, Lcom/android/settings/location/RecentLocationApps;->getPreferenceFromOps(Landroid/os/UserManager;JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    nop

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method
