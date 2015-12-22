.class Lcom/android/incallui/SecVideoCallFragment$2;
.super Ljava/lang/Object;
.source "SecVideoCallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVideoCallFragment;->captureSurfaceImage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVideoCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVideoCallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVideoCallFragment$2;->this$0:Lcom/android/incallui/SecVideoCallFragment;

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

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment$2;->this$0:Lcom/android/incallui/SecVideoCallFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->isShowMe()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment$2;->this$0:Lcom/android/incallui/SecVideoCallFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendLiveVideo()V

    const-string v1, "prohibit_candid_shot"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment$2;->this$0:Lcom/android/incallui/SecVideoCallFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/incallui/secservice/SecVideoCallManager;->isCameraClosedbyDcm:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment$2;->this$0:Lcom/android/incallui/SecVideoCallFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->stopCameraPreview()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecVideoCallFragment$2;->this$0:Lcom/android/incallui/SecVideoCallFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVideoCallFragment;->getVideoCallManager()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secservice/SecVideoCallManager;->sendStillImage()V

    goto :goto_0
.end method
