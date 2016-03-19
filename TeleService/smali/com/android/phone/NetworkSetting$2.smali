.class Lcom/android/phone/NetworkSetting$2;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSearching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mIsSearching:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mIsSearching:Z
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->stopLoadNetworksList()V
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)V

    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->updateDataState()V
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;)V

    return-void
.end method
