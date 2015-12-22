.class Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsFilter;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public isInWatchList(Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getDataSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_DISABLED_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-static {v0, v2}, Lcom/sec/android/app/launcher/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
