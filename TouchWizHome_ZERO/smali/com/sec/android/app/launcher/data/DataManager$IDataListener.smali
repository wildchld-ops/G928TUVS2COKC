.class public interface abstract Lcom/sec/android/app/launcher/data/DataManager$IDataListener;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDataListener"
.end annotation


# virtual methods
.method public abstract onItemAdded(Lcom/sec/daliviews/views/Item;)V
.end method

.method public abstract onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
.end method

.method public abstract onItemDeleted(Lcom/sec/daliviews/views/Item;)V
.end method

.method public abstract onItemPostAdded(Lcom/sec/daliviews/views/Item;)V
.end method

.method public abstract onItemUpdateCompleted()V
.end method

.method public abstract onItemUpdated(Lcom/sec/daliviews/views/Item;)V
.end method

.method public abstract onItemsAdded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onItemsUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation
.end method
