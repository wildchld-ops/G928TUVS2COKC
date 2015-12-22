.class public Lcom/android/phone/LGTNetworkAutoRebootPopup;
.super Lcom/android/internal/app/AlertActivity;
.source "LGTNetworkAutoRebootPopup.java"


# instance fields
.field final app:Lcom/android/phone/PhoneGlobals;

.field private isWaitRadioPowerOff:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->app:Lcom/android/phone/PhoneGlobals;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->isWaitRadioPowerOff:Z

    new-instance v0, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup$1;-><init>(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTNetworkAutoRebootPopup;)Z
    .locals 1
    .param p0    # Lcom/android/phone/LGTNetworkAutoRebootPopup;

    iget-boolean v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->isWaitRadioPowerOff:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/LGTNetworkAutoRebootPopup;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/LGTNetworkAutoRebootPopup;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->isWaitRadioPowerOff:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V
    .locals 0
    .param p0    # Lcom/android/phone/LGTNetworkAutoRebootPopup;

    invoke-direct {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->setAuto()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/LGTNetworkAutoRebootPopup;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/phone/LGTNetworkAutoRebootPopup;

    iget-object v0, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4
    .param p1    # I
    .param p2    # Z

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "LGTNetworkAutoRebootPopup "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAuto()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.LGTNetworkAutoRebootProgressDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "LGTNetworkAutoRebootPopup "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "LGTNetworkAutoRebootPopup "

    const-string v8, " show LGTNetworkAutoRebootPopup !! "

    invoke-static {v5, v8}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mWindowManager:Landroid/view/IWindowManager;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v8, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lte_mode_on"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_0

    move v1, v6

    :goto_0
    const-string v5, "ril.simtype"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1a

    invoke-direct {p0, v5, v6}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->requestSystemKeyEvent(IZ)Z

    const/4 v5, 0x3

    invoke-direct {p0, v5, v6}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->requestSystemKeyEvent(IZ)Z

    const/16 v5, 0xbb

    invoke-direct {p0, v5, v6}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->requestSystemKeyEvent(IZ)Z

    iget-object v2, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "LGTNetworkAutoRebootPopup "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLteOn="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " simtype="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0a0466

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v5, 0x7f0a0479

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v5, 0x7f0a0472

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    new-instance v5, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;

    invoke-direct {v5, p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup$2;-><init>(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkAutoRebootPopup;->setupAlert()V

    return-void

    :cond_0
    move v1, v7

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const-string v1, "LGTNetworkAutoRebootPopup "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore back key keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    const-string v1, "LGTNetworkAutoRebootPopup "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore camera key keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0x126 -> :sswitch_0
        0x12a -> :sswitch_0
        0x12b -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "LGTNetworkAutoRebootPopup "

    const-string v1, " onPause!! "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method
