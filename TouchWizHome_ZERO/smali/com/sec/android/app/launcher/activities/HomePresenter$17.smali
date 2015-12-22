.class Lcom/sec/android/app/launcher/activities/HomePresenter$17;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->onReplaceFolderToItems(Lcom/sec/android/app/launcher/data/FolderItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$17;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$17;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$17;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getCurrentPageView()Lcom/sec/daliviews/views/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/daliviews/views/PageView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/sec/android/app/launcher/activities/HomePresenter;->triggerLiveIconAnimationInAdapter(Lcom/sec/daliviews/views/Adapter;Z)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->access$4500(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/daliviews/views/Adapter;Z)V

    return-void
.end method
