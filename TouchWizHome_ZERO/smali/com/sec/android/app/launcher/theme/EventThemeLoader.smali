.class public Lcom/sec/android/app/launcher/theme/EventThemeLoader;
.super Lcom/sec/android/app/launcher/theme/ThemeLoaderBase;
.source "EventThemeLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventThemeLoader"

.field private static final TAG_ATTR_CELLX:Ljava/lang/String; = "cellX"

.field private static final TAG_ATTR_CELLY:Ljava/lang/String; = "cellY"

.field private static final TAG_ATTR_CLASSNAME:Ljava/lang/String; = "className"

.field private static final TAG_ATTR_PACKANGENAME:Ljava/lang/String; = "packageName"

.field private static final TAG_ATTR_SPANX:Ljava/lang/String; = "spanX"

.field private static final TAG_ATTR_SPANY:Ljava/lang/String; = "spanY"

.field private static final TAG_THEME_APP:Ljava/lang/String; = "App"

.field private static final TAG_THEME_WIDGET:Ljava/lang/String; = "Widget"

.field public static final TYPE_THEME:I = 0x0

.field private static final XML_EVENT_APP_LIST:Ljava/lang/String; = "event_theme_app_list"

.field protected static final sEventHomeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPackageIconLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->sEventHomeItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/launcher/theme/EventThemeLoader;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/theme/ThemeLoaderBase;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mPackageIconLoaded:Z

    return-void
.end method


# virtual methods
.method protected getCurrentResourcePackage()V
    .locals 5

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->EVENT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mPackageName:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_0
.end method

.method public getPackageList()Ljava/util/ArrayList;
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

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mPackageIconLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->loadEventThemeAppList()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->sEventHomeItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadEventThemeAppList()V
    .locals 15

    sget-object v12, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->sEventHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    iget-object v12, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x0

    const-string v12, "event_theme_app_list"

    const-string v13, "xml"

    iget-object v14, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v2, :cond_d

    :cond_3
    const/4 v12, 0x1

    if-eq v11, v12, :cond_d

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v12, "App"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "Widget"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_4
    new-instance v5, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;

    invoke-direct {v5}, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;-><init>()V

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v10

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_b

    invoke-interface {v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "packageName"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iput-object v1, v5, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->packageName:Ljava/lang/String;

    :cond_5
    const-string v12, "className"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iput-object v1, v5, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->className:Ljava/lang/String;

    :cond_6
    const-string v12, "cellX"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v5, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->cellX:I

    :cond_7
    const-string v12, "cellY"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v5, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->cellY:I

    :cond_8
    const-string v12, "spanX"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v5, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->spanX:I

    :cond_9
    const-string v12, "spanY"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v5, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->spanY:I

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    const-string v12, "EventThemeLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "item : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v5, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "Widget"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/sec/android/app/launcher/theme/EventThemeLoader$EventHomeItem;->isWidget:Z

    :cond_c
    sget-object v12, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->sEventHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string v12, "EventThemeLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception during parsing theme app list XmlPullParserException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    const/4 v12, 0x1

    :try_start_1
    iput-boolean v12, p0, Lcom/sec/android/app/launcher/theme/EventThemeLoader;->mPackageIconLoaded:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string v12, "EventThemeLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception during parsing theme app list"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
