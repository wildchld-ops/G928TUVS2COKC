.class public Lcom/android/phone/operator/usa/EmergencyCallbackMode;
.super Landroid/app/Activity;
.source "EmergencyCallbackMode.java"

# interfaces
.implements Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/phone/operator/usa/EmergencyCallbackMode$3;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode$3;-><init>(Lcom/android/phone/operator/usa/EmergencyCallbackMode;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/usa/EmergencyCallbackMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->emergencyCall()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/operator/usa/EmergencyCallbackMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->exitEmergencyCallbackMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/operator/usa/EmergencyCallbackMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->finishEmergencyCallbackMode()V

    return-void
.end method

.method private emergencyCall()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    const-string v3, "tel:911"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "EmergencyCallbackMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private exitEmergencyCallbackMode()V
    .locals 1

    const-string v0, "wifi_disable_during_emergency_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/operator/usa/TelephonyExtension;->enableWifiAfterEmergencyCall(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    return-void
.end method

.method private finishEmergencyCallbackMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->finish()V

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "EmergencyCallbackMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateKeyguardPolicy(Z)V
    .locals 3

    const/high16 v2, 0x400000

    const/high16 v1, 0x80000

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->showDialog(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->requestWindowFeature(I)Z

    :cond_0
    const v2, 0x7f04003b

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->setContentView(I)V

    const v2, 0x7f1000bf

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/operator/usa/EmergencyCallbackMode$1;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode$1;-><init>(Lcom/android/phone/operator/usa/EmergencyCallbackMode;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const v2, 0x7f1000be

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    const v2, 0x7f0a03ab

    invoke-virtual {v0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->setLeftHintText(I)V

    const v2, 0x7f0a03aa

    invoke-virtual {v0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->setRightHintText(I)V

    invoke-virtual {v0, p0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const-string v1, "EmergencyCallbackMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog: unexpected ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a03a9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a03ad

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/operator/usa/EmergencyCallbackMode$2;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode$2;-><init>(Lcom/android/phone/operator/usa/EmergencyCallbackMode;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->emergencyCall()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->showDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->removeDialog(I)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0, v3}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->updateKeyguardPolicy(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EmergencyCallbackMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->finishEmergencyCallbackMode()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/operator/usa/EmergencyCallbackMode;->exitEmergencyCallbackMode()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
