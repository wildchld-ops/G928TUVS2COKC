.class Lcom/sec/android/app/launcher/activities/TopFivePresenter$TopFiveFilter;
.super Ljava/lang/Object;
.source "TopFivePresenter.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/TopFivePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopFiveFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/TopFivePresenter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/TopFivePresenter$TopFiveFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public isInWatchList(Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
