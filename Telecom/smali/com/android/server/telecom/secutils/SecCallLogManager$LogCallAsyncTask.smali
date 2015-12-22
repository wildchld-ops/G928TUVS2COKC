.class Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;
.super Landroid/os/AsyncTask;
.source "SecCallLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecCallLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogCallAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/secutils/SecCallLogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/secutils/SecCallLogManager;Lcom/android/server/telecom/secutils/SecCallLogManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;-><init>(Lcom/android/server/telecom/secutils/SecCallLogManager;)V

    return-void
.end method

.method private makeLogValue(Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)Landroid/content/ContentValues;
    .locals 12

    const/4 v1, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    if-nez p1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Start getting ECID information"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callType:I

    invoke-static {v0, v2, v5}, Lcom/android/server/telecom/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/telecom/EcidContact;

    move-result-object v0

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Doing Ecid Call For CallLogManager Lookup"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/telecom/EcidContact;->getCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/telecom/EcidContact;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/telecom/EcidContact;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/telecom/EcidContact;->getBizName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/telecom/EcidContact;->getCnapName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "cityid"

    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "fname"

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "lname"

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "bname"

    invoke-virtual {v4, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    const-string v2, "Unknown Name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Wireless Caller"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "cnap_name"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/android/server/telecom/EcidContact;->clearEcidContacts()V

    :cond_6
    const-string v0, "date"

    iget-wide v6, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "duration"

    iget v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->durationInSec:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "type"

    iget v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    iget v5, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    if-ne v5, v10, :cond_16

    const-string v1, "-2"

    :goto_1
    const-string v2, "number"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "presentation"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isAutoRejectCall:Z

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_8

    const-string v0, "ci_person_id"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v6, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "ci_normalizedNumber"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ci_phoneNumber"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v0, "save_cnap_info_in_call_log"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    if-eqz v0, :cond_19

    const-string v0, "cnap_name"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "cdnip_number"

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->cdnipNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$400(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v0, "voice_call_recording_call_log"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "sec_record"

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->recordSaveFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$500(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_d

    :try_start_0
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_3
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_c

    move v0, v3

    :cond_c
    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeLogValue : account_id -"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , sim_id - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "sim_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "simnum"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->photoringUrl:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "photoring_uri"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->photoringUrl:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v0, "feature_logs_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL_DISCONNECT:I
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$600()I

    move-result v1

    if-eq v0, v1, :cond_f

    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL:I
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$700()I

    move-result v1

    if-eq v0, v1, :cond_f

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$800()I

    move-result v0

    iput v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    # setter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I
    invoke-static {v10}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$802(I)I

    :cond_f
    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeLogValue : service_type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    const-string v0, "service_type"

    iget v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isAutoRejectCall:Z

    if-eqz v0, :cond_1a

    const-string v0, "reject_flag"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_11
    :goto_4
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isCallOutDuration:Z

    if-eqz v0, :cond_1b

    const-string v0, "call_out_duration"

    iget v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->durationInSec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_12
    :goto_5
    const-string v0, "yellowpage_callerid_info"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->mYellowPageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$900(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "cnap_name"

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->mYellowPageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$900(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "service_type"

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TYPE_YELLOWPAGE:I
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$1000()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_13
    sput-boolean v3, Lcom/android/server/telecom/operator/OperatorUtils;->mIsWzoneCall:Z

    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v4, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->updateContentValues(Landroid/content/ContentValues;Lcom/android/internal/telephony/CallerInfo;)V

    :cond_14
    const-string v0, "ltn_sdnname_display"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_15

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "name"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    iget v5, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    if-ne v5, v1, :cond_17

    const-string v1, "-1"

    goto/16 :goto_1

    :cond_17
    iget v5, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_18

    const-string v1, "-3"

    goto/16 :goto_1

    :cond_18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v0, "-1"

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto/16 :goto_1

    :cond_19
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->mCnapName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$300(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "cnap_name"

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->mCnapName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$300(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->mCnapName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$302(Lcom/android/server/telecom/secutils/SecCallLogManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :catch_0
    move-exception v0

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoneId failed : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto/16 :goto_3

    :cond_1a
    const-string v0, "reject_flag"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_1b
    const-string v0, "call_out_duration"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_1c
    const-string v0, "sec_groupid"

    iget v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->groupId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallPlusEnableNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneFeature.hasFeature(PhoneFeature.IMS.IMS_CALLPLUS) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ims_callplus"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->isCallPlusEnableNumber:Z
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callplus db insertion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callPlusId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "callplus"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callPlusId:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spam_report db insertion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->spamCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "spam_report"

    iget v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->spamCallType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1e
    move-object v0, v4

    goto/16 :goto_0

    :cond_1f
    move-object v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->doInBackground([Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)[Landroid/net/Uri;
    .locals 11

    const/4 v10, 0x0

    const/4 v2, 0x0

    array-length v3, p1

    new-array v4, v3, [Landroid/net/Uri;

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, p1, v1

    invoke-direct {p0, v5}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->makeLogValue(Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)Landroid/content/ContentValues;

    move-result-object v6

    :try_start_0
    iget-object v0, v5, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v7, v5, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==  isAutoRejectCall : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v5, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isAutoRejectCall:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, v5, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isAutoRejectCall:Z

    if-eqz v0, :cond_0

    const-string v0, "content://com.sec.android.app.firewall/blocked_logs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_1
    iget-object v5, v5, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Exception raised during adding CallLog entry."

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v8, v9}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object v10, v4, v1

    goto :goto_1

    :catch_1
    move-exception v0

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Exception raised during adding VIP Log entry."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v6, v7}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object v10, v4, v1

    goto :goto_2

    :cond_1
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .locals 6

    const/4 v1, 0x0

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    if-nez v3, :cond_0

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to write call to the log."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
