.class Lcom/android/settings/notification/ManagedServiceSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ManagedServiceSettings$2;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings$2;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    # invokes: Lcom/android/settings/notification/ManagedServiceSettings;->updateList()V
    invoke-static {v0}, Lcom/android/settings/notification/ManagedServiceSettings;->access$000(Lcom/android/settings/notification/ManagedServiceSettings;)V

    return-void
.end method
