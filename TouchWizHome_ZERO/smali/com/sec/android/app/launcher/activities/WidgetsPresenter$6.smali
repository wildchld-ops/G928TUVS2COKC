.class Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;
.super Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;
.source "WidgetsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setVisibleAnimated(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

.field final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iput p2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;->val$visible:I

    invoke-direct {p0}, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUIAnimEvent(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1300(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6$1;-><init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
