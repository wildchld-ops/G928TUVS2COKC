.class Lcom/android/phone/operator/usa/RoamingSettings$6;
.super Ljava/lang/Object;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/RoamingSettings;->internationalCdmaVoiceRoamingSettingTreeClick()V
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

    iput-object p1, p0, Lcom/android/phone/operator/usa/RoamingSettings$6;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$6;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    const/4 v1, 0x3

    const/4 v2, 0x1

    # invokes: Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/RoamingSettings;->access$000(Lcom/android/phone/operator/usa/RoamingSettings;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$6;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    # invokes: Lcom/android/phone/operator/usa/RoamingSettings;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/RoamingSettings;->access$100(Lcom/android/phone/operator/usa/RoamingSettings;)V

    return-void
.end method
