.class Lcom/android/phone/callsettings/PresetImage$2;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PresetImage;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PresetImage;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PresetImage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, v5, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, v5, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "PresetImage"

    const-string v6, " Change Preset Dialog is Showing."

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/PresetImage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0252

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_name"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "photo"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "video"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const-string v5, "PresetImage"

    const-string v6, "current preset name != default image"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "rearrange_preset_image_setting"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f09005a

    new-instance v6, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;

    iget-object v7, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {v6, v7, v8}, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "PresetImage"

    const-string v6, "start PresetImageChooserActivity!"

    invoke-static {v5, v6, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/PresetImage;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/phone/callsettings/PresetImageChooserActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "caller"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    const/16 v6, 0x64

    # invokes: Lcom/android/phone/callsettings/PresetImage;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    invoke-static {v5, v3, v6}, Lcom/android/phone/callsettings/PresetImage;->access$400(Lcom/android/phone/callsettings/PresetImage;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    # getter for: Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/callsettings/PresetImage;->access$100(Lcom/android/phone/callsettings/PresetImage;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;

    iget-object v7, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {v6, v7, v8}, Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_3
    const-string v5, "PresetImage"

    const-string v6, "current preset name == default image"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "rearrange_preset_image_setting"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f09005b

    new-instance v6, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;

    iget-object v7, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {v6, v7, v8}, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    # getter for: Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/callsettings/PresetImage;->access$300(Lcom/android/phone/callsettings/PresetImage;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;

    iget-object v7, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-direct {v6, v7, v8}, Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;-><init>(Lcom/android/phone/callsettings/PresetImage;Lcom/android/phone/callsettings/PresetImage$1;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, v5, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, v5, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v5, p0, Lcom/android/phone/callsettings/PresetImage$2;->this$0:Lcom/android/phone/callsettings/PresetImage;

    iget-object v5, v5, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/phone/callsettings/PresetImage$2$1;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/PresetImage$2$1;-><init>(Lcom/android/phone/callsettings/PresetImage$2;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0
.end method
