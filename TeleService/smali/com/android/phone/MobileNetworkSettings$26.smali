.class Lcom/android/phone/MobileNetworkSettings$26;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->showRebootDialog(II)V
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

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$26;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iput p2, p0, Lcom/android/phone/MobileNetworkSettings$26;->val$buttonNetworkMode:I

    iput p3, p0, Lcom/android/phone/MobileNetworkSettings$26;->val$settingsNetworkMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$26;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$2000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/MobileNetworkSettings$26;->val$buttonNetworkMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$26;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget v2, p0, Lcom/android/phone/MobileNetworkSettings$26;->val$buttonNetworkMode:I

    iget v3, p0, Lcom/android/phone/MobileNetworkSettings$26;->val$settingsNetworkMode:I

    # invokes: Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkMode(II)Z
    invoke-static {v1, v2, v3}, Lcom/android/phone/MobileNetworkSettings;->access$2100(Lcom/android/phone/MobileNetworkSettings;II)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startSafeActivity(Landroid/content/Intent;)V

    return-void
.end method
