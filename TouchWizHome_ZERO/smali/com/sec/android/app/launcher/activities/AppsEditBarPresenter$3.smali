.class Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$3;
.super Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.source "AppsEditBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->setupCancelButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;II)V

    return-void
.end method


# virtual methods
.method protected canAcceptDrop(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter$3;->this$0:Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->mUseAppsEditBar:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;->access$100(Lcom/sec/android/app/launcher/activities/AppsEditBarPresenter;)Z

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
    .locals 1

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragCancel()V

    return-void
.end method
