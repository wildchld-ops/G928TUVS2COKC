.class public Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;
.super Ljava/lang/Object;
.source "PageSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/PageSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageSettingsTable"
.end annotation


# static fields
.field public static final COLUMN_BACKGROUND_COLOUR:Ljava/lang/String; = "backgroundColour"

.field public static final COLUMN_BACKGROUND_COLOUR_INT:I = 0xf

.field public static final COLUMN_CELL_HEIGHT:Ljava/lang/String; = "cellHeight"

.field public static final COLUMN_CELL_HEIGHT_INT:I = 0x12

.field public static final COLUMN_CELL_SPACING_HORIZONTAL:Ljava/lang/String; = "cellSpacingHorizontal"

.field public static final COLUMN_CELL_SPACING_HORIZONTAL_INT:I = 0x13

.field public static final COLUMN_CELL_SPACING_VERTICAL:Ljava/lang/String; = "cellSpacingVertical"

.field public static final COLUMN_CELL_SPACING_VERTICAL_INT:I = 0x14

.field public static final COLUMN_CELL_WIDTH:Ljava/lang/String; = "cellWidth"

.field public static final COLUMN_CELL_WIDTH_INT:I = 0x11

.field public static final COLUMN_CHANGE_MODE:Ljava/lang/String; = "changeMode"

.field public static final COLUMN_CHANGE_MODE_INT:I = 0xe

.field public static final COLUMN_CHANNEL:Ljava/lang/String; = "channel"

.field public static final COLUMN_CHANNEL_INT:I = 0x1a

.field public static final COLUMN_DRAG_N_DROP:Ljava/lang/String; = "dragAndDrop"

.field public static final COLUMN_DRAG_N_DROP_INT:I = 0x5

.field public static final COLUMN_EMPTYPAGE:Ljava/lang/String; = "emptyPage"

.field public static final COLUMN_EMPTYPAGE_INT:I = 0x1b

.field public static final COLUMN_ENABLED:Ljava/lang/String; = "enabled"

.field public static final COLUMN_ENABLED_INT:I = 0x4

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_ID_INT:I = 0x0

.field public static final COLUMN_ITEM_MODE:Ljava/lang/String; = "itemMode"

.field public static final COLUMN_ITEM_MODE_INT:I = 0xd

.field public static final COLUMN_LAYOUT_BUFFER_SIZE:Ljava/lang/String; = "bufferSize"

.field public static final COLUMN_LAYOUT_BUFFER_SIZE_INT:I = 0x7

.field public static final COLUMN_LAYOUT_CLIPPING:Ljava/lang/String; = "layoutClipping"

.field public static final COLUMN_LAYOUT_CLIPPING_INT:I = 0x19

.field public static final COLUMN_LAYOUT_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final COLUMN_LAYOUT_ORIENTATION_INT:I = 0x8

.field public static final COLUMN_LAYOUT_TYPE:Ljava/lang/String; = "layout"

.field public static final COLUMN_LAYOUT_TYPE_INT:I = 0x6

.field public static final COLUMN_LONGCLICKABLE:Ljava/lang/String; = "longClickable"

.field public static final COLUMN_LONGCLICKABLE_INT:I = 0x10

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NAME_INT:I = 0x1

.field public static final COLUMN_PAGE_ORDER:Ljava/lang/String; = "pageOrder"

.field public static final COLUMN_PAGE_ORDER_INT:I = 0x2

.field public static final COLUMN_PAGE_PADDING_BOTTOM:Ljava/lang/String; = "pagePaddingBottom"

.field public static final COLUMN_PAGE_PADDING_BOTTOM_INT:I = 0x18

.field public static final COLUMN_PAGE_PADDING_LEFT:Ljava/lang/String; = "pagePaddingLeft"

.field public static final COLUMN_PAGE_PADDING_LEFT_INT:I = 0x15

.field public static final COLUMN_PAGE_PADDING_RIGHT:Ljava/lang/String; = "pagePaddingRight"

.field public static final COLUMN_PAGE_PADDING_RIGHT_INT:I = 0x17

.field public static final COLUMN_PAGE_PADDING_TOP:Ljava/lang/String; = "pagePaddingTop"

.field public static final COLUMN_PAGE_PADDING_TOP_INT:I = 0x16

.field public static final COLUMN_POS_MENU:Ljava/lang/String; = "posMenu"

.field public static final COLUMN_POS_MENU_INT:I = 0x3

.field public static final COLUMN_REARRANGEMENT:Ljava/lang/String; = "rearrangement"

.field public static final COLUMN_REARRANGEMENT_INT:I = 0xc

.field public static final COLUMN_SOURCE_CATEGORY:Ljava/lang/String; = "category"

.field public static final COLUMN_SOURCE_CATEGORY_INT:I = 0xa

.field public static final COLUMN_SOURCE_CONTAINER_FILTER:Ljava/lang/String; = "containerFilter"

.field public static final COLUMN_SOURCE_CONTAINER_FILTER_INT:I = 0xb

.field public static final COLUMN_SOURCE_TYPE:Ljava/lang/String; = "sourceType"

.field public static final COLUMN_SOURCE_TYPE_INT:I = 0x9

.field public static final TABLE_PAGESETTINGS:Ljava/lang/String; = "page_settings"

.field public static final TABLE_PAGESETTINGS_HOME_APPS:Ljava/lang/String; = "page_settings_homeApps"

.field public static final TABLE_PAGESETTINGS_HOME_ONLY:Ljava/lang/String; = "page_settings_homeOnly"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->createPageSettingTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private static createPageSettingTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create table if not exists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer primary key autoincrement, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pageOrder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "posMenu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dragAndDrop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bufferSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sourceType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "containerFilter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rearrangement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "changeMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "backgroundColour"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longClickable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellWidth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellHeight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellSpacingHorizontal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellSpacingVertical"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pagePaddingLeft"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pagePaddingTop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pagePaddingRight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pagePaddingBottom"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "layoutClipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "emptyPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static loadPages(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->loadPages(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static loadPages(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11

    invoke-static {p1, p2}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->populateFromXML(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Launcher_TotalPageCount"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v8

    if-eqz v8, :cond_2

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getKonxPageCount(Landroid/content/Context;)I
    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->access$200(Landroid/content/Context;)I

    move-result v5

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_5

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/data/PageItem;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/sec/android/app/launcher/data/PageItem;->setEmptyPage(Z)V

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    if-nez v3, :cond_0

    const-string v8, "name"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v8, "pageOrder"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "posMenu"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getPosMenu()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "enabled"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->isEnabled()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "dragAndDrop"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->canDragAndDrop()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "layout"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutType()Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "bufferSize"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getBufferSize()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "orientation"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutOrientation()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "sourceType"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getSource()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "category"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getCategory()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "containerFilter"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "rearrangement"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getRearrangement()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "itemMode"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getHomeIconMode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "changeMode"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getChangeMode()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "backgroundColour"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getBackgroundColour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "longClickable"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getLongClickable()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "cellWidth"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSizeWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "cellHeight"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSizeHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "cellSpacingHorizontal"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingHorizontal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "cellSpacingVertical"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingVertical()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "layoutClipping"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutClipping()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "channel"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getChannel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "emptyPage"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getEmptyPage()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/PageItem;->getPagePaddings()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v8, "pagePaddingLeft"

    iget v9, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "pagePaddingTop"

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "pagePaddingRight"

    iget v9, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "pagePaddingBottom"

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0, p2, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    if-lez p3, :cond_3

    move v5, p3

    goto/16 :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto/16 :goto_0

    :cond_4
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/data/PageItem;

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method private static populateFromXML(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/launcher/data/PageItem;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f060004

    const-string v14, "page_settings_homeOnly"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    const v2, 0x7f060005

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    invoke-static {v13}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    :try_start_0
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    :cond_2
    :goto_0
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v14, 0x1

    if-eq v4, v14, :cond_4

    const/4 v14, 0x2

    if-ne v4, v14, :cond_2

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "page"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Lcom/sec/android/app/launcher/R$styleable;->page:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    if-eqz v12, :cond_3

    const/16 v14, 0x10

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    new-instance v9, Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-direct {v9}, Lcom/sec/android/app/launcher/data/HomePageItem;-><init>()V

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setName(Ljava/lang/String;)V

    const/4 v14, 0x3

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setPageOrder(I)V

    const/4 v14, 0x4

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setPosMenu(I)V

    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setCurrentPage(Z)V

    const/4 v14, 0x6

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setEnabled(Z)V

    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setDragAndDrop(Z)V

    const/16 v14, 0xb

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setLayoutType(I)V

    const/16 v14, 0xe

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setBufferSize(I)V

    const/16 v14, 0xf

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setLayoutOrientation(I)V

    const/16 v14, 0x13

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setCategory(I)V

    invoke-virtual {v9, v11}, Lcom/sec/android/app/launcher/data/PageItem;->setSource(I)V

    const/16 v14, 0x14

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setRearrangement(I)V

    const/16 v14, 0x12

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setContainerFilter(I)V

    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setChangeMode(Z)V

    const/16 v14, 0x16

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setBackgroundColour(I)V

    const/16 v14, 0x9

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setLongClickable(Z)V

    const/16 v14, 0x17

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setCellSizeWidth(I)V

    const/16 v14, 0x18

    const/4 v15, -0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setCellSizeHeight(I)V

    const/16 v14, 0x19

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setCellSpacingHorizontal(I)V

    const/16 v14, 0x1a

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setCellSpacingVertical(I)V

    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setLayoutClipping(Z)V

    const/16 v14, 0x11

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setChannel(I)V

    const/16 v14, 0x1f

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setEmptyPage(Z)V

    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setHorizontalScroll(Z)V

    const/16 v14, 0x9

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setVerticalScroll(Z)V

    const/16 v14, 0x1b

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    const/16 v14, 0x1c

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    const/16 v14, 0x1d

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    const/16 v14, 0x1e

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v6, v8, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v14}, Lcom/sec/android/app/launcher/data/PageItem;->setPagePaddings(Landroid/graphics/Rect;)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_1
    return-object v10

    :cond_4
    :try_start_1
    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->sortPages(Ljava/util/List;)V
    invoke-static {v10}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->access$300(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
