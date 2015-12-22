.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$15;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$15;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "total"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$15;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    iget-object v1, v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$15;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    iget-object v1, v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$15;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$15;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    move-result-object v1

    int-to-double v2, v0

    const-wide/16 v4, 0x4b0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->setPercent(DJ)V

    :cond_1
    if-gtz v0, :cond_3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$15;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    iget-object v1, v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$15;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    iget-object v1, v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->setState(I)V

    :cond_2
    const/4 v0, 0x0

    :cond_3
    return-void
.end method
