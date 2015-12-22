.class Lcom/android/phone/operator/usa/DataRoamingGuard$3;
.super Ljava/lang/Object;
.source "DataRoamingGuard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/DataRoamingGuard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    # invokes: Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->access$100(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    # invokes: Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->access$200(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    # invokes: Lcom/android/phone/operator/usa/DataRoamingGuard;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->access$300(Lcom/android/phone/operator/usa/DataRoamingGuard;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->finish()V

    return-void
.end method
