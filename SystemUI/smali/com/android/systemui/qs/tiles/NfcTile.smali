.class public Lcom/android/systemui/qs/tiles/NfcTile;
.super Lcom/android/systemui/qs/QSTile;
.source "NfcTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADAPTER_BOOT_ACTION:Ljava/lang/String; = "android.nfc.action.ADAPTER_BOOT_COMPLETED"

.field private static final LOCKSTATUS_LOCK_ACTION:Ljava/lang/String; = "com.samsung.felica.action.LOCKSTATUS_LOCK"

.field private static final LOCKSTATUS_UNLOCK_ACTION:Ljava/lang/String; = "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

.field private static final NFC_STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NfcTile"


# instance fields
.field private mClickFromOffPriorState:I

.field private mContentTextId:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsClickFromOff:Z

.field private mIsProcessing:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mTextID:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    iput v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    new-instance v0, Lcom/android/systemui/qs/tiles/NfcTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/NfcTile$1;-><init>(Lcom/android/systemui/qs/tiles/NfcTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/NfcTile;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/NfcTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/NfcTile;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/NfcTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/tiles/NfcTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z

    return p1
.end method

.method private handleStateChanged(I)I
    .locals 3

    const/4 v0, 0x2

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChangedForKor(I)I

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "NfcTile"

    const-string v2, "NFC Service is not ready - handleStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleStateChangedForKor(I)I
    .locals 6

    const/4 v2, 0x3

    const v5, 0x7f0d03bf

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v3, "nfc"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v1, "NfcTile"

    const-string v2, "NFC Service is not ready - handleStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    iput v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    goto :goto_0

    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    const v0, 0x7f0d0214

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    if-ne v3, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    if-ne v1, v0, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    iput p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    const v0, 0x7f0d0214

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    move v0, v2

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    const v0, 0x7f0d0215

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    iput v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    if-ne v0, v1, :cond_2

    iput p1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    :goto_1
    const v0, 0x7f0d0214

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    move v0, v2

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    goto :goto_1

    :pswitch_4
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    iput v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    iput v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 3

    const v2, 0x7f0207da

    const v1, 0x7f0207d7

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleUpdateIconStateForKor(Lcom/android/systemui/qs/QSTile$MultiState;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :cond_1
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0207d8

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :cond_3
    const v0, 0x7f0207db

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_4

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :cond_4
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0207d6

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :cond_5
    const v0, 0x7f0207d9

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleUpdateIconStateForKor(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f0207d5

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0207d4

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f020cb2

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020cb3

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020cb4

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0207db

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshButtonState(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getActionTypeOnCover()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public handleClick()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, -0x1

    const/4 v0, 0x5

    const/4 v5, 0x0

    const/4 v2, 0x1

    const-string v3, "NfcTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v13, :cond_3

    const-string v0, "NfcTile"

    const-string v1, "!mUse3ToggleNFC && state DIM!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2

    const-string v0, "NfcTile"

    const-string v1, "(!SEC_PRODUCT_FEATURE_NFC_FAVER3_SUPPORT) mNfcAdapter is Null!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_3
    new-array v10, v2, [Ljava/lang/String;

    const-string v1, "false"

    aput-object v1, v10, v5

    new-array v11, v2, [Ljava/lang/String;

    const-string v1, "true"

    aput-object v1, v11, v5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v1, v3, v4, v10}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isNFCEnabledWithMsg"

    invoke-static {v1, v3, v4, v11}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v4, "isNFCStateChangeAllowed"

    invoke-static {v1, v3, v4, v10}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-eq v8, v12, :cond_5

    if-eq v6, v12, :cond_5

    if-eq v7, v12, :cond_5

    if-eqz v8, :cond_4

    if-eqz v6, :cond_4

    if-nez v7, :cond_5

    :cond_4
    const-string v0, "NfcTile"

    const-string v1, "onClick(): state change is not allowed by EDM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v1, v13, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z

    if-eqz v1, :cond_6

    const-string v0, "NfcTile"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v0, "NfcTile"

    const-string v1, "NFC Service is not ready - onClick"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_8

    const-string v1, "NfcTile"

    const-string v3, "mNfcAdapter is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_8

    const-string v0, "NfcTile"

    const-string v1, "mNfcAdapter is still null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v9

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z

    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    iput v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    const-string v0, "NfcTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NFC state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsProcessing:Z

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "NfcTile"

    const-string v3, "Change to NFC STATE_CARD_MODE_ON"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIsClickFromOff:Z

    iput v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mClickFromOffPriorState:I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Enabling NFC"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "NfcTile"

    const-string v1, "Change to NFC STATE_ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "NfcTile"

    const-string v3, "Change to NFC STATE_OFF"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Disabling NFC"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_a

    const-string v0, "NfcTile"

    const-string v1, "(!mUse3ToggleNFC) mNfcAdapter is Null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public handleLongClick()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const-string v7, "NfcTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleLongClick : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v6, v6, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v11, [Ljava/lang/String;

    const-string v6, "false"

    aput-object v6, v4, v10

    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "true"

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v8, "isSettingsChangesAllowed"

    invoke-static {v6, v7, v8, v5}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v8, "isNFCEnabledWithMsg"

    invoke-static {v6, v7, v8, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const-string v7, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v8, "isNFCStateChangeAllowed"

    invoke-static {v6, v7, v8, v4}, Lcom/android/systemui/qs/tiles/NfcTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v2, v9, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v1, v9, :cond_1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v6, "NfcTile"

    const-string v7, "handleLongClick(): setting acess  is not allowed by EDM"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v6, "KDDI"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "DCM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "SBM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$NfcOsaifukeitaiSettingsActivity"

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/qs/tiles/NfcTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/qs/tiles/NfcTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->handleLongClick()V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 6

    const v5, 0x7f0d0387

    const/4 v4, 0x1

    const v3, 0x7f0d039b

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    iput-boolean v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/NfcTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    packed-switch v0, :pswitch_data_0

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/tiles/NfcTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    const v1, 0x7f0d0388

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/NfcTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    :pswitch_3
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/qs/tiles/NfcTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NfcTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method public init()V
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "NfcTile"

    const-string v1, "NFC Service is not ready - init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUse3ToggleNFC:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iput v6, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const v0, 0x7f0d03bf

    iput v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mTextID:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iput v6, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->handleStateChanged(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NfcTile;->refreshButtonState(I)V

    goto :goto_1
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NfcTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitch(I)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NfcTile;->mFilter:Landroid/content/IntentFilter;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
