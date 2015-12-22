.class Lcom/sec/android/app/launcher/activities/AppsPresenter$16;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->sortItemsInCustomOrder(Ljava/util/List;)V
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
        "Lcom/sec/daliviews/views/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$16;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/daliviews/views/Item;

    check-cast p2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$16;->compare(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I

    move-result v0

    return v0
.end method
