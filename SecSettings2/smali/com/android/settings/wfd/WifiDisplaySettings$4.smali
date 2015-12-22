.class Lcom/android/settings/wfd/WifiDisplaySettings$4;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$200(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I
    invoke-static {v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$202(Lcom/android/settings/wfd/WifiDisplaySettings;I)I

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method
