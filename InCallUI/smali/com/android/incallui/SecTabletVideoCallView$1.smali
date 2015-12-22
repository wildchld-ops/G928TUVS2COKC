.class Lcom/android/incallui/SecTabletVideoCallView$1;
.super Landroid/os/Handler;
.source "SecTabletVideoCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletVideoCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletVideoCallView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletVideoCallView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletVideoCallView;->isPossibleToHideBanner()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletVideoCallView;->togglePrimaryCallBanner()V

    goto :goto_0

    :cond_1
    const-string v0, "clean_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    iget-object v0, v0, Lcom/android/incallui/SecTabletVideoCallView;->mVideoCallViewHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/incallui/SecTabletVideoCallView;->mIsInitializedLayout:Z

    const-string v0, "DELAYED_ONGLOBALLAYOUT"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    iget v1, v1, Lcom/android/incallui/SecTabletVideoCallView;->mDelayedVideoState:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletVideoCallView;->showVideoAsVideoState(I)V

    goto :goto_0

    :pswitch_3
    const-string v0, "DELAYED_SHOW_VIDEO"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    iput-boolean v1, v0, Lcom/android/incallui/SecTabletVideoCallView;->mIsProgressingAnimation:Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    iget v1, v1, Lcom/android/incallui/SecTabletVideoCallView;->mDelayedVideoState:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletVideoCallView;->showVideoAsVideoState(I)V

    goto :goto_0

    :pswitch_4
    const-string v0, "EVENT_ANIMATION_GUARD"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletVideoCallView$1;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    iput-boolean v1, v0, Lcom/android/incallui/SecTabletVideoCallView;->mIsProgressingAnimation:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
