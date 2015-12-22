.class Lcom/sec/android/app/launcher/migrators/PageSettings14To15;
.super Ljava/lang/Object;
.source "PageSettings14To15.java"

# interfaces
.implements Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;


# static fields
.field private static final COLUMN_INDEX_BACKGROUND_COLOUR:I = 0xf

.field private static final COLUMN_INDEX_CELL_HEIGHT:I = 0x12

.field private static final COLUMN_INDEX_CELL_SPACING_HORIZONTAL:I = 0x13

.field private static final COLUMN_INDEX_CELL_SPACING_VERTICAL:I = 0x14

.field private static final COLUMN_INDEX_CELL_WIDTH:I = 0x11

.field private static final COLUMN_INDEX_CHANGE_MODE:I = 0xe

.field private static final COLUMN_INDEX_CHANNEL:I = 0x1a

.field private static final COLUMN_INDEX_DRAG_N_DROP:I = 0x5

.field private static final COLUMN_INDEX_EMPTYPAGE:I = 0x1b

.field private static final COLUMN_INDEX_ENABLED:I = 0x4

.field private static final COLUMN_INDEX_ITEM_MODE:I = 0xd

.field private static final COLUMN_INDEX_LAYOUT_BUFFER_SIZE:I = 0x7

.field private static final COLUMN_INDEX_LAYOUT_CLIPPING:I = 0x19

.field private static final COLUMN_INDEX_LAYOUT_ORIENTATION:I = 0x8

.field private static final COLUMN_INDEX_LAYOUT_TYPE:I = 0x6

.field private static final COLUMN_INDEX_LONGCLICKABLE:I = 0x10

.field private static final COLUMN_INDEX_NAME:I = 0x1

.field private static final COLUMN_INDEX_PAGE_ORDER:I = 0x2

.field private static final COLUMN_INDEX_PAGE_PADDING_BOTTOM:I = 0x18

.field private static final COLUMN_INDEX_PAGE_PADDING_LEFT:I = 0x15

.field private static final COLUMN_INDEX_PAGE_PADDING_RIGHT:I = 0x17

.field private static final COLUMN_INDEX_PAGE_PADDING_TOP:I = 0x16

.field private static final COLUMN_INDEX_POS_MENU:I = 0x3

.field private static final COLUMN_INDEX_REARRANGEMENT:I = 0xc

.field private static final COLUMN_INDEX_SOURCE_CATEGORY:I = 0xa

.field private static final COLUMN_INDEX_SOURCE_CONTAINER_FILTER:I = 0xb

.field private static final COLUMN_INDEX_SOURCE_TYPE:I = 0x9

.field public static final DATABASE_NAME:Ljava/lang/String; = "pagesettings.db"

.field private static final INSERT_PAGESETTINGS_QUERY:Ljava/lang/String; = "INSERT INTO page_settings(name, pageOrder, posMenu, enabled, dragAndDrop, layout, bufferSize, orientation, sourceType, category, containerFilter, rearrangement, itemMode, changeMode, backgroundColour, longClickable, cellWidth, cellHeight, cellSpacingHorizontal, cellSpacingVertical, pagePaddingLeft, pagePaddingTop, pagePaddingRight, pagePaddingBottom, layoutClipping, channel, emptyPage) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

.field static final TAG:Ljava/lang/String; = "Launcher.PageSettings14To15"

.field public static final VERSION_FROM:I = 0xe

.field public static final VERSION_TO:I = 0x11


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindDefaultStatementValues(Landroid/database/sqlite/SQLiteStatement;Landroid/content/res/Resources;)V
    .locals 4

    const/4 v0, 0x3

    const v1, 0x7f0c0040

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    const v1, 0x7f0c0035

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    const v1, 0x7f0c0033

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x6

    const v1, 0x7f0c003a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    const v1, 0x7f0c0037

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    const v1, 0x7f0c0039

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    const v1, 0x7f0c0045

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    const v1, 0x7f0c0043

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    const v1, 0x7f0c0044

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xc

    const v1, 0x7f0c0041

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xd

    const v1, 0x7f0c0036

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    const v1, 0x7f0c0031

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    const v1, 0x7f0c002c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    const v1, 0x7f0c003b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    const v1, 0x7f0c0030

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x12

    const v1, 0x7f0c002d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    const v1, 0x7f0c002e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x14

    const v1, 0x7f0c002f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x15

    const v1, 0x7f0c003d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x16

    const v1, 0x7f0c003f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x17

    const v1, 0x7f0c003e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    const v1, 0x7f0c003c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x19

    const v1, 0x7f0c0038

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1a

    const v1, 0x7f0c0032

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1b

    const v1, 0x7f0c0034

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method


# virtual methods
.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    const-string v0, "pagesettings.db"

    return-object v0
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
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v7, "INSERT INTO page_settings(name, pageOrder, posMenu, enabled, dragAndDrop, layout, bufferSize, orientation, sourceType, category, containerFilter, rearrangement, itemMode, changeMode, backgroundColour, longClickable, cellWidth, cellHeight, cellSpacingHorizontal, cellSpacingVertical, pagePaddingLeft, pagePaddingTop, pagePaddingRight, pagePaddingBottom, layoutClipping, channel, emptyPage) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getUpgradePageCount()I

    move-result v6

    const v7, 0x7f0d0031

    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/sec/android/app/launcher/migrators/PageSettings14To15;->bindDefaultStatementValues(Landroid/database/sqlite/SQLiteStatement;Landroid/content/res/Resources;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    add-int/lit8 v9, v2, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x2

    int-to-long v8, v2

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string v7, "Launcher.PageSettings14To15"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v7
.end method
