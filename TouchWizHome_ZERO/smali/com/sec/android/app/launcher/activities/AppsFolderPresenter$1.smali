.class Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$1;
.super Ljava/lang/Object;
.source "AppsFolderPresenter.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;->getFolderFilter(Lcom/sec/android/app/launcher/data/FolderItem;)Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

.field final synthetic val$folder:Lcom/sec/android/app/launcher/data/FolderItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsFolderPresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$1;->val$folder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInWatchList(Lcom/sec/daliviews/views/Item;)Z
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsFolderPresenter$1;->val$folder:Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
