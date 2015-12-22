.class Lcom/android/incallui/SecTabletVideoCallView$2;
.super Ljava/lang/Object;
.source "SecTabletVideoCallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletVideoCallView;->captureSurfaceImage(Z)V
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

    iput-object p1, p0, Lcom/android/incallui/SecTabletVideoCallView$2;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallView$2;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletVideoCallView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallView$2;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletVideoCallView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendLiveVideo()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletVideoCallView$2;->this$0:Lcom/android/incallui/SecTabletVideoCallView;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletVideoCallView;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    goto :goto_0
.end method
