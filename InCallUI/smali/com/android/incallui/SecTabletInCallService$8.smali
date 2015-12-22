.class Lcom/android/incallui/SecTabletInCallService$8;
.super Ljava/lang/Object;
.source "SecTabletInCallService.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


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

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService$8;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$8;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # invokes: Lcom/android/incallui/SecTabletInCallService;->setEnableMinimizeButton()V
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$1400(Lcom/android/incallui/SecTabletInCallService;)V

    return-void
.end method
