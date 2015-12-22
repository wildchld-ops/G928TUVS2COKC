.class Lcom/sec/android/app/launcher/activities/AppsPresenter$32;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->surfaceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

.field final synthetic val$fixedPageView:Lcom/sec/daliviews/views/FixedPageView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/daliviews/views/FixedPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$32;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$32;->val$fixedPageView:Lcom/sec/daliviews/views/FixedPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$32;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$32;->val$fixedPageView:Lcom/sec/daliviews/views/FixedPageView;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->updatePageView(Lcom/sec/daliviews/views/FixedPageView;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$7200(Lcom/sec/android/app/launcher/activities/AppsPresenter;Lcom/sec/daliviews/views/FixedPageView;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
