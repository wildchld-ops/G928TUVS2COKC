.class Lcom/android/phone/CarrierManager$3$1;
.super Ljava/lang/Object;
.source "CarrierManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CarrierManager$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CarrierManager$3;


# direct methods
.method constructor <init>(Lcom/android/phone/CarrierManager$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CarrierManager$3$1;->this$1:Lcom/android/phone/CarrierManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "TInCallScreen Connected - OFFHOOK"

    # invokes: Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/CarrierManager;->access$500(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager$3$1;->this$1:Lcom/android/phone/CarrierManager$3;

    iget-object v0, v0, Lcom/android/phone/CarrierManager$3;->this$0:Lcom/android/phone/CarrierManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CarrierManager;->displayTPhone(I)V

    return-void
.end method
