.class Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$3;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.source "HomeEditBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupCancelButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V

    return-void
.end method


# virtual methods
.method protected canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isWidgetListItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isMenuItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->isWidgetListItem(Lcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_0
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    return-void
.end method
