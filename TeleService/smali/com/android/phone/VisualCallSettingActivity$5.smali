.class Lcom/android/phone/VisualCallSettingActivity$5;
.super Ljava/lang/Object;
.source "VisualCallSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/VisualCallSettingActivity$5;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity$5;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v0}, Lcom/android/phone/VisualCallSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "visual_call_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/VisualCallSettingActivity$5;->this$0:Lcom/android/phone/VisualCallSettingActivity;

    invoke-virtual {v0}, Lcom/android/phone/VisualCallSettingActivity;->updateTurnOnStatus()V

    return-void
.end method
