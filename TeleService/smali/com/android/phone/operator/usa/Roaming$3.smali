.class Lcom/android/phone/operator/usa/Roaming$3;
.super Ljava/lang/Object;
.source "Roaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/Roaming;->domesticCdmaVoiceRoamingSettingTreeClick(Z)V
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

    iput-object p1, p0, Lcom/android/phone/operator/usa/Roaming$3;->this$0:Lcom/android/phone/operator/usa/Roaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$3;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # invokes: Lcom/android/phone/operator/usa/Roaming;->setCheckSecureSettingRoamValue(II)V
    invoke-static {v0, v1, v1}, Lcom/android/phone/operator/usa/Roaming;->access$400(Lcom/android/phone/operator/usa/Roaming;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$3;->this$0:Lcom/android/phone/operator/usa/Roaming;

    # invokes: Lcom/android/phone/operator/usa/Roaming;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/Roaming;->access$500(Lcom/android/phone/operator/usa/Roaming;)V

    return-void
.end method
