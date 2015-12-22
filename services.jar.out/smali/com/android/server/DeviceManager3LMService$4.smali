.class Lcom/android/server/DeviceManager3LMService$4;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceManager3LMService;->clearNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    iput p2, p0, Lcom/android/server/DeviceManager3LMService$4;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$4;->this$0:Lcom/android/server/DeviceManager3LMService;

    # getter for: Lcom/android/server/DeviceManager3LMService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/DeviceManager3LMService;->access$300(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/DeviceManager3LMService$4;->val$id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
