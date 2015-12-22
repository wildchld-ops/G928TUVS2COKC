.class Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$1;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.source "HomeEditBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupCreatePageButton()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V

    return-void
.end method


# virtual methods
.method protected canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_0
    instance-of v0, p2, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    check-cast p2, Lcom/sec/android/app/launcher/data/LauncherItem;

    # invokes: Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->createPage(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/LauncherItem;)V
    invoke-static {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->access$000(Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/LauncherItem;)V

    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring onDrop - not an instance of LauncherItem"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
