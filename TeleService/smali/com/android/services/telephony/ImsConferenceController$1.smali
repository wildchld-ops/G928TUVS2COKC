.class Lcom/android/services/telephony/ImsConferenceController$1;
.super Landroid/telecom/Conference$Listener;
.source "ImsConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/ImsConferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/ImsConferenceController;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/ImsConferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/ImsConferenceController$1;->this$0:Lcom/android/services/telephony/ImsConferenceController;

    invoke-direct {p0}, Landroid/telecom/Conference$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Conference;)V
    .locals 4
    .param p1    # Landroid/telecom/Conference;

    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/services/telephony/ImsConferenceController;

    const-string v1, "onDestroyed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController$1;->this$0:Lcom/android/services/telephony/ImsConferenceController;

    # getter for: Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/services/telephony/ImsConferenceController;->access$000(Lcom/android/services/telephony/ImsConferenceController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
