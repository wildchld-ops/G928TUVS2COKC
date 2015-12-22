.class Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$6;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.source "HomeEditBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->setupAddToPersonalButton()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V

    return-void
.end method


# virtual methods
.method protected canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/Utils;->isPossibleAddToPersonal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleOnDrop(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V
    .locals 2

    instance-of v0, p2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    check-cast p2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->addToPersonal(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/android/app/launcher/data/HomeItem;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->mUseNewTrashAnim:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_0
    return-void

    :cond_1
    # getter for: Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomeEditBarPresenter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring onDrop - not an instance of HomeItem"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
