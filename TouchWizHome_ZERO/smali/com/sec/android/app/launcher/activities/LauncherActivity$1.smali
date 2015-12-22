.class Lcom/sec/android/app/launcher/activities/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/DataManager$IDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/LauncherActivity$1;->this$0:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInWatchList(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemDeleted(Lcom/sec/daliviews/views/Item;)V
    .locals 11

    const/4 v7, 0x3

    const/4 v10, 0x1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragState;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDragState()I

    move-result v6

    if-eq v6, v10, :cond_0

    if-ne v6, v7, :cond_1

    :cond_0
    invoke-virtual {v3}, Lcom/sec/daliviews/dragAndDrop/DragState;->getDraggedItem()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/daliviews/views/NativeViewBase;->getItemId()I

    move-result v7

    int-to-long v8, v7

    invoke-static {v8, v9}, Lcom/sec/daliviews/views/IdGenerator;->getItemById(J)Lcom/sec/daliviews/views/Item;

    move-result-object v5

    instance-of v7, v5, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v7, :cond_1

    instance-of v7, p1, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v7, :cond_1

    move-object v1, v5

    check-cast v1, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getOriginalItem()Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getOriginalItem()Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/LauncherItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getOriginalItem()Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/LauncherItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-ne v6, v10, :cond_1

    const-string v7, "LauncherActivity"

    const-string v8, "Dragged item deleted. Cancelling drag"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne v6, v7, :cond_1

    const-string v7, "LauncherActivity"

    const-string v8, "Widget deleted while being resized. Ending resize."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeEnd()V

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeFinished()V

    goto :goto_0
.end method

.method public onItemPostAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 0

    return-void
.end method

.method public onItemUpdateCompleted()V
    .locals 0

    return-void
.end method

.method public onItemUpdated(Lcom/sec/daliviews/views/Item;)V
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

.method public onItemsUpdated(Ljava/util/List;)V
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
