.class Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener$1;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;->onItemUpdated(Lcom/sec/daliviews/views/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/launcher/data/HomeItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener$1;->this$1:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/launcher/data/HomeItem;Lcom/sec/android/app/launcher/data/HomeItem;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerId()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerId()I

    move-result v2

    sub-int v0, v1, v2

    if-eqz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellY()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellY()I

    move-result v2

    sub-int v0, v1, v2

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellX()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellX()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/launcher/data/HomeItem;

    check-cast p2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPagedAdapterViewListener$1;->compare(Lcom/sec/android/app/launcher/data/HomeItem;Lcom/sec/android/app/launcher/data/HomeItem;)I

    move-result v0

    return v0
.end method
