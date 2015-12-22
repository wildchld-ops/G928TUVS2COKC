.class Lcom/android/phone/operator/usa/RoamingSettings$4;
.super Ljava/lang/Object;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/RoamingSettings;->domesticCdmaDataRoamingSettingTreeClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/RoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/RoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/RoamingSettings$4;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$4;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    # invokes: Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v2, v2}, Lcom/android/phone/operator/usa/RoamingSettings;->access$000(Lcom/android/phone/operator/usa/RoamingSettings;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$4;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    # invokes: Lcom/android/phone/operator/usa/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/RoamingSettings;->access$100(Lcom/android/phone/operator/usa/RoamingSettings;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$4;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    const-string v1, "domestic_cdma_data_roaming_setting_extra"

    # invokes: Lcom/android/phone/operator/usa/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/RoamingSettings;->access$300(Lcom/android/phone/operator/usa/RoamingSettings;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$4;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/RoamingSettings;->access$000(Lcom/android/phone/operator/usa/RoamingSettings;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$4;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    # invokes: Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v2, v2}, Lcom/android/phone/operator/usa/RoamingSettings;->access$000(Lcom/android/phone/operator/usa/RoamingSettings;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$4;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    # invokes: Lcom/android/phone/operator/usa/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/RoamingSettings;->access$100(Lcom/android/phone/operator/usa/RoamingSettings;)V

    goto :goto_0
.end method
