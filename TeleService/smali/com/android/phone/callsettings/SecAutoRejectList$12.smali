.class Lcom/android/phone/callsettings/SecAutoRejectList$12;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

.field final synthetic val$checkBoxArray:[Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;[Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->val$checkBoxArray:[Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode_jpn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->val$checkBoxArray:[Landroid/widget/CheckBox;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode_jpn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode_jpn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->val$checkBoxArray:[Landroid/widget/CheckBox;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode_jpn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    xor-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode_jpn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->val$checkBoxArray:[Landroid/widget/CheckBox;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode_jpn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    xor-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode_jpn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->val$checkBoxArray:[Landroid/widget/CheckBox;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode_jpn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    xor-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode_jpn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectList;->makeScreen()V
    invoke-static {v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$1000(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    return-void
.end method
