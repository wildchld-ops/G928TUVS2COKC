.class Lcom/android/phone/NetworkSetting$15;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    iput-object p2, p0, Lcom/android/phone/NetworkSetting$15;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0x12

    const-string v0, "feature_zvv"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$15;->val$i:Landroid/content/Intent;

    const-string v1, "mNetworkModeAutoManual"

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mAutoManualSelected:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$5100(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mActivePhone:I
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mActivePhoneSelected:I
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$5200(Lcom/android/phone/NetworkSetting;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$15;->val$i:Landroid/content/Intent;

    const-string v1, "mSimNumber"

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mActivePhone:I
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v0}, Lcom/android/phone/NetworkSetting;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v0}, Lcom/android/phone/NetworkSetting;->getParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->val$i:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v0}, Lcom/android/phone/NetworkSetting;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$15;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$15;->val$i:Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/NetworkSetting;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method
