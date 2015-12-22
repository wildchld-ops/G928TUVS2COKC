.class Lcom/android/incallui/SecStatusBarNotifier$2;
.super Ljava/lang/Object;
.source "SecStatusBarNotifier.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecStatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecStatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecStatusBarNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecStatusBarNotifier$2;->this$0:Lcom/android/incallui/SecStatusBarNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IIMSListener/onReceive(): action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "IIMSListener/onReceive(): GENERAL.EMERGENCY_REGISTRATION_DONE: NETWORK_TYPE"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier$2;->this$0:Lcom/android/incallui/SecStatusBarNotifier;

    const/4 v1, 0x1

    # setter for: Lcom/android/incallui/SecStatusBarNotifier;->mIsE911OverVoLTE:Z
    invoke-static {v0, v1}, Lcom/android/incallui/SecStatusBarNotifier;->access$102(Lcom/android/incallui/SecStatusBarNotifier;Z)Z

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier$2;->this$0:Lcom/android/incallui/SecStatusBarNotifier;

    # getter for: Lcom/android/incallui/SecStatusBarNotifier;->mIsShowingNotification:Z
    invoke-static {v0}, Lcom/android/incallui/SecStatusBarNotifier;->access$200(Lcom/android/incallui/SecStatusBarNotifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier$2;->this$0:Lcom/android/incallui/SecStatusBarNotifier;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/SecStatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/SecStatusBarNotifier$2;->this$0:Lcom/android/incallui/SecStatusBarNotifier;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/SecStatusBarNotifier;->mIsE911OverVoLTE:Z
    invoke-static {v0, v1}, Lcom/android/incallui/SecStatusBarNotifier;->access$102(Lcom/android/incallui/SecStatusBarNotifier;Z)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3ef -> :sswitch_0
        0x7da -> :sswitch_1
    .end sparse-switch
.end method
