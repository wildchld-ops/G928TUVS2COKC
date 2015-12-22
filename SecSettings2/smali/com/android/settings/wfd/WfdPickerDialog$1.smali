.class Lcom/android/settings/wfd/WfdPickerDialog$1;
.super Ljava/lang/Object;
.source "WfdPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->requestToastPopup()V

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    # getter for: Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->access$000(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    # getter for: Lcom/android/settings/wfd/WfdPickerDialog;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->access$000(Lcom/android/settings/wfd/WfdPickerDialog;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerDialog$1;->this$0:Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->finish()V

    return-void
.end method
