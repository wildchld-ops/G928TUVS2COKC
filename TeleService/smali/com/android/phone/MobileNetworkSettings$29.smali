.class Lcom/android/phone/MobileNetworkSettings$29;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->showGlobalNetworkDialog(Ljava/lang/CharSequence;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;

.field final synthetic val$buttonNetworkMode:I

.field final synthetic val$settingsNetworkMode:I


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$29;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iput p2, p0, Lcom/android/phone/MobileNetworkSettings$29;->val$buttonNetworkMode:I

    iput p3, p0, Lcom/android/phone/MobileNetworkSettings$29;->val$settingsNetworkMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$29;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$200(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$29;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$500(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$29;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget v1, p0, Lcom/android/phone/MobileNetworkSettings$29;->val$buttonNetworkMode:I

    iget v2, p0, Lcom/android/phone/MobileNetworkSettings$29;->val$settingsNetworkMode:I

    # invokes: Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->access$2100(Lcom/android/phone/MobileNetworkSettings;II)Z

    return-void
.end method
