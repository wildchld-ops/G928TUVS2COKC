.class Lcom/android/phone/photoring/CallMessageNetwork$2;
.super Ljava/lang/Thread;
.source "CallMessageNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/CallMessageNetwork;->getContentSpecCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/CallMessageNetwork;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/CallMessageNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/CallMessageNetwork$2;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "mcms.mcnap.uplus.co.kr/CallMessage/getContentSpec.call"

    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, p0, Lcom/android/phone/photoring/CallMessageNetwork$2;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    # invokes: Lcom/android/phone/photoring/CallMessageNetwork;->getBaseParameters(Ljava/util/LinkedHashMap;)V
    invoke-static {v3, v1}, Lcom/android/phone/photoring/CallMessageNetwork;->access$300(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/util/LinkedHashMap;)V

    new-instance v0, Lcom/android/phone/photoring/http/HTTPRequestHelper;

    iget-object v3, p0, Lcom/android/phone/photoring/CallMessageNetwork$2;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    # getter for: Lcom/android/phone/photoring/CallMessageNetwork;->mHttpResponseHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/photoring/CallMessageNetwork;->access$400(Lcom/android/phone/photoring/CallMessageNetwork;)Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CONTENT_SPEC_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-direct {v0, v3, v4}, Lcom/android/phone/photoring/http/HTTPRequestHelper;-><init>(Landroid/os/Handler;Lcom/android/phone/photoring/CallMessageConstants$RequestType;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/photoring/http/HTTPRequestHelper;->post(Ljava/lang/String;Ljava/util/Map;)Z

    return-void

    :cond_0
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "showme.mobile.olleh.com/CallMessage/getContentSpec.call"

    goto :goto_0

    :cond_1
    const-string v2, "mcms.mcnap.uplus.co.kr/CallMessage/getContentSpec.call"

    goto :goto_0
.end method
