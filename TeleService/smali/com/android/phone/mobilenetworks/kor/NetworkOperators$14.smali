.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;
.super Ljava/lang/Object;
.source "NetworkOperators.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # setter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->resetAll:Z
    invoke-static {v1, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$202(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendImsiStatusChangeNotiForResetAll()V
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->DoReseAll_AfterRadioPoweroff()V
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # setter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isWaitRadioPowerOff:Z
    invoke-static {v1, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$102(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$14;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method
