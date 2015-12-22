.class public abstract Lcom/sec/android/app/launcher/activities/PresenterBase;
.super Ljava/lang/Object;
.source "PresenterBase.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/DataManager$IDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;
    }
.end annotation


# instance fields
.field protected mFilter:Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/PresenterBase;->mFilter:Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PresenterBase;->mFilter:Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;

    return-void
.end method


# virtual methods
.method public cancelFastScroll()V
    .locals 0

    return-void
.end method

.method public abstract destroy()V
.end method

.method public abstract getRootView()Lcom/sec/daliviews/views/ContainerViewBase;
.end method

.method public getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_UNKNOWN:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method public isInWatchList(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PresenterBase;->mFilter:Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/PresenterBase;->mFilter:Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;

    invoke-interface {v0, p1}, Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;->isInWatchList(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    goto :goto_0
.end method

.method public moveToPage(IF)V
    .locals 0

    return-void
.end method

.method public onItemLoadCompleted(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onItemPostAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemsAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onNativeInit()V
    .locals 0

    return-void
.end method

.method public abstract setAccessibilityMode(Z)V
.end method

.method public surfaceChanged()V
    .locals 0

    return-void
.end method

.method public switchMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V
    .locals 0

    return-void
.end method
