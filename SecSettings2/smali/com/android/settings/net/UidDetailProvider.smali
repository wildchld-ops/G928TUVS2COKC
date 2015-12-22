.class public Lcom/android/settings/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    return-void
.end method

.method public static buildKeyForUser(I)I
    .locals 1

    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method private buildUidDetail(I)Lcom/android/settings/net/UidDetail;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v5, Lcom/android/settings/net/UidDetail;

    invoke-direct {v5}, Lcom/android/settings/net/UidDetail;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    sparse-switch p1, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "user"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    invoke-static/range {p1 .. p1}, Lcom/android/settings/net/UidDetailProvider;->isKeyForUser(I)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/android/settings/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/android/settings/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1, v8}, Lcom/android/settings/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    return-object v5

    :sswitch_0
    const v19, 0x7f0a0ad2

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :sswitch_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v19

    if-eqz v19, :cond_1

    const v19, 0x7f0a0c8b

    :goto_1
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const v19, 0x7f0a0c8a

    goto :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "connectivity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-static {v4}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    const-string v19, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    const v19, 0x7f0a06ed

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    :cond_2
    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :sswitch_3
    const v19, 0x7f0a135b

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    const v19, 0x7f0201c9

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_3
    iget-object v0, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    const-string v19, "KNOX"

    iget-object v0, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "KNOX enabled App"

    iget-object v0, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    :cond_4
    const v19, 0x7f020249

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_5
    const v19, 0x7f02024a

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_6
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    array-length v10, v13

    :goto_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    new-instance v17, Landroid/os/UserHandle;

    invoke-direct/range {v17 .. v18}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_9

    const/16 v19, 0x0

    aget-object v19, v13, v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-interface {v9, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v8, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    new-instance v20, Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    :cond_7
    iget-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    iget-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v10, v0, :cond_7

    :try_start_1
    new-array v0, v10, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    new-array v0, v10, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_7

    aget-object v12, v13, v7

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v9, v12, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v0, v5, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual {v3, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v19, v7

    iget-object v0, v5, Lcom/android/settings/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    iget-object v0, v5, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v20, v20, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v19, v7

    iget v0, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v19, v0

    if-eqz v19, :cond_a

    iget v0, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v19, v0

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v12, v0, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    move-exception v6

    const-string v19, "DataUsage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error while building UI detail for uid "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_1
    move-exception v6

    const-string v19, "DataUsage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error while building UI detail for uid "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_3
        -0x5 -> :sswitch_2
        -0x4 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getUserIdForKey(I)I
    .locals 1

    rsub-int v0, p0, -0x7d0

    return v0
.end method

.method public static isKeyForUser(I)Z
    .locals 1

    const/16 v0, -0x7d0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidDetail(IZ)Lcom/android/settings/net/UidDetail;
    .locals 3

    iget-object v2, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetail;

    monitor-exit v2

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/net/UidDetailProvider;->buildUidDetail(I)Lcom/android/settings/net/UidDetail;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
