.class public Lcom/android/server/telecom/secutils/SecPhoneStateListener;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "SecPhoneStateListener.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field mStatusBarHelper:Lcom/android/server/telecom/secutils/SecStatusBarHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    new-instance v1, Lcom/android/server/telecom/secutils/SecStatusBarHelper;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/server/telecom/secutils/SecStatusBarHelper;-><init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V

    iput-object v1, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mStatusBarHelper:Lcom/android/server/telecom/secutils/SecStatusBarHelper;

    return-void
.end method

.method private onPhoneStateChanged()V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mStatusBarHelper:Lcom/android/server/telecom/secutils/SecStatusBarHelper;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->enableNotificationAlerts(Z)V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->updateWakeKey()V

    return-void
.end method

.method private updateWakeKey()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Lcom/android/server/telecom/secutils/FileWriteThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->start()V

    new-instance v0, Lcom/android/server/telecom/secutils/FileWriteThread;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->start()V

    new-instance v0, Lcom/android/server/telecom/secutils/FileWriteThread;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->start()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallAdded state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "onCallAdded : Call is in an state (%s), not broadcasting: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->onPhoneStateChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged newState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p3, :pswitch_data_0

    const-string v0, "Call is in an unknown state (%s), not broadcasting: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    :goto_1
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->onPhoneStateChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
