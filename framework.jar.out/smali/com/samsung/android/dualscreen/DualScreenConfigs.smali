.class public Lcom/samsung/android/dualscreen/DualScreenConfigs;
.super Landroid/util/Singleton;
.source "DualScreenConfigs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/samsung/android/dualscreen/DualScreenConfigs;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DualScreenConfigs"

.field private static mOppositeLaunchAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSamsungHomeLaunchAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemResources:Landroid/content/res/Resources;

.field private static sInstance:Lcom/samsung/android/dualscreen/DualScreenConfigs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/DualScreenConfigs;-><init>()V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->sInstance:Lcom/samsung/android/dualscreen/DualScreenConfigs;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mOppositeLaunchAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/String;)V
    .locals 10

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DUALSCREEN MANAGER configurations (dumpsys dualscreen config)"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Opposite launch app list :"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mOppositeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    sget-object v8, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mOppositeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    sget-object v8, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mOppositeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/dualscreen/DualScreenConfigs;
    .locals 1

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->sInstance:Lcom/samsung/android/dualscreen/DualScreenConfigs;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreenConfigs;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;

    return-object v0
.end method

.method private initConfig()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/dualscreen/DualScreenConfigs;->loadResourcesConfig()V

    invoke-direct {p0}, Lcom/samsung/android/dualscreen/DualScreenConfigs;->loadSecProductFeature()V

    invoke-direct {p0}, Lcom/samsung/android/dualscreen/DualScreenConfigs;->loadCscFeatures()V

    return-void
.end method

.method public static isOppositeLaunchSupportApp(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mOppositeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadCscFeatures()V
    .locals 0

    return-void
.end method

.method private loadResourcesConfig()V
    .locals 2

    const v0, 0x1070064

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mOppositeLaunchAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/dualscreen/DualScreenConfigs;->loadStringArray(ILjava/util/ArrayList;)V

    const v0, 0x1070065

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/dualscreen/DualScreenConfigs;->loadStringArray(ILjava/util/ArrayList;)V

    return-void
.end method

.method private loadSecProductFeature()V
    .locals 0

    return-void
.end method

.method private loadStringArray(ILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    sget-object v5, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addSamsungHomeLaunchSupportAppList(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected create()Lcom/samsung/android/dualscreen/DualScreenConfigs;
    .locals 2

    const-string v0, "DualScreenConfigs"

    const-string v1, "DualScreenConfigs :: create()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSystemResources:Landroid/content/res/Resources;

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSystemResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/dualscreen/DualScreenConfigs;->initConfig()V

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->sInstance:Lcom/samsung/android/dualscreen/DualScreenConfigs;

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/DualScreenConfigs;->create()Lcom/samsung/android/dualscreen/DualScreenConfigs;

    move-result-object v0

    return-object v0
.end method

.method public getSamsungHomeLaunchSupportAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSamsungHomeLaunchSupportApp(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeSamsungHomeLaunchSupportAppList(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreenConfigs;->mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
