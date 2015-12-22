.class Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer$1;
.super Ljava/lang/Object;
.source "SecVideoCallVGAJpnFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    iget-object v5, v5, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/SecVideoCallVGAJpnFragment;

    # getter for: Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;
    invoke-static {v5}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->access$000(Lcom/android/incallui/SecVideoCallVGAJpnFragment;)Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    iget-object v5, v5, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/SecVideoCallVGAJpnFragment;

    # getter for: Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showImgTimer:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;
    invoke-static {v5}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->access$000(Lcom/android/incallui/SecVideoCallVGAJpnFragment;)Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_3

    move v1, v3

    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    move v2, v3

    :goto_1
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const-string v4, "FarEnd no_video imageview visible"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer$1;->this$1:Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;

    iget-object v4, v4, Lcom/android/incallui/SecVideoCallVGAJpnFragment$DefaultImageTimer;->this$0:Lcom/android/incallui/SecVideoCallVGAJpnFragment;

    # invokes: Lcom/android/incallui/SecVideoCallVGAJpnFragment;->showNovideoImage(Z)V
    invoke-static {v4, v3}, Lcom/android/incallui/SecVideoCallVGAJpnFragment;->access$100(Lcom/android/incallui/SecVideoCallVGAJpnFragment;Z)V

    :cond_2
    return-void

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method
