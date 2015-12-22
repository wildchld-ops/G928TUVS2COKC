.class Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$3;
.super Ljava/lang/Object;
.source "LGTNetworkAutoRebootProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$3;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$3;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    # invokes: Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->doActivityFinish()V
    invoke-static {v0}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->access$400(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;)V

    return-void
.end method
