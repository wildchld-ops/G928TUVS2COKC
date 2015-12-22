.class Lcom/android/phone/EmergencyDialer$ActionModeCallback$1$1;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1$1;->this$2:Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "zero_emergency_dialer_layout"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tablet_l_osup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1$1;->this$2:Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1$1;->this$2:Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;

    iget-object v1, v1, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1$1;->this$2:Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    # getter for: Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->access$900(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1$1;->this$2:Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;

    iget-object v1, v1, Lcom/android/phone/EmergencyDialer$ActionModeCallback$1;->this$1:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v1, v1, Lcom/android/phone/EmergencyDialer$ActionModeCallback;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
