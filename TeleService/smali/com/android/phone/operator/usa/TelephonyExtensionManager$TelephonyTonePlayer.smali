.class Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;
.super Ljava/lang/Thread;
.source "TelephonyExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/TelephonyExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyTonePlayer"
.end annotation


# instance fields
.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/TelephonyExtensionManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;->mToneId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "TelephonyExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyTonePlayer.run(toneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->createTelephonyToneGenerator()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$1400(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # getter for: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mTelephonyToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$1500(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # getter for: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mTelephonyToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$1500(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # getter for: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->mTelephonyToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$1500(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)Landroid/media/ToneGenerator;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$TelephonyTonePlayer;->mToneId:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    :cond_0
    return-void
.end method
