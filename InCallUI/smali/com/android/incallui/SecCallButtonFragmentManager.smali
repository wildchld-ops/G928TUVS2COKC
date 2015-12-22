.class public Lcom/android/incallui/SecCallButtonFragmentManager;
.super Lcom/android/incallui/BaseFragmentManager;
.source "SecCallButtonFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;
.implements Lcom/android/incallui/InCallPresenter$OnehandModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecCallButtonFragmentManager$1;,
        Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/SecCallButtonFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;",
        "Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;",
        "Lcom/android/incallui/InCallPresenter$OnehandModeListener;"
    }
.end annotation


# static fields
.field public static isCallPlus:Z


# instance fields
.field private format:Ljava/lang/String;

.field private isHasIVR:Z

.field private isInit:Z

.field private isOutGoingCall:Z

.field private isSMultiWindowOnChanged:Z

.field mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/SecCallButtonFragmentManager;->isCallPlus:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/BaseFragmentManager;-><init>(Lcom/android/incallui/BaseInCallActivity;)V

    const-string v0, "xml"

    iput-object v0, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->format:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isHasIVR:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isOutGoingCall:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isSMultiWindowOnChanged:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isInit:Z

    const-string v0, "SecCallButtonFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->log(Ljava/lang/String;)V

    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isSMultiWindowOnChanged:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    :cond_1
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_2
    return-void
.end method

.method private getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/SecCallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$SecCallButtonFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "SecCallButtonFragmentManager"

    const-string v2, "new SecVoiceCallButtonFragment() "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_1
    const-string v1, "SecCallButtonFragmentManager"

    const-string v2, "new SecCallPlusVoiceCallButtonFragment() "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    const-string v1, "SecCallButtonFragmentManager"

    const-string v2, "new SecVoiceCallButtonVCCFragment() "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    const-string v1, "SecCallButtonFragmentManager"

    const-string v2, "new SecVoiceCallButtonFolderFragment() "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVoiceCallButtonFolderFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    const-string v1, "gui_kor_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAKorFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAKorFragment;-><init>()V

    goto :goto_0

    :cond_0
    const-string v1, "gui_usa_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;-><init>()V

    goto :goto_0

    :cond_1
    const-string v1, "gui_jpn_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAJpnFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAJpnFragment;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "gui_chn_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAChnFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAChnFragment;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonHDGlobalFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonHDGlobalFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonCONFFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonCONFFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lcom/android/incallui/SecEndCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecEndCallButtonFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lcom/android/incallui/SecEndCallButtonFolderFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecEndCallButtonFolderFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lcom/android/incallui/SecInCallButtonEmptyFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecInCallButtonEmptyFragment;-><init>()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_2
    .end packed-switch
.end method

.method private getEasyModeFragment(Ljava/lang/Enum;)Landroid/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/SecCallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$SecCallButtonFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecEasyVoiceCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/incallui/SecEasyVideoCallButtonQCIFFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecEasyVideoCallButtonQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    const-string v1, "gui_kor_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAKorFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAKorFragment;-><init>()V

    goto :goto_0

    :cond_0
    const-string v1, "gui_usa_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;-><init>()V

    goto :goto_0

    :cond_1
    const-string v1, "gui_jpn_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAJpnFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAJpnFragment;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "gui_chn_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAChnFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAChnFragment;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonHDGlobalFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonHDGlobalFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/incallui/SecEasyVideoCallButtonCONFFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecEasyVideoCallButtonCONFFragment;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/android/incallui/SecEasyEndCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecEasyEndCallButtonFragment;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEasyOnehandModeFragment(Ljava/lang/Enum;)Landroid/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/SecCallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$SecCallButtonFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v1, "SecCallButtonFragmentManager"

    const-string v2, "new SecEasyOnehandVoiceCallButtonFragment() "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    const-string v1, "gui_kor_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAKorFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAKorFragment;-><init>()V

    goto :goto_0

    :cond_0
    const-string v1, "gui_usa_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;-><init>()V

    goto :goto_0

    :cond_1
    const-string v1, "gui_jpn_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAJpnFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAJpnFragment;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "gui_chn_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAChnFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAChnFragment;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonHDGlobalFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonHDGlobalFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecEasyOnehandEndCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getOnehandModeFragment(Ljava/lang/Enum;)Landroid/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/incallui/SecCallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$SecCallButtonFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    invoke-virtual {p1}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v1, "SecCallButtonFragmentManager"

    const-string v2, "new SecOnehandVoiceCallButtonFragment() "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecOnehandVoiceCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonQCIFFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    const-string v1, "gui_kor_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAKorFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAKorFragment;-><init>()V

    goto :goto_0

    :cond_0
    const-string v1, "gui_usa_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAUsaFragment;-><init>()V

    goto :goto_0

    :cond_1
    const-string v1, "gui_jpn_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAJpnFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAJpnFragment;-><init>()V

    goto :goto_0

    :cond_2
    const-string v1, "gui_chn_fragment"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAChnFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAChnFragment;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonVGAGlobalFragment;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonQVGAKorFragment;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/incallui/SecVideoCallButtonHDGlobalFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecVideoCallButtonHDGlobalFragment;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/incallui/SecOnehandEndCallButtonFragment;

    invoke-direct {v0}, Lcom/android/incallui/SecOnehandEndCallButtonFragment;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private postCheckAndSet(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange : isAutoAnswered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecCallButtonFragmentManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;

    invoke-virtual {v1, v3}, Lcom/android/incallui/SecCallButtonFragment;->setCallButtonContainerVisibility(Z)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->getSecCallCardUi()Lcom/android/incallui/SecCallCardUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Lcom/android/incallui/SecCallCardUi;->setAMView(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;
    .locals 12

    const/16 v11, 0xa

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/BaseInCallActivity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/BaseInCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/BaseInCallActivity;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInCallState "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "visual_call_center_callerid_info"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->hasOutgoingCall()Z

    move-result v7

    if-eqz v7, :cond_4

    iput-boolean v9, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isOutGoingCall:Z

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v7

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v7, v8, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v7

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v8, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecCallButtonFragmentManager;->removeCurrentFragment()V

    iput-object v6, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v7

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v7, v8, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v7

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v8, :cond_2

    :cond_5
    iput-boolean v10, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isOutGoingCall:Z

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingRejectedCall()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingMissedCall()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallUtils;->hasLiveCallToDisplay(Lcom/android/incallui/CallList;)Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-static {v7, v6, v10}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v6, "visual_call_center_callerid_info"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "onCreate VCC api "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/VisualCallCenter;->VCC_createYuloreIVRApi(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->format:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/incallui/VisualCallCenter;->VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isHasIVR:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_e

    const-string v6, "have BackgroundCall() "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_2
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-ne v6, v11, :cond_11

    if-nez v1, :cond_10

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v6, "support_folder_single_lcd"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->FOLDER_ENDCALL:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    :cond_8
    :goto_3
    const-string v6, "support_mobilecarrier"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v6

    if-eqz v6, :cond_9

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    if-ne v6, v11, :cond_a

    :cond_9
    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    :cond_a
    const-string v6, "ims_callplus"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-boolean v6, Lcom/android/incallui/SecCallButtonFragmentManager;->isCallPlus:Z

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    if-eq v3, v6, :cond_b

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->CALLPLUS_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    :cond_b
    if-nez p1, :cond_c

    iget-object v6, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v6, v3, :cond_d

    :cond_c
    const-string v6, "SecCallButtonFragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestedMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/incallui/SecCallButtonFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    iput-object v3, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    :cond_d
    iget-object v6, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;

    goto/16 :goto_0

    :cond_e
    const-string v6, "no BackgroundCall() "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    goto :goto_3

    :cond_10
    iget-object v6, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;

    goto/16 :goto_0

    :cond_11
    if-eqz v2, :cond_18

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getVideoResolution()I

    move-result v5

    if-ne v5, v9, :cond_13

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    :cond_12
    :goto_4
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->CONF_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    goto :goto_3

    :cond_13
    const/4 v6, 0x3

    if-eq v5, v6, :cond_14

    const/4 v6, 0x4

    if-ne v5, v6, :cond_15

    :cond_14
    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    goto :goto_4

    :cond_15
    const/4 v6, 0x2

    if-ne v5, v6, :cond_17

    const-string v6, "gui_kor_fragment"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->QVGA_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    goto :goto_4

    :cond_16
    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    goto :goto_4

    :cond_17
    const/4 v6, 0x6

    if-ne v5, v6, :cond_12

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->HD_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    goto :goto_4

    :cond_18
    const-string v6, "visual_call_center_callerid_info"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "visual_call_status"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v9, v6, :cond_19

    iget-boolean v6, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isHasIVR:Z

    if-eqz v6, :cond_19

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v6

    if-nez v6, :cond_19

    iget-boolean v6, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isOutGoingCall:Z

    if-eqz v6, :cond_19

    iget-boolean v6, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isSMultiWindowOnChanged:Z

    if-nez v6, :cond_19

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v6

    if-nez v6, :cond_19

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VCC_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    goto/16 :goto_3

    :cond_19
    const-string v6, "support_folder_single_lcd"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->FOLDER_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    goto/16 :goto_3

    :cond_1a
    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    goto/16 :goto_3

    :cond_1b
    iget-object v6, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;

    goto/16 :goto_0
.end method

.method protected bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecCallButtonFragmentManager;->getFragment()Lcom/android/incallui/SecCallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getFragment()Lcom/android/incallui/SecCallButtonFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragmentManager;->onDestroy()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    const-string v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandModeListener(Lcom/android/incallui/InCallPresenter$OnehandModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOnehandAnyScreenOnListener(Lcom/android/incallui/InCallPresenter$OnehandAnyScreenOnListener;)V

    :cond_0
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    :cond_1
    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;

    return-void
.end method

.method public onOnehandAnyScreenOnChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;

    return-void
.end method

.method public onOnehandModeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;

    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "SecCallButtonFragmentManager - onSMultiWindowOnChanged"

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->log(Ljava/lang/String;)V

    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->isSMultiWindowOnChanged:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/SecCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecCallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/SecCallButtonFragment;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecCallButtonFragmentManager;->postCheckAndSet(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V

    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/SecCallButtonFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecCallButtonFragmentManager;->setCurrentFragment(Lcom/android/incallui/SecCallButtonFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/SecCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/SecCallButtonFragment;

    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4

    const v0, 0x7f1001e5

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/SecCallButtonFragmentManager$1;->$SwitchMap$com$android$incallui$SecCallButtonFragmentManager$FragmentMode:[I

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    invoke-virtual {v2}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/SecCallButtonFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOneHandModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallButtonFragmentManager;->getEasyOnehandModeFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallButtonFragmentManager;->getOnehandModeFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallButtonFragmentManager;->getEasyModeFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/incallui/SecCallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
