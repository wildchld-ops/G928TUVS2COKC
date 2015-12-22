.class Lcom/android/phone/NetworkModePreference$10$2;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkModePreference$10;->ChangeNetworkMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/NetworkModePreference$10;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$10$2;->this$1:Lcom/android/phone/NetworkModePreference$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$10$2;->this$1:Lcom/android/phone/NetworkModePreference$10;

    iget-object v0, v0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MobileNetworkSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$10$2;->this$1:Lcom/android/phone/NetworkModePreference$10;

    iget-object v0, v0, Lcom/android/phone/NetworkModePreference$10;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MobileNetworkSettings;

    new-instance v1, Lcom/android/phone/NetworkModePreference$10$2$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$10$2$1;-><init>(Lcom/android/phone/NetworkModePreference$10$2;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
