.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$700(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-virtual {v3}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lte_roaming_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
