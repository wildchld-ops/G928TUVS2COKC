.class Lcom/sec/android/app/launcher/activities/AppsPresenter$19;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->startDeleteItemAnimation(Lcom/sec/android/app/launcher/data/HomeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

.field final synthetic val$deleteItemAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

.field final synthetic val$item:Lcom/sec/android/app/launcher/data/HomeItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/android/app/launcher/data/HomeItem;Lcom/sec/daliviews/animation/NativeAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;->val$item:Lcom/sec/android/app/launcher/data/HomeItem;

    iput-object p3, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;->val$deleteItemAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/sec/daliviews/animation/NativeAnimation;)V
    .locals 3

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished: DeleteItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;->val$item:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;->val$item:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/PagedListAdapter;->removeItem(Lcom/sec/daliviews/views/Item;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/AppsPresenter;->mAdapter:Lcom/sec/daliviews/views/PagedListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$1800(Lcom/sec/android/app/launcher/activities/AppsPresenter;)Lcom/sec/daliviews/views/PagedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/daliviews/views/PagedListAdapter;->reorderItems()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;->val$item:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$19;->val$deleteItemAnimation:Lcom/sec/daliviews/animation/NativeAnimation;

    invoke-virtual {v0}, Lcom/sec/daliviews/animation/NativeAnimation;->destroy()V

    return-void
.end method
