.class Lcom/android/incallui/SecStatusBarNotifier$3;
.super Landroid/os/Handler;
.source "SecStatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecStatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prevSecWFCRegState:Z

.field final synthetic this$0:Lcom/android/incallui/SecStatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecStatusBarNotifier;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/SecStatusBarNotifier$3;->this$0:Lcom/android/incallui/SecStatusBarNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SecStatusBarNotifier$3;->prevSecWFCRegState:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v1, "SecWFC notification helper : incoming msg"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const-string v1, "SecWFC notification helper : incoming msg"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier$3;->this$0:Lcom/android/incallui/SecStatusBarNotifier;

    # getter for: Lcom/android/incallui/SecStatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    invoke-static {v1}, Lcom/android/incallui/SecStatusBarNotifier;->access$300(Lcom/android/incallui/SecStatusBarNotifier;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/SecStatusBarNotifier$3;->prevSecWFCRegState:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/SecStatusBarNotifier$3;->prevSecWFCRegState:Z

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier$3;->this$0:Lcom/android/incallui/SecStatusBarNotifier;

    # getter for: Lcom/android/incallui/SecStatusBarNotifier;->mIsShowingNotification:Z
    invoke-static {v1}, Lcom/android/incallui/SecStatusBarNotifier;->access$200(Lcom/android/incallui/SecStatusBarNotifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecStatusBarNotifier$3;->this$0:Lcom/android/incallui/SecStatusBarNotifier;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/SecStatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method
