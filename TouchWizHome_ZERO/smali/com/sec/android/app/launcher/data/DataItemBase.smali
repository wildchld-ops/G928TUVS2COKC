.class public abstract Lcom/sec/android/app/launcher/data/DataItemBase;
.super Lcom/sec/daliviews/views/Item;
.source "DataItemBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;
    }
.end annotation


# static fields
.field protected static final BG_PATH:Ljava/lang/String; = "bg"

.field protected static final ICON_PATH:Ljava/lang/String; = "icon"

.field protected static final IMAGE_PATH:Ljava/lang/String; = "image"

.field protected static final PREVIEW_PATH:Ljava/lang/String; = "preview"

.field private static final TAG:Ljava/lang/String; = "DataItemBase"


# instance fields
.field protected mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

.field protected mSourceType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

.field private mTasks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/Item;-><init>()V

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mSourceType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mTasks:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/data/DataItemBase;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mTasks:Ljava/util/HashSet;

    return-object v0
.end method

.method public static loadImage(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    int-to-long v4, p0

    invoke-static {v4, v5}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move-object v1, v2

    check-cast v1, Lcom/sec/android/app/launcher/data/DataItemBase;

    const-string v3, "icon"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/data/DataItemBase;->loadIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v3, "bg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/data/DataItemBase;->loadBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v3, "preview"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/data/DataItemBase;->loadPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v3, "image"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/data/DataItemBase;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v3, "DataItemBase"

    const-string v4, "Unsupported image type parameter!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    invoke-super {p0}, Lcom/sec/daliviews/views/Item;->destroy()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mTasks:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mTasks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;

    # invokes: Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->cancelNoRemove()V
    invoke-static {v1}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->access$100(Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mTasks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public getBgImageLoadingPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mId:J

    long-to-int v0, v0

    const-string v1, "bg"

    invoke-static {v0, v1, p1}, Lcom/sec/daliviews/resource/ResourceConnector;->composeContentPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnector()Lcom/sec/android/app/launcher/data/connectors/DataConnector;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    return-object v0
.end method

.method public getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mSourceType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method public getIconImageLoadingPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mId:J

    long-to-int v0, v0

    const-string v1, "icon"

    invoke-static {v0, v1, p1}, Lcom/sec/daliviews/resource/ResourceConnector;->composeContentPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageLoadingPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mId:J

    long-to-int v0, v0

    const-string v1, "image"

    invoke-static {v0, v1, p1}, Lcom/sec/daliviews/resource/ResourceConnector;->composeContentPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewImageLoadingPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mId:J

    long-to-int v0, v0

    const-string v1, "preview"

    invoke-static {v0, v1, p1}, Lcom/sec/daliviews/resource/ResourceConnector;->composeContentPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadPreviewImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected runLoadTask(Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/DataItemBase$LoadTask;->register()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->runLoadTask(Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;)V

    :cond_0
    return-void
.end method

.method public setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mDataConnector:Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mSourceType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    goto :goto_0
.end method

.method public setDataSourceType(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/DataItemBase;->mSourceType:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-void
.end method
