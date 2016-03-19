.class Lcom/android/phone/operator/chn/ChnCallNotifier$3;
.super Landroid/content/BroadcastReceiver;
.source "ChnCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/chn/ChnCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/ChnCallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$3;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$3;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    # getter for: Lcom/android/phone/operator/chn/ChnCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$800(Lcom/android/phone/operator/chn/ChnCallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$3;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    # getter for: Lcom/android/phone/operator/chn/ChnCallNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$400(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER_2"

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    goto :goto_0
.end method
