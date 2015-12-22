.class Lcom/android/phone/NetworkModeSpinner$13$2;
.super Ljava/lang/Object;
.source "NetworkModeSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModeSpinner$13;->ChangeNetworkMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/NetworkModeSpinner$13;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModeSpinner$13;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModeSpinner$13$2;->this$1:Lcom/android/phone/NetworkModeSpinner$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$13$2;->this$1:Lcom/android/phone/NetworkModeSpinner$13;

    iget-object v0, v0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$2000(Lcom/android/phone/NetworkModeSpinner;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MobileNetworkSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModeSpinner$13$2;->this$1:Lcom/android/phone/NetworkModeSpinner$13;

    iget-object v0, v0, Lcom/android/phone/NetworkModeSpinner$13;->this$0:Lcom/android/phone/NetworkModeSpinner;

    # getter for: Lcom/android/phone/NetworkModeSpinner;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModeSpinner;->access$2000(Lcom/android/phone/NetworkModeSpinner;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MobileNetworkSettings;

    new-instance v1, Lcom/android/phone/NetworkModeSpinner$13$2$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModeSpinner$13$2$1;-><init>(Lcom/android/phone/NetworkModeSpinner$13$2;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
