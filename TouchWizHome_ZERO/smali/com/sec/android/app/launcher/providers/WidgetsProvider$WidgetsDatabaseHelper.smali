.class public Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;
.super Lcom/sec/android/app/launcher/providers/DatabaseHelper;
.source "WidgetsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/WidgetsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetsDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "widgets.db"

.field private static final TABLE_WIDGETS_ITEM:Ljava/lang/String; = "widgetsItem"


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/providers/WidgetsProvider;Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    const-string v5, "widgets.db"

    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-direct {p0, p2, v5, v6, v7}, Lcom/sec/android/app/launcher/providers/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Launcher.WidgetsProvider"

    const-string v6, "WidgetsDatabaseHelper Constructor"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v5, "widgetsItem"

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$100(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/os/UserManager;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "user"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    # setter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {p1, v5}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$102(Lcom/sec/android/app/launcher/providers/WidgetsProvider;Landroid/os/UserManager;)Landroid/os/UserManager;

    :cond_1
    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$100(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/os/UserManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    const-string v5, "widgetsItem"

    invoke-direct {p0, v0, v5, v2, v3}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->createWidgetsItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->buildWidgetsList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v4}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->bulkInsertWidgets(Ljava/util/List;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v5, "Launcher.WidgetsProvider"

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addProfileColumn(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$100(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALTER TABLE widgetsItem ADD COLUMN profileId INTEGER DEFAULT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Launcher.WidgetsProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private buildWidgetsList()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->loadEasyModeActivities()V

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isSafeMode()Z

    move-result v19

    if-nez v19, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->loadAppWidgets()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->loadSurfaceWidgets()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v12, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;-><init>(Landroid/content/Context;)V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-virtual {v12, v8}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v2

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$100(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/os/UserManager;

    move-result-object v19

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v16

    instance-of v0, v8, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v19, v8

    check-cast v19, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getThemeName()Ljava/lang/String;

    move-result-object v13

    :goto_2
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v19, "title"

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "shortcut"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "spanX"

    const/16 v20, 0x0

    aget v20, v2, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "spanY"

    const/16 v20, 0x1

    aget v20, v2, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "componentName"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_2

    const-string v19, "themeName"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v19, "profileId"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const-string v19, "Launcher.WidgetsProvider"

    const-string v20, "buildWidgetsList() failed(loadAppWidgets is null)"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$100(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/os/UserManager;

    move-result-object v19

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v16

    goto/16 :goto_2

    :cond_4
    new-instance v11, Landroid/content/Intent;

    const-string v19, "android.intent.action.CREATE_SHORTCUT"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mPkgManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$200(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mPkgManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$200(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/sec/android/app/launcher/utils/Utils;->getTitle(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v14

    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "shortcut"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "spanX"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "spanY"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v19, "componentName"

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "profileId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$100(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/os/UserManager;

    move-result-object v20

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    return-object v18
.end method

.method private bulkInsertWidgets(Ljava/util/List;)I
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v13, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "INSERT INTO widgetsItem (title, shortcut, spanX, spanY, componentName, themeName, profileId) values (?,?,?,?,?,?,?)"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    sget-object v5, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "profileId"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "componentName"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "profileId, _id"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Launcher.WidgetsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found Duplicated item : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/16 v17, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_3

    sget-object v5, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v15}, Ljava/util/List;->clear()V

    :try_start_0
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v26

    if-nez v26, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    :goto_3
    return v5

    :cond_5
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v5, "componentName"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "profileId"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v16

    :try_start_2
    const-string v5, "Launcher.WidgetsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WidgetsProvider.loadWidgets failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    :goto_5
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_8
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "@"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_8

    sget-object v5, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "profileId=? AND componentName=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v23, v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, v23, v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$000()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "Launcher.WidgetsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove (Widget) item which is not exist in package manager. - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    const/4 v5, 0x1

    :try_start_3
    const-string v6, "title"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v5, 0x2

    const-string v6, "shortcut"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x3

    const-string v6, "spanX"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x4

    const-string v6, "spanY"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const-string v5, "themeName"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x6

    const-string v6, "themeName"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_7
    const/4 v5, 0x7

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v5, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v20

    const-wide/16 v6, 0x0

    cmp-long v5, v20, v6

    if-lez v5, :cond_6

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$000()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "Launcher.WidgetsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert new item : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :cond_b
    const/4 v5, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v5

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_c
    throw v5

    :cond_d
    :try_start_4
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteStatement;->close()V

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_5

    :cond_e
    if-lez v13, :cond_f

    const/4 v5, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ","

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    sget-object v6, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v7, v0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->buildNotifyUri(Landroid/net/Uri;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_f
    move v5, v13

    goto/16 :goto_3
.end method

.method private createWidgetsItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "componentName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "themeName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profileId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private isEasyMode(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mEasyModeActivities:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$400(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadAppWidgets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {v4}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$300(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/utils/Utils;->getInstalledProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, v2}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->isEasyMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const-string v3, "com.sec.android.widget.myeventwidget.MyEventWidgetProvider"

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v3, :cond_5

    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-gtz v3, :cond_2

    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private loadEasyModeActivities()V
    .locals 6

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.EASY_MODE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mPkgManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$200(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mEasyModeActivities:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$400(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Ljava/util/HashSet;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadSurfaceWidgets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->getWidgetItems(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.WidgetsProvider"

    const-string v1, "WidgetsDatabaseHelper onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$100(Lcom/sec/android/app/launcher/providers/WidgetsProvider;)Landroid/os/UserManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    # setter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$102(Lcom/sec/android/app/launcher/providers/WidgetsProvider;Landroid/os/UserManager;)Landroid/os/UserManager;

    :cond_0
    const/16 v0, 0xf

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->addProfileColumn(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_1
    return-void
.end method

.method public runWidgetDBValidationCheck()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mLastValidatedTime:J
    invoke-static {}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$500()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    # getter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.WidgetsProvider"

    const-string v1, "runWidgetDBValidationCheck()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->buildWidgetsList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->bulkInsertWidgets(Ljava/util/List;)I

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/sec/android/app/launcher/providers/WidgetsProvider;->mLastValidatedTime:J
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->access$502(J)J

    return-void
.end method
