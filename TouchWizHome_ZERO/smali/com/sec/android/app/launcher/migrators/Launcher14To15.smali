.class public Lcom/sec/android/app/launcher/migrators/Launcher14To15;
.super Lcom/sec/android/app/launcher/migrators/LauncherMigrator;
.source "Launcher14To15.java"

# interfaces
.implements Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DEFAULT_SHOW_VALUE:I = 0x1

.field private static final DELETE_APPORDER_APPS_QUERY:Ljava/lang/String; = "DELETE FROM temp_table WHERE _id=?"

.field private static final HQ_COLUMN_CELL:Ljava/lang/String; = "cell"

.field private static final HQ_COLUMN_FOLDER_ID:Ljava/lang/String; = "folderId"

.field private static final HQ_COLUMN_SCREEN:Ljava/lang/String; = "screen"

.field private static final HQ_CONTAINER_APPS_FOLDER:I = -0x1

.field private static final HQ_CONTAINER_TYPE_DESKTOP:I = -0x64

.field private static final HQ_CONTAINER_TYPE_TOP5:I = -0x65

.field private static final HQ_DFAULT_FOLDER_COLOR_INDEX:I = -0x1

.field private static final HQ_ITEM_TYPE_APP:I = 0x0

.field private static final HQ_ITEM_TYPE_APP_WIDGET:I = 0x4

.field private static final HQ_ITEM_TYPE_FOLDER:I = 0x2

.field private static final HQ_ITEM_TYPE_SURFACE_WIDGET:I = 0x385

.field private static final HQ_NEW_CONTAINER_TYPE_DESKTOP:I = 0x0

.field private static final REMOVE_EMPTY_PAGE:Z = true

.field private static final SELECT_APPORDER_APPS_PER_FOLDER_QUERY:Ljava/lang/String; = "SELECT _id, screen FROM appOrder WHERE folderId=?"

.field private static final SELECT_APPORDER_APPS_QUERY:Ljava/lang/String; = "SELECT _id, screen, cell, componentName FROM appOrder WHERE folderId=-1"

.field private static final SELECT_APPORDER_FOLDERS_QUERY:Ljava/lang/String; = "SELECT _id, screen, color, cell FROM appOrder WHERE folderId=-1 AND componentName IS NULL"

.field private static final SELECT_FAVOURITES_APPS_PER_FOLDER_QUERY:Ljava/lang/String; = "SELECT _id, screen FROM favorites WHERE container=?"

.field private static final SELECT_FAVOURITES_APPS_QUERY:Ljava/lang/String; = "SELECT _id, screen FROM favorites WHERE container=-100 AND itemType=0"

.field private static final SELECT_FAVOURITES_APPS_QUERY_FOR_CHECK_EMPTY_PAGE:Ljava/lang/String; = "SELECT count(_id) FROM temp_table WHERE containerId=?"

.field private static final SELECT_FAVOURITES_FOLDERS_QUERY:Ljava/lang/String; = "SELECT _id, screen, color FROM favorites WHERE itemType=2 AND container=-100"

.field private static final SELECT_FAVOURITES_TOP5_QUERY:Ljava/lang/String; = "SELECT _id, screen FROM favorites WHERE container=-101"

.field private static final SELECT_FAVOURITES_WIDGETS_QUERY:Ljava/lang/String; = "SELECT _id, screen, itemType FROM favorites WHERE itemType=4 OR itemType=901 AND container=-100"

.field private static final TABLE_NAME_TEMP:Ljava/lang/String; = "temp_table"

.field private static final TEMP_INSERT_APPORDER_QUERY:Ljava/lang/String; = "INSERT INTO temp_table (_id, hidden, title, componentName, color) SELECT _id, hidden, title, componentName, color FROM appOrder"

.field private static final TEMP_INSERT_APPORDER_QUERY_COLUMNS:Ljava/lang/String; = "_id, hidden, title, componentName, color"

.field private static final TEMP_INSERT_FAVOURITES_QUERY:Ljava/lang/String; = "INSERT INTO temp_table (_id,itemType,container,cellX,cellY,spanX,spanY,title,intent,appWidgetId,iconType,iconPackage,iconResource,icon,show) SELECT _id,itemType,container,cellX,cellY,spanX,spanY,title,intent,appWidgetId,iconType,iconPackage,iconResource,icon,1 FROM favorites"

.field private static final TEMP_INSERT_FAVOURITES_QUERY_COLUMNS:Ljava/lang/String; = "_id,itemType,container,cellX,cellY,spanX,spanY,title,intent,appWidgetId,iconType,iconPackage,iconResource,icon"

.field private static final UPDATE_APPORDER_APPS_PER_FOLDER_QUERY:Ljava/lang/String; = "UPDATE temp_table SET pos=?, container=?, containerId=?, itemType=? WHERE _id=?"

.field private static final UPDATE_APPORDER_APPS_QUERY:Ljava/lang/String; = "UPDATE temp_table SET pos=?, itemType=?, containerId=?, isSystemApp=?, icon=?, container=? WHERE _id=?"

.field private static final UPDATE_APPORDER_FOLDERS_QUERY:Ljava/lang/String; = "UPDATE temp_table SET itemType=?, container=?, containerId=?, pos=?, icon=?, isSystemApp=?, color=? WHERE _id=?"

.field private static final UPDATE_FAVOURITES_APPS_PER_FOLDER_QUERY:Ljava/lang/String; = "UPDATE temp_table SET cellX=?, cellY=?, itemType=?, container=?, containerId=? WHERE _id=?"

.field private static final UPDATE_FAVOURITES_APPS_QUERY:Ljava/lang/String; = "UPDATE temp_table SET container=?, containerId=?, itemType=? WHERE _id=?"

.field private static final UPDATE_FAVOURITES_APPS_QUERY_FOR_REMOVE_EMPTY_PAGE:Ljava/lang/String; = "UPDATE temp_table SET containerId=containerId-1 WHERE container=0 AND containerId>?"

.field private static final UPDATE_FAVOURITES_FOLDERS_QUERY:Ljava/lang/String; = "UPDATE temp_table SET itemType=?, container=?, containerId=?, color=? WHERE _id=?"

.field private static final UPDATE_FAVOURITES_TOP5_QUERY:Ljava/lang/String; = "UPDATE temp_table SET cellX=?, cellY=?, itemType=?, container=? WHERE _id=?"

.field private static final UPDATE_FAVOURITES_WIDGETS_QUERY:Ljava/lang/String; = "UPDATE temp_table SET itemType=?, container=?, containerId=? WHERE _id=?"

.field public static final VERSION_FROM:I = 0xe

.field public static final VERSION_TO:I = 0x11


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/migrators/LauncherMigrator;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->TAG:Ljava/lang/String;

    return-void
.end method

.method private applyTemporaryTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE temp_table RENAME TO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private copyTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/launcher/migrators/TableCreator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "temp_table"

    invoke-interface {p2, p3, v0, p1}, Lcom/sec/android/app/launcher/migrators/TableCreator;->createTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private migrateAppOrderApps(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 18

    const/4 v6, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v14, "SELECT _id, screen, cell, componentName FROM appOrder WHERE folderId=-1"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    const-string v14, "DELETE FROM temp_table WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v14, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Remove Item from appsOrder : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v14, "UPDATE temp_table SET pos=?, itemType=?, containerId=?, isSystemApp=?, icon=?, container=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    const/4 v14, 0x2

    sget-object v15, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v15}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v14, 0x6

    sget-object v15, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v15}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_2
    const/4 v14, 0x0

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v14, 0x1

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v14, 0x2

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v14, 0x3

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    const-string v14, "DELETE FROM temp_table WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v14, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Remove Item from appsOrder : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v14, 0x1

    int-to-long v0, v4

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v14, 0x3

    int-to-long v0, v12

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v16, 0x4

    invoke-static {v5, v10}, Lcom/sec/android/app/launcher/utils/Utils;->isSystemApp(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-wide/16 v14, 0x1

    :goto_3
    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    const/4 v14, 0x7

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Apps Migration Error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v14

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    const-string v15, "DELETE FROM temp_table WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v15, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Remove Item from appsOrder : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const-wide/16 v14, 0x0

    goto/16 :goto_3

    :cond_6
    throw v14

    :cond_7
    return-void
.end method

.method private migrateAppOrderFolders(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    const-string v7, "SELECT _id, screen, color, cell FROM appOrder WHERE folderId=-1 AND componentName IS NULL"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v7, "UPDATE temp_table SET itemType=?, container=?, containerId=?, pos=?, icon=?, isSystemApp=?, color=? WHERE _id=?"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    const/4 v7, 0x1

    sget-object v8, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v7, 0x2

    sget-object v8, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    :cond_2
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v7, 0x2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    const/4 v1, 0x0

    :cond_3
    const/4 v7, 0x3

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v7, 0x3

    int-to-long v8, v5

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v7, 0x4

    int-to-long v8, v0

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v7, 0x7

    int-to-long v8, v1

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v7, 0x8

    int-to-long v8, v3

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-direct {p0, p1, v3, v4}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->updateAppOrderAppsForFolder(Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/res/Resources;)V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v7
.end method

.method private migrateAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/sec/android/app/launcher/migrators/TableCreator;)V
    .locals 2

    const-string v0, "appOrder"

    const-string v1, "INSERT INTO temp_table (_id, hidden, title, componentName, color) SELECT _id, hidden, title, componentName, color FROM appOrder"

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/launcher/migrators/TableCreator;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->migrateAppOrderFolders(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->migrateAppOrderApps(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    const-string v0, "appOrder"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->applyTemporaryTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private migrateFavouritesApps(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "SELECT _id, screen FROM favorites WHERE container=-100 AND itemType=0"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v4, "UPDATE temp_table SET container=?, containerId=?, itemType=? WHERE _id=?"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x3

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    const/4 v4, 0x2

    int-to-long v6, v2

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x4

    int-to-long v6, v0

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    iget v4, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->mRequiredPageCount:I

    if-le v2, v4, :cond_3

    iput v2, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->mRequiredPageCount:I

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v4
.end method

.method private migrateFavouritesFolders(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;)V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "SELECT _id, screen, color FROM favorites WHERE itemType=2 AND container=-100"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v5, "UPDATE temp_table SET itemType=?, container=?, containerId=?, color=? WHERE _id=?"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_2
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    const/4 v0, 0x0

    :cond_3
    const/4 v5, 0x3

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x4

    int-to-long v6, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x5

    int-to-long v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-direct {p0, p1, v2, p2}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->updateFavouritesAppsForFolder(Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/res/Resources;)V

    iget v5, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->mRequiredPageCount:I

    if-le v3, v5, :cond_4

    iput v3, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->mRequiredPageCount:I

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v5
.end method

.method private migrateFavouritesTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/sec/android/app/launcher/migrators/TableCreator;)V
    .locals 2

    const-string v0, "favorites"

    const-string v1, "INSERT INTO temp_table (_id,itemType,container,cellX,cellY,spanX,spanY,title,intent,appWidgetId,iconType,iconPackage,iconResource,icon,show) SELECT _id,itemType,container,cellX,cellY,spanX,spanY,title,intent,appWidgetId,iconType,iconPackage,iconResource,icon,1 FROM favorites"

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/launcher/migrators/TableCreator;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->migrateFavouritesTop5(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->migrateFavouritesWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->migrateFavouritesFolders(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->migrateFavouritesApps(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->removeEmptyPage(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "favorites"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->applyTemporaryTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private migrateFavouritesTop5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "SELECT _id, screen FROM favorites WHERE container=-101"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v4, "UPDATE temp_table SET cellX=?, cellY=?, itemType=?, container=? WHERE _id=?"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v4, 0x3

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x4

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v4, 0x1

    int-to-long v6, v1

    invoke-virtual {v2, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    const/4 v4, 0x5

    int-to-long v6, v3

    invoke-virtual {v2, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v4
.end method

.method private migrateFavouritesWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v0, 0x0

    :try_start_0
    const-string v6, "SELECT _id, screen, itemType FROM favorites WHERE itemType=4 OR itemType=901 AND container=-100"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v6, "UPDATE temp_table SET itemType=?, container=?, containerId=? WHERE _id=?"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    const/4 v6, 0x2

    sget-object v7, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_2
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v5, 0x0

    const/16 v6, 0x385

    if-ne v1, v6, :cond_4

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SURFACE_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    :goto_1
    const/4 v6, 0x1

    int-to-long v8, v5

    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v6, 0x3

    int-to-long v8, v2

    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v6, 0x4

    int-to-long v8, v4

    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    iget v6, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->mRequiredPageCount:I

    if-le v2, v6, :cond_3

    iput v2, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->mRequiredPageCount:I

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_4
    if-ne v1, v10, :cond_3

    :try_start_2
    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v6
.end method

.method private removeEmptyPage(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_0
    :try_start_0
    iget v5, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->mRequiredPageCount:I

    if-gt v3, v5, :cond_3

    const-string v5, "SELECT count(_id) FROM temp_table WHERE containerId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeEmptyPage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_2
    return-void

    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-gtz v0, :cond_2

    const-string v5, "UPDATE temp_table SET containerId=containerId-1 WHERE container=0 AND containerId>?"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    const/4 v5, 0x1

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    iget v5, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->mRequiredPageCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->mRequiredPageCount:I

    add-int/lit8 v3, v3, -0x1

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v5

    :cond_3
    invoke-static {v1}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_2
.end method

.method private updateAppOrderAppsForFolder(Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/res/Resources;)V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "SELECT _id, screen FROM appOrder WHERE folderId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v4, "UPDATE temp_table SET pos=?, container=?, containerId=?, itemType=? WHERE _id=?"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x3

    int-to-long v6, p2

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x4

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v4, 0x1

    int-to-long v6, v1

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x5

    int-to-long v6, v0

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v4
.end method

.method private updateFavouritesAppsForFolder(Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/res/Resources;)V
    .locals 9

    const/4 v2, 0x0

    :try_start_0
    const-string v5, "SELECT _id, screen FROM favorites WHERE container=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v5, "UPDATE temp_table SET cellX=?, cellY=?, itemType=?, container=?, containerId=? WHERE _id=?"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    const/4 v5, 0x3

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x4

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x5

    int-to-long v6, p2

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_2
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v5, 0x7f0c0027

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/sec/android/app/launcher/utils/Utils;->getCellXY(II)[I

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v1, v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    aget v6, v1, v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v5, 0x6

    int-to-long v6, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v5
.end method


# virtual methods
.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    const-string v0, "launcher.db"

    return-object v0
.end method

.method public getRequiredPageCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->mRequiredPageCount:I

    return v0
.end method

.method public getVersionFrom()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public getVersionTo()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public migrate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/sec/android/app/launcher/migrators/TableCreator;)V
    .locals 0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->migrateFavouritesTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/sec/android/app/launcher/migrators/TableCreator;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/migrators/Launcher14To15;->migrateAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/sec/android/app/launcher/migrators/TableCreator;)V

    goto :goto_0
.end method
