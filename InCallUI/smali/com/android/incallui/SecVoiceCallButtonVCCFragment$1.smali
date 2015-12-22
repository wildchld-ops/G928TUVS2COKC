.class Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;
.super Landroid/os/Handler;
.source "SecVoiceCallButtonVCCFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVoiceCallButtonVCCFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHandler : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$1;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mViewPager:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;
    invoke-static {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$InCallViewPager;->setCurrentItem(IZ)V

    new-instance v0, Lcom/android/incallui/VisualCallCenter$IvrTask;

    invoke-direct {v0}, Lcom/android/incallui/VisualCallCenter$IvrTask;-><init>()V

    new-array v1, v2, [Ljava/lang/Integer;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/incallui/VisualCallCenter$IvrTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch
.end method
