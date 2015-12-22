.class Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 21

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "packageInstalled --> packageName = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", returnCode = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/overlays/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    const-string/jumbo v18, "lockscreen_wallpaper"

    const-string v19, "drawable"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "."

    const-string v20, "_"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".png"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v11, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/overlays/lockwallpaper/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v18, v0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "/data/overlays/lockwallpaper"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1100(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1200(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1200(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    new-instance v6, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/overlays/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;
    invoke-static/range {v18 .. v18}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1500(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentCategory:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$ComponentInstallObserver;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    invoke-virtual {v15, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_7
    if-eqz v7, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_8
    if-nez v7, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
