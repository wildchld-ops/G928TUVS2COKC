.class Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener$1;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->onScaleFadeOutCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener$1;->this$1:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener$1;->this$1:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->storeCurrentPage()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener$1;->this$1:Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$AppsPresenterScaleFadeListener;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->detachRootViewIfNeeded()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$3600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    return-void
.end method
