.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkOperators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateDataState()V
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1    # Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isWaitRadioPowerOff:Z
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->resetAll:Z
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->DoReseAll_AfterRadioPoweroff()V
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isWaitRadioPowerOff:Z
    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$102(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$2;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setIMSISelection()V
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto :goto_0
.end method
