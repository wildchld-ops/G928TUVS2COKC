.class Lcom/android/phone/operator/usa/Roaming$8;
.super Ljava/lang/Object;
.source "Roaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/Roaming;->internationalCdmaDataRoamingSettingTreeClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/Roaming;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/Roaming;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/Roaming$8;->this$0:Lcom/android/phone/operator/usa/Roaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$8;->this$0:Lcom/android/phone/operator/usa/Roaming;

    const/4 v1, 0x4

    # invokes: Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/Roaming;->access$400(Lcom/android/phone/operator/usa/Roaming;II)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$8;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # getter for: Lcom/android/phone/operator/usa/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/operator/usa/Roaming;->access$200(Lcom/android/phone/operator/usa/Roaming;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_0
    return-void
.end method
