.class Lcom/android/incallui/SecTabletInCallService$7;
.super Ljava/lang/Object;
.source "SecTabletInCallService.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletInCallService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService$7;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 2

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_1

    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$7;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # invokes: Lcom/android/incallui/SecTabletInCallService;->needToShowTabLock()Z
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$1300(Lcom/android/incallui/SecTabletInCallService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$7;->this$0:Lcom/android/incallui/SecTabletInCallService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletInCallService;->sendLockScreenEvent(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$7;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # invokes: Lcom/android/incallui/SecTabletInCallService;->setEnableMinimizeButton()V
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$1400(Lcom/android/incallui/SecTabletInCallService;)V

    goto :goto_0
.end method
