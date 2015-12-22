.class public final enum Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;
.super Ljava/lang/Enum;
.source "SurfaceWidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

.field private static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z = true

.field private static final DEFAULT_WIDGET_NUMBER:I = 0xa

.field public static final enum INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

.field private static final INTENT_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

.field private static final INTENT_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET"

.field private static final LOG_TAG:Ljava/lang/String; = "Launcher.SurfaceWidgetPkgMgr"

.field private static final METADATA_NAME:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET"


# instance fields
.field private final mActiveSurfaceWidgetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private mConfigMccWhenLoaded:I

.field private mConfigMncWhenLoaded:I

.field private final mInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "[",
            "Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleWhenLoaded:Ljava/lang/String;

.field private mSurfaceWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const-string v1, "INST"

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    sget-object v1, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->$VALUES:[Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mInfoCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method private makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .locals 13

    new-instance v1, Landroid/content/ComponentName;

    iget-object v11, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mInfoCache:Ljava/util/Map;

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-nez v3, :cond_0

    iget-object v11, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    const-string v11, "Launcher.SurfaceWidgetPkgMgr"

    const-string v12, "SurfaceWidget didn\'t provide meta data XML file!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v11, "com.samsung.sec.android.SURFACE_WIDGET"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    new-array v3, v5, [Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    const/4 v8, 0x0

    const/4 v7, 0x0

    move v9, v8

    :goto_2
    if-ge v7, v5, :cond_4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {p1, p2, v1, v11}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v10

    if-eqz v10, :cond_8

    add-int/lit8 v8, v9, 0x1

    aput-object v10, v3, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    goto :goto_2

    :cond_4
    if-gtz v9, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    if-ge v9, v5, :cond_6

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    :cond_6
    iget-object v11, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mInfoCache:Ljava/util/Map;

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const-string v11, "Launcher.SurfaceWidgetPkgMgr"

    const-string v12, "SurfaceWidget didn\'t provide meta data XML file!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move v8, v9

    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->$VALUES:[Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    return-object v0
.end method


# virtual methods
.method public canAddSurfaceWidget(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->isOneInstanceOnly()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->getCount()I

    move-result v2

    if-lt v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearWidgetInstanceNumbers(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public declared-synchronized clearWidgetInstances()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearWidgets()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)I
    .locals 5

    if-nez p1, :cond_0

    const-string v2, "Launcher.SurfaceWidgetPkgMgr"

    const-string v3, "SurfaceWidgetInfo null in createWidgetInstance"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    iget-object v2, p1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->createNextInstance()I

    move-result v1

    const-string v2, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWidgetInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", updated list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .locals 6

    if-eqz p1, :cond_2

    const-string v3, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " themeName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->getWidgetItems(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getThemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getWidgetItems(Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;

    if-eqz v10, :cond_0

    if-eqz p1, :cond_5

    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mInfoCache:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    iget-object v10, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "com.samsung.sec.android.SURFACE_WIDGET"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v10, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Query the installed surface widgets from surface widget package manager: list obtained with size= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    const-string v10, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v10, v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v10, "Launcher.SurfaceWidgetPkgMgr"

    const-string v11, "failed to load SurfaceWidgetInfos!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_2
    move-object v2, v6

    :try_start_1
    array-length v7, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v5, v2, v4

    if-eqz v5, :cond_3

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;

    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v10
.end method

.method hasWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->instanceExists(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method declared-synchronized loadIfNeeded(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mConfigMccWhenLoaded:I

    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mConfigMncWhenLoaded:I

    iget v2, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mConfigMccWhenLoaded:I

    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mConfigMncWhenLoaded:I

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mLocaleWhenLoaded:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)V
    .locals 4

    if-nez p1, :cond_0

    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    const-string v2, "SurfaceWidgetInfo null in removeWidgetInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->hasWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWidgetInstance -- Instance does not exist instanceNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWidgetInstance -- Instance does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->removeInstance(I)Z

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWidgetInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", updated list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    iget-object v1, p1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->instanceExists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWidgetInstance(update) instance number already exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->addInstance(I)Z

    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidgetInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", updated list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
