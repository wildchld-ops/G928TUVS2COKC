.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    const-string v2, "volte_chn_callsetting_apn_prompt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iget-object v2, v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDefaultApnName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iget-object v2, v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDefaultApnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a07a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a07aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0090

    new-instance v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15$2;

    invoke-direct {v4, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15$2;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a008e

    new-instance v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15$1;

    invoke-direct {v4, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15$1;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
