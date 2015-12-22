.class Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    # getter for: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$1000(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "PhoneNumberLocator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick mSubAppBarView value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    # getter for: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$1000(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    # getter for: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarOnffTextview:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$1100(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    # getter for: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$1000(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0771

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "number_region_activation_preference"

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v3, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    # invokes: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->updateLayout(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$1200(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0772

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
