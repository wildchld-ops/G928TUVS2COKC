.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lte_roaming_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$700(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
