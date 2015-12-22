.class public Lcom/android/phone/CdmaCallWaitingSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaCallWaitingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallWaitingSetting$3;,
        Lcom/android/phone/CdmaCallWaitingSetting$AppState;
    }
.end annotation


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static mSimId:I


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

.field private mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mCWDataStale:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mDisplayMode:I

.field private mGetMoreOptionsComplete:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallWaitingSetting;->NUM_PROJECTION:[Ljava/lang/String;

    sput v2, Lcom/android/phone/CdmaCallWaitingSetting;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    const/4 v0, -0x4

    iput v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    new-instance v0, Lcom/android/phone/CdmaCallWaitingSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallWaitingSetting$1;-><init>(Lcom/android/phone/CdmaCallWaitingSetting;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaCallWaitingSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallWaitingSetting$2;-><init>(Lcom/android/phone/CdmaCallWaitingSetting;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mGetMoreOptionsComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CdmaCallWaitingSetting;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/CdmaCallWaitingSetting;

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaCallWaitingSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/phone/CdmaCallWaitingSetting;

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private final dismissBusyDialog()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "CDMA call waiting settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onCreateMultiSIM()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "CDMA call waiting settings"

    const-string v1, "multisim CG Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CdmaCallWaitingSetting;->mSimId:I

    :cond_0
    :goto_0
    sget v0, Lcom/android/phone/CdmaCallWaitingSetting;->mSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "CDMA call waiting settings"

    const-string v1, "multisim GC Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v2, Lcom/android/phone/CdmaCallWaitingSetting;->mSimId:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method private setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V
    .locals 2
    .param p1    # Lcom/android/phone/CdmaCallWaitingSetting$AppState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V
    .locals 4
    .param p1    # Lcom/android/phone/CdmaCallWaitingSetting$AppState;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v3, 0x64

    const/16 v2, 0x384

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_3

    sparse-switch p2, :sswitch_data_0

    :goto_1
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    :goto_2
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_2

    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    :goto_3
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$3;->$SwitchMap$com$android$phone$CdmaCallWaitingSetting$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_4
    iput-object p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne p1, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const-string v0, "setAppState: DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallWaitingSetting;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    goto :goto_4

    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissDialog(I)V

    goto :goto_4

    :pswitch_4
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_4

    :pswitch_5
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq p1, v0, :cond_9

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->dismissBusyDialog()V

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const v7, 0x7f0a03e3

    const v6, 0x7f0a00c9

    const/4 v3, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->onCreateMultiSIM()V

    const v2, 0x7f070018

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_cdma_cw_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v2, "button_cdma_cw_dis_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v7}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v6}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v7}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mContactListIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eqz p1, :cond_6

    const-string v2, "app_state_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    iput-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    const-string v2, "button_cdma_cw_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    const-string v2, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_5

    :cond_3
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->showDialog(I)V

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    :cond_5
    return-void

    :cond_6
    iput-boolean v5, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    iput-boolean v4, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1    # I

    const/4 v7, 0x0

    const v6, 0x7f0a00ef

    const/4 v5, 0x1

    const/16 v4, 0x64

    if-eq p1, v4, :cond_0

    const/16 v4, 0x384

    if-ne p1, v4, :cond_1

    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a00e7

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    :goto_1
    return-object v1

    :sswitch_0
    iput-boolean v5, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mIsBusyDialogAvailable:Z

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v4, 0x7f0a00ea

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    const v4, 0x7f0a00e9

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_2

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_2

    const/16 v4, 0x320

    if-ne p1, v4, :cond_3

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a00e8

    sparse-switch p1, :sswitch_data_1

    const v2, 0x7f0a00ed

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_1

    :sswitch_2
    const v2, 0x7f0a00ec

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :sswitch_3
    const v2, 0x7f0a00ee

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 6
    .param p1    # Lcom/android/phone/EditPhoneNumberPreference;
    .param p2    # I

    iget-object v3, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v4, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, -0x2

    if-ne p2, v3, :cond_2

    sget-object v3, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_0

    move-object v0, p1

    const-string v2, ""

    invoke-virtual {v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "simSlot"

    sget v4, Lcom/android/phone/CdmaCallWaitingSetting;->mSimId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v3, "simSlot"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    const-string v0, "*74"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    const-string v0, "*740"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v3, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v2, :cond_3

    :cond_2
    const/4 v2, -0x4

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setDisplayMode(I)V

    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    :cond_3
    sget-object v2, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-eq v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "button_cdma_cw_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mCWDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    const-string v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 5
    .param p1    # I

    iput p1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mDisplayMode:I

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallWaitingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1    # Landroid/content/Intent;
    .param p2    # I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallWaitingSetting;->mAppState:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    if-ne v0, v1, :cond_0

    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v0, Lcom/android/phone/CdmaCallWaitingSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallWaitingSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallWaitingSetting;->setAppState(Lcom/android/phone/CdmaCallWaitingSetting$AppState;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
