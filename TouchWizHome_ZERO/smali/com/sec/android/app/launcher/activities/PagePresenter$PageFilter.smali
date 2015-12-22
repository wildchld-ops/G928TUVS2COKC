.class Lcom/sec/android/app/launcher/activities/PagePresenter$PageFilter;
.super Ljava/lang/Object;
.source "PagePresenter.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/PagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageFilter"
.end annotation


# instance fields
.field private final mPageItem:Lcom/sec/android/app/launcher/data/PageItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/data/PageItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$PageFilter;->mPageItem:Lcom/sec/android/app/launcher/data/PageItem;

    return-void
.end method

.method private isInPage(Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$PageFilter;->mPageItem:Lcom/sec/android/app/launcher/data/PageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$PageFilter;->mPageItem:Lcom/sec/android/app/launcher/data/PageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isInWatchList(Lcom/sec/daliviews/views/Item;)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter$9;->$SwitchMap$com$sec$android$app$launcher$data$connectors$DataConnector$SourceType:[I

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$PageFilter;->mPageItem:Lcom/sec/android/app/launcher/data/PageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getSource()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->fromInt(I)Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/PagePresenter$PageFilter;->isInPage(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    instance-of v0, p1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
