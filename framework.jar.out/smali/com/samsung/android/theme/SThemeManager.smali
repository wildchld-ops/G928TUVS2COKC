.class public Lcom/samsung/android/theme/SThemeManager;
.super Ljava/lang/Object;
.source "SThemeManager.java"


# static fields
.field public static final ACTION_FESTIVAL_EFFECT_CHANGED:Ljava/lang/String; = "android.intent.action.FESTIVAL_EFFECT_CHANGED"

.field public static final ACTION_THEME_CHANGED:Ljava/lang/String; = "android.intent.action.STHEME_CHANGED"

.field private static final CSC_FILE_THEME_APP_LIST:Ljava/lang/String; = "/system/csc/theme_app_list.xml"

.field public static final CURRENT_FESTIVAL_EFFECT_PACKAGE:Ljava/lang/String; = "current_festival_effect_package"

.field public static final CURRENT_FESTIVAL_WALLPAPER_CLASS:Ljava/lang/String; = "current_festival_wallpaper_class"

.field public static final CURRENT_FESTIVAL_WALLPAPER_PACKAGE:Ljava/lang/String; = "current_festival_wallpaper_package"

.field public static final CURRENT_THEME_PACKAGE:Ljava/lang/String; = "current_sec_theme_package"

.field private static final DBG:Z

.field private static final FESTIVAL_EFFECT_STR:Ljava/lang/String; = "festival"

.field private static final TAG:Ljava/lang/String; = "SThemeManager"

.field private static final TAG_APP_LIST:Ljava/lang/String; = "ThemeAppList"

.field private static final TAG_ATTR_CLASSNAME:Ljava/lang/String; = "className"

.field private static final TAG_ATTR_ICONID:Ljava/lang/String; = "iconId"

.field private static final TAG_THEME_APP:Ljava/lang/String; = "ThemeApp"

.field private static final THEME_STR:Ljava/lang/String; = "theme"

.field public static final TYPE_FESTIVAL_EFFECT:I = 0x1

.field public static final TYPE_THEME:I

.field private static sPackageIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageIconLoaded:Z

.field private mPackageName:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageIconLoaded:Z

    iput-object p1, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/theme/SThemeManager;->mType:I

    invoke-virtual {p0}, Lcom/samsung/android/theme/SThemeManager;->resetTheme()V

    return-void
.end method

.method private getCurrentResourcePackage()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/theme/SThemeManager;->mType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_theme_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/theme/SThemeManager;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_festival_effect_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadThemeAppList()V
    .locals 22

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const-string v17, "SThemeManager"

    const-string v18, "Theme app list path: /system/csc/theme_app_list.xml"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v17, "/system/csc/theme_app_list.xml"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_0

    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    new-instance v18, Ljava/io/FileInputStream;

    const-string v19, "/system/csc/theme_app_list.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v7

    :goto_0
    if-eqz v6, :cond_0

    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    invoke-interface {v14, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    if-eqz v14, :cond_4

    :try_start_3
    const-string v17, "ThemeAppList"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    :cond_1
    :goto_2
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v8, :cond_3

    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/theme/SThemeManager;->mPackageIconLoaded:Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    :goto_3
    return-void

    :catch_0
    move-exception v9

    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v9

    :try_start_6
    const-string v17, "SThemeManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception during parsing theme app list"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v6, :cond_5

    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v9

    :try_start_8
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    const/4 v14, 0x0

    goto :goto_1

    :cond_6
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    const/4 v4, 0x0

    const/4 v12, 0x0

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v15, :cond_a

    invoke-interface {v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v17, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    if-eqz v17, :cond_7

    const-string v17, "SThemeManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Parsing... ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v2, :cond_8

    const-string v17, "className"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object v4, v3

    :cond_8
    if-eqz v2, :cond_9

    const-string/jumbo v17, "iconId"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object v12, v3

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_a
    const-string v17, "ThemeApp"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    sget-object v17, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_5
    move-exception v9

    :try_start_9
    const-string v17, "SThemeManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception during parsing theme app list"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v6, :cond_5

    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_7
    move-exception v9

    :try_start_b
    const-string v17, "SThemeManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception during parsing theme app list"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v6, :cond_5

    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_3

    :catch_8
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catchall_0
    move-exception v17

    if-eqz v6, :cond_b

    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_b
    :goto_5
    throw v17

    :catch_9
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method


# virtual methods
.method public getCurrentContext()Landroid/content/Context;
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v4, "drawable"

    iget-object v5, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getItemColor(Ljava/lang/String;)I
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v4, "color"

    iget-object v5, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v5, "drawable"

    iget-object v6, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v4, v0

    :cond_1
    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    move-object v4, v3

    :cond_1
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getItemXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v4, "xml"

    iget-object v5, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-boolean v1, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageIconLoaded:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->loadThemeAppList()V

    :cond_0
    sget-object v1, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "SThemeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageIcon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iconId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    iget-boolean v1, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageIconLoaded:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->loadThemeAppList()V

    :cond_0
    sget-object v1, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "SThemeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageIconBitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iconId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageIconBitmapStartsWith(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    iget-boolean v3, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageIconLoaded:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->loadThemeAppList()V

    :cond_0
    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_2
    sget-boolean v3, Lcom/samsung/android/theme/SThemeManager;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SThemeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageIconBitmapStartsWith "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iconId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getVersionFromFeature(I)Ljava/lang/String;
    .locals 7

    const-string v3, "0"

    const-string v2, ""

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_2

    const-string/jumbo v2, "theme"

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-le v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3

    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    const-string v2, "festival"

    goto :goto_0
.end method

.method public resetTheme()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getCurrentResourcePackage()V

    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    :cond_1
    return-void
.end method
