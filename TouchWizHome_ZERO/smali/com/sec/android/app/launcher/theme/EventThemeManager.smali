.class public Lcom/sec/android/app/launcher/theme/EventThemeManager;
.super Ljava/lang/Object;
.source "EventThemeManager.java"


# static fields
.field private static final ACTION_FESTIVAL_EVENTWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_MYEVENTWIDGET_ADDED"

.field private static final ACTION_FESTIVAL_THEME_PACKAGE_CHANGED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_THEME_PACKAGE_CHANGED"

.field private static final CLAUSE_DESKTOP:Ljava/lang/String;

.field private static final CLAUSE_FAVORITES_EVENTTHEME:Ljava/lang/String;

.field private static final CURRENT_FESTIVAL_STRING_KEY:Ljava/lang/String; = "current_sec_theme_package_event_title"

.field private static final CURRENT_FESTIVAL_THEME_PACKAGE:Ljava/lang/String; = "current_sec_theme_package_festival"

.field private static final FESTIVAL_EFFECT_ENABLED:Ljava/lang/String; = "current_sec_theme_package_festival_enabled"

.field private static final FESTIVAL_EFFECT_HOME_ENABLED:Ljava/lang/String; = "festival_effect_festival_home"

.field private static final MYEVENT_ENABLED:Ljava/lang/String; = "current_sec_theme_package_myevent_enabled"

.field static final PREFERENCES_FESTIVAL_INTENT_STRING:Ljava/lang/String; = "festivalstring"

.field static final PREFERENCES_FESTIVAL_INTENT_STRING_HOMEONLY:Ljava/lang/String; = "festivalstring_homeonly"

.field private static final PROJ_WIDGET_ID:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EventThemeManager"

.field private static final TAG_ATTR_INDICATOR:Ljava/lang/String; = "home_menu_page_navi_festival"

.field public static final WHERECLASE_FAVORITE_EVENT:Ljava/lang/String; = "container like ?"

.field public static final WHERECLASE_PAGE_EVENT:Ljava/lang/String; = "containerFilter like ?"


# instance fields
.field mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mEventThemeLoader:Lcom/sec/android/app/launcher/theme/EventThemeLoader;

.field private mEventThemeOn:Z

.field private mFestivalThemeChangeObserver:Landroid/database/ContentObserver;

.field private mFestivalType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "containerFilter in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->CLAUSE_DESKTOP:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->CLAUSE_FAVORITES_EVENTTHEME:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->PROJ_WIDGET_ID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mEventThemeOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mFestivalType:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/launcher/theme/EventThemeManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/theme/EventThemeManager$1;-><init>(Lcom/sec/android/app/launcher/theme/EventThemeManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mFestivalThemeChangeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;

    invoke-direct {v0, p1}, Lcom/sec/android/app/launcher/theme/EventThemeLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mEventThemeLoader:Lcom/sec/android/app/launcher/theme/EventThemeLoader;

    new-instance v0, Landroid/appwidget/AppWidgetHost;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-void
.end method

.method private deleteEventWidget()V
    .locals 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/launcher/theme/EventThemeManager;->PROJ_WIDGET_ID:[Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/launcher/theme/EventThemeManager;->CLAUSE_FAVORITES_EVENTTHEME:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v1, "EventThemeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------deleteEventWidget : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v7, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1, v7}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method private findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private insertEventApp(Ljava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-nez v23, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->addEventPage(Landroid/content/Context;)I

    move-result v20

    const-string v23, "EventThemeManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "item.containerId : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->containerId:I

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->isWidget:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    new-instance v15, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v23, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v23, 0x7f0a00cd

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v23, 0x7f0a00c9

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    sget-object v22, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x81

    move/from16 v23, v0

    if-eqz v23, :cond_3

    const/16 v16, 0x1

    :goto_1
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v23, 0x10200000

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    const-string v23, "itemType"

    sget-object v24, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "container"

    sget-object v24, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "containerId"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->containerId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "cellX"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->cellX:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "cellY"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->cellY:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "spanX"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->spanX:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "spanY"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->spanY:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "show"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "title"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "intent"

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "isSystemApp"

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    instance-of v0, v11, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v13, v12}, Lcom/sec/android/app/launcher/utils/Utils;->scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v23, "icon"

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_4
    :try_start_1
    const-string v23, "icon"

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private insertEventWidget(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v10, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;

    iget-boolean v10, v7, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->isWidget:Z

    if-eqz v10, :cond_2

    iget-object v10, v7, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v9, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v10, v7, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->packageName:Ljava/lang/String;

    iget-object v11, v7, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->className:Ljava/lang/String;

    invoke-direct {v3, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    const/4 v1, -0x1

    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v10}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    const-string v10, "itemType"

    sget-object v11, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "container"

    sget-object v11, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "containerId"

    iget v11, v7, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->containerId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "cellX"

    iget v11, v7, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->cellX:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "cellY"

    iget v11, v7, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->cellY:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "spanX"

    iget v11, v7, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->spanX:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "spanY"

    iget v11, v7, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->spanY:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "show"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    const-string v10, "EventThemeManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "----appWidgetId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "EventThemeManager"

    const-string v11, "Problem allocating appWidgetId; bindAppWidgetIdIfAllowed returned false"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mEventThemeLoader:Lcom/sec/android/app/launcher/theme/EventThemeLoader;

    sget-object v11, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->EVENT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->getIsTheme(I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->sendFestivalWidgetType(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v10, "EventThemeManager"

    const-string v11, "Problem allocating appWidgetId"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v3, "EventThemeManager"

    const-string v4, "festival widget is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addEventPage(Landroid/content/Context;)I
    .locals 13

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    sget-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "0,1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/launcher/theme/EventThemeManager;->CLAUSE_DESKTOP:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "pageOrder DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    if-eqz v12, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v0, "pageOrder"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v0, "_id"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "bufferSize"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "emptyPage"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "pageOrder"

    add-int/lit8 v2, v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "containerFilter"

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v7, v2

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v11, v12

    goto :goto_0
.end method

.method public createEventPageAndPackage()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->getEventPackageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->insertEventApp(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->getEventPackageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->insertEventWidget(Ljava/util/ArrayList;)V

    return-void
.end method

.method public createEventTheme(ZZ)V
    .locals 11

    const/4 v10, 0x0

    const-string v7, "EventThemeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createEventTheme : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->getCurrentFestivalString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->getFestivalString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->setEventThemeEnable(Z)V

    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mEventThemeLoader:Lcom/sec/android/app/launcher/theme/EventThemeLoader;

    sget-object v8, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->EVENT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v8

    invoke-virtual {v7, v8, v10}, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->setIsTheme(IZ)V

    if-eqz p1, :cond_4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->deleteEventPage()V

    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->setFestivalString(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object v6, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mFestivalType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->createEventPageAndPackage()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->deleteEventPage()V

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->setFestivalString(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mEventThemeLoader:Lcom/sec/android/app/launcher/theme/EventThemeLoader;

    sget-object v8, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->EVENT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v8

    invoke-virtual {v7, v8, v10}, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->setIsTheme(IZ)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->setEventThemeEnable(Z)V

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->deleteEventPage()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->createEventPageAndPackage()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->deleteEventPage()V

    goto :goto_0
.end method

.method public deleteEventPage()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->deleteEventWidget()V

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const-string v5, "container like ?"

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sget-object v4, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "containerFilter like ?"

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v4, "EventThemeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------------deleteEventPage app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " delete page : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCurrentFestivalString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package_event_title"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventPackageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mEventThemeLoader:Lcom/sec/android/app/launcher/theme/EventThemeLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->getPackageList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getEventPageIndicator()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mEventThemeLoader:Lcom/sec/android/app/launcher/theme/EventThemeLoader;

    const-string v2, "home_menu_page_navi_festival"

    sget-object v3, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->EVENT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->getItemDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFestivalString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "festivalstring_homeonly"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "festivalstring"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isEventThemeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isFestivalChanged(Z)Z

    return-void
.end method

.method public isEventThemeEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mEventThemeOn:Z

    return v0
.end method

.method public isFestivalChanged(Z)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isFestivalSettingsEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isMyEventSettingsEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v2, v6

    :goto_0
    const/4 v3, 0x1

    const-string v7, "EventThemeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isFestivalSettingsEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isFestivalSettingsEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isMyEventSettingsEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->isMyEventSettingsEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->getCurrentFestivalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->getFestivalString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :cond_1
    :goto_1
    const-string v7, "EventThemeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isFestivalChanged : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " themeEnable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "EventThemeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prevFestivalString : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " festivalString : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->setEventThemeEnable(Z)V

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->setEventThemeEnable(Z)V

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/launcher/theme/EventThemeManager;->createEventTheme(ZZ)V

    :cond_2
    return v0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    const/4 v5, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isFestivalHomeSettingsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "festival_effect_festival_home"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFestivalSettingsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package_festival_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMyEventSettingsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package_myevent_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public sendFestivalThemeChanged()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.FESTIVAL_THEME_PACKAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendFestivalWidgetType(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.FESTIVAL_MYEVENTWIDGET_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "festivalType"

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mFestivalType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mFestivalType:Ljava/lang/String;

    return-void
.end method

.method public setEventSettingObserver(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "current_sec_theme_package_festival"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mFestivalThemeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mFestivalThemeChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setEventThemeEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mEventThemeOn:Z

    return-void
.end method

.method public setFestivalString(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/EventThemeManager;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "festivalstring_homeonly"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string v2, "festivalstring"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
