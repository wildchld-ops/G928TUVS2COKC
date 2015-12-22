.class Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;
.super Ljava/lang/Object;
.source "SecCallLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecCallLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final accountHandle:Landroid/telecom/PhoneAccountHandle;

.field public callPlusId:Ljava/lang/String;

.field public final callType:I

.field public final callerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final dataUsage:Ljava/lang/Long;

.field public dbUri:Landroid/net/Uri;

.field public final durationInSec:I

.field public extraValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final features:I

.field public groupId:I

.field public final isAutoRejectCall:Z

.field public isCallOutDuration:Z

.field public final number:Ljava/lang/String;

.field public final photoringUrl:Ljava/lang/String;

.field public final presentation:I

.field public service_type:I

.field public spamCallType:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;Ljava/lang/String;ZI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callType:I

    iput p6, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->features:I

    iput-object p7, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-wide p8, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->timestamp:J

    const-wide/16 v2, 0x3e8

    div-long v2, p10, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->durationInSec:I

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dataUsage:Ljava/lang/Long;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->photoringUrl:Ljava/lang/String;

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isAutoRejectCall:Z

    move/from16 v0, p15

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->groupId:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->spamCallType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p3, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    iput p5, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callType:I

    iput p6, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->features:I

    iput-object p7, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-wide p8, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->timestamp:J

    const-wide/16 v2, 0x3e8

    div-long v2, p10, v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->durationInSec:I

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dataUsage:Ljava/lang/Long;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->photoringUrl:Ljava/lang/String;

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isAutoRejectCall:Z

    move/from16 v0, p15

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->groupId:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callPlusId:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->spamCallType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callType:I

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callType:I

    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->features:I

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->features:I

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-wide v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->timestamp:J

    iput-wide v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->timestamp:J

    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->durationInSec:I

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->durationInSec:I

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dataUsage:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dataUsage:Ljava/lang/Long;

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->photoringUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->photoringUrl:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isAutoRejectCall:Z

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isAutoRejectCall:Z

    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    iget-boolean v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isCallOutDuration:Z

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isCallOutDuration:Z

    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->groupId:I

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->groupId:I

    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->spamCallType:I

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->spamCallType:I

    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args.callPlusId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callPlusId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callPlusId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callPlusId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public addExtraValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSpamCallType(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->spamCallType:I

    return-void
.end method
