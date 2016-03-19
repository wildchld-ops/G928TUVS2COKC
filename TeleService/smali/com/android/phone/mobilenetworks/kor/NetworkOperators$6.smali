.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;
.super Ljava/lang/Object;
.source "NetworkOperators.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)V

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSearchButton()V
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto :goto_0
.end method
