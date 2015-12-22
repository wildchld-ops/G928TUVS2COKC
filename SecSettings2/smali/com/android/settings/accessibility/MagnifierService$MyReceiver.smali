.class Lcom/android/settings/accessibility/MagnifierService$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MagnifierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierService;


# direct methods
.method private constructor <init>(Lcom/android/settings/accessibility/MagnifierService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accessibility/MagnifierService;Lcom/android/settings/accessibility/MagnifierService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;-><init>(Lcom/android/settings/accessibility/MagnifierService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.app.accesscontrol.PAUSE_MAGNIFIER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ACCESSCONTROL_ENABLED"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a15f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a15fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierService;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->removeView()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierService$MyReceiver;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierService;->mMagnifierSurfaceView:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->showView()V

    goto :goto_0
.end method
