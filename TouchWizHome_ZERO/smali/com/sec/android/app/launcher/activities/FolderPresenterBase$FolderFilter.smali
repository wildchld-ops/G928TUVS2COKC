.class Lcom/sec/android/app/launcher/activities/FolderPresenterBase$FolderFilter;
.super Ljava/lang/Object;
.source "FolderPresenterBase.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/FolderPresenterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/FolderPresenterBase$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/FolderPresenterBase$FolderFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public isInWatchList(Lcom/sec/daliviews/views/Item;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v0

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method
