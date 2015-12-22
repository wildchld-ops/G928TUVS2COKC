.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;
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

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v3, 0x0

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setMobileDataEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTempPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSeletionInProgress(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/16 v3, -0x2713

    # setter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I
    invoke-static {v2, v3}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4402(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$10;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateDataState()V
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto :goto_0
.end method
