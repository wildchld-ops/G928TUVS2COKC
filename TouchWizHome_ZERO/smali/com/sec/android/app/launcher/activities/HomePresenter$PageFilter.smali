.class Lcom/sec/android/app/launcher/activities/HomePresenter$PageFilter;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public isInWatchList(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/PageItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
