.class Lcom/sec/android/app/launcher/activities/PagePresenter$4;
.super Ljava/lang/Object;
.source "PagePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/PagePresenter;->onItemAdded(Lcom/sec/daliviews/views/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

.field final synthetic val$item:Lcom/sec/daliviews/views/Item;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/PagePresenter;Lcom/sec/daliviews/views/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$4;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$100(Lcom/sec/android/app/launcher/activities/PagePresenter;)Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;->DRAG_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->switchToHomescreenMode(Lcom/sec/android/app/launcher/activities/HomeFragment$HomescreenMode;)V

    # getter for: Lcom/sec/android/app/launcher/activities/PagePresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/PagePresenter;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PagePresenter.onItemAdded() delay resize as configure widget"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$4;->this$0:Lcom/sec/android/app/launcher/activities/PagePresenter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/PagePresenter;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResizeFrame()Lcom/sec/android/app/launcher/views/HomeResizeFrame;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->setResizeFrame(Lcom/sec/daliviews/views/ResizeFrame;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$4;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getItemView()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/PagePresenter$4;->val$item:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v0, v1, v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->resizeStart(Lcom/sec/daliviews/views/NativeViewBase;Lcom/sec/daliviews/views/Item;)V

    return-void
.end method
