.class Lcom/android/phone/WfcEmergencyCallController$3;
.super Ljava/lang/Thread;
.source "WfcEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/WfcEmergencyCallController;->reportCallFailedWithLocalCauseToRilInNewThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WfcEmergencyCallController;


# direct methods
.method constructor <init>(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController$3;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v3, 0xc8

    new-array v1, v3, [B

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController$3;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    # invokes: Lcom/android/phone/WfcEmergencyCallController;->createRilRequestForLocalHangBeforeTimeout()[B
    invoke-static {v3}, Lcom/android/phone/WfcEmergencyCallController;->access$1000(Lcom/android/phone/WfcEmergencyCallController;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController$3;->this$0:Lcom/android/phone/WfcEmergencyCallController;

    # getter for: Lcom/android/phone/WfcEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/phone/WfcEmergencyCallController;->access$1100(Lcom/android/phone/WfcEmergencyCallController;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw([B[B)I

    move-result v2

    # getter for: Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/WfcEmergencyCallController;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendOemRilRequestRaw: return value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
