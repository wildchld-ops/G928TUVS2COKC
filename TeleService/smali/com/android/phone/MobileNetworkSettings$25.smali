.class Lcom/android/phone/MobileNetworkSettings$25;
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

.field final synthetic val$settingsNetworkMode:I


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$25;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iput p2, p0, Lcom/android/phone/MobileNetworkSettings$25;->val$settingsNetworkMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$25;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->access$2000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/MobileNetworkSettings$25;->val$settingsNetworkMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
