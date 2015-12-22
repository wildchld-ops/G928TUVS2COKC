.class Lcom/android/settings/wfd/WfdPickerDialog$3;
.super Ljava/lang/Object;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerDialog;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerDialog$3;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iput-object p2, p0, Lcom/android/settings/wfd/WfdPickerDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$3;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    # setter for: Lcom/android/settings/wfd/WfdPickerDialog;->mDisconnectBtn:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerDialog;->access$102(Lcom/android/settings/wfd/WfdPickerDialog;Landroid/widget/Button;)Landroid/widget/Button;

    return-void
.end method
