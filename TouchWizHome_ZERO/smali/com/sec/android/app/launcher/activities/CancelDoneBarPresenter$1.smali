.class Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter$1;
.super Ljava/lang/Object;
.source "CancelDoneBarPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->setCancelDoneBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getPageEditMode()Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;->SCREENGRID_MODE:Lcom/sec/android/app/launcher/activities/HomeFragment$PageEditMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mCancelDoneButton:Lcom/sec/daliviews/views/ContainerView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->access$000(Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;)Lcom/sec/daliviews/views/ContainerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/ContainerView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter$1;->this$0:Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;

    iget-object v0, v0, Lcom/sec/android/app/launcher/activities/CancelDoneBarPresenter;->mHomePresenter:Lcom/sec/android/app/launcher/activities/HomePresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->cancel()V

    const/4 v0, 0x1

    return v0
.end method
