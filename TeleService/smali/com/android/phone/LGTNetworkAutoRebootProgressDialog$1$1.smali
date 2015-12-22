.class Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1$1;
.super Ljava/lang/Thread;
.source "LGTNetworkAutoRebootProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1$1;->this$1:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1$1;->this$1:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;

    iget-object v1, v1, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog$1;->this$0:Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/phone/LGTNetworkAutoRebootProgressDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
