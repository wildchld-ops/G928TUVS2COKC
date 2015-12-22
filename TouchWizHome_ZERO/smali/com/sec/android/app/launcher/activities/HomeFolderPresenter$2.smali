.class Lcom/sec/android/app/launcher/activities/HomeFolderPresenter$2;
.super Ljava/lang/Object;
.source "HomeFolderPresenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->onItemsRemovedFromFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V
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
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter$2;->this$0:Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object v1, p2

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellY()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellY()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellY()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellY()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellX()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellX()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/daliviews/views/Item;

    check-cast p2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter$2;->compare(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I

    move-result v0

    return v0
.end method
