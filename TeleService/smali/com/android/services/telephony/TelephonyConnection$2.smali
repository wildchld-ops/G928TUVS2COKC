.class Lcom/android/services/telephony/TelephonyConnection$2;
.super Ljava/lang/Object;
.source "TelephonyConnection.java"

# interfaces
.implements Lcom/android/internal/telephony/Connection$PostDialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostDialChar(C)V
    .locals 5
    .param p1    # C

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v1, "onPostDialChar: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setNextPostDialWaitChar(C)V

    :cond_0
    return-void
.end method

.method public onPostDialWait()V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v1, "onPostDialWait"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v0, v0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, v1, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setPostDialWait(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
