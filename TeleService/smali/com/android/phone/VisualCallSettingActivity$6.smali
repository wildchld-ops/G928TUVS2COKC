.class Lcom/android/phone/VisualCallSettingActivity$6;
.super Ljava/lang/Object;
.source "VisualCallSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VisualCallSettingActivity;->showUserAgreementDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VisualCallSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/VisualCallSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VisualCallSettingActivity$6;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity$6;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "visual_call_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity$6;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v0}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus()V

    :cond_1
    return v2
.end method
