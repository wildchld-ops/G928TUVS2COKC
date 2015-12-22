.class Lcom/android/server/telecom/CarrierMatchDialogActivity$1;
.super Ljava/lang/Object;
.source "CarrierMatchDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/CarrierMatchDialogActivity;->showCarrierMatchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/CarrierMatchDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CarrierMatchDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity$1;->this$0:Lcom/android/server/telecom/CarrierMatchDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/server/telecom/CarrierMatchDialogActivity$1;->this$0:Lcom/android/server/telecom/CarrierMatchDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/CarrierMatchDialogActivity;->finish()V

    return-void
.end method
