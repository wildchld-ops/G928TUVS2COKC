.class Lcom/android/services/telephony/ImsConference$2;
.super Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;
.source "ImsConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/ImsConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/ImsConference;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/ImsConference$2;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOriginalConnectionConfigured(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$2;->this$0:Lcom/android/services/telephony/ImsConference;

    # getter for: Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;
    invoke-static {v0}, Lcom/android/services/telephony/ImsConference;->access$200(Lcom/android/services/telephony/ImsConference;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$2;->this$0:Lcom/android/services/telephony/ImsConference;

    # invokes: Lcom/android/services/telephony/ImsConference;->handleOriginalConnectionChange()V
    invoke-static {v0}, Lcom/android/services/telephony/ImsConference;->access$300(Lcom/android/services/telephony/ImsConference;)V

    :cond_0
    return-void
.end method
