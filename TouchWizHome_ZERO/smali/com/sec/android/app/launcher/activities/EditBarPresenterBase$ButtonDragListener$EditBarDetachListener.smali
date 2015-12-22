.class Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;
.super Ljava/lang/Object;
.source "EditBarPresenterBase.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$DetachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditBarDetachListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;->this$1:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;-><init>(Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;)V

    return-void
.end method


# virtual methods
.method public onDetachComplete()V
    .locals 2

    # getter for: Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditBarDetachListener.onDetachComplete()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;->this$1:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->mHide:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener$EditBarDetachListener;->this$1:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase$ButtonDragListener;->this$0:Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/EditBarPresenterBase;->hideEditBar()V

    return-void
.end method
