.class Lcom/android/incallui/InCallPresenter$9;
.super Landroid/app/IProcessObserver$Stub;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->mobileNetworkPopupObserverRegist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$9;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$9;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$1100(Lcom/android/incallui/InCallPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallPresenter$9$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/incallui/InCallPresenter$9$1;-><init>(Lcom/android/incallui/InCallPresenter$9;ZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0

    return-void
.end method
