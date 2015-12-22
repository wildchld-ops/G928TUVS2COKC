.class public Lcom/android/incallui/SecDrivelinkInCallActivity;
.super Lcom/android/incallui/BaseInCallActivity;
.source "SecDrivelinkInCallActivity.java"


# instance fields
.field private mIsForegroundActivity:Z

.field private mIsNewOutgoingCall:Z

.field mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mPreviousLocale:Ljava/util/Locale;

.field private mSecAnswerCallManager:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;

.field private mSecCallButtonManager:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;

.field private mSecCallCardManager:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/BaseInCallActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mPreviousLocale:Ljava/util/Locale;

    return-void
.end method

.method private destroyFragmentManagers()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecCallCardManager:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecCallCardManager:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecCallCardManager:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecCallButtonManager:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecCallButtonManager:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecCallButtonManager:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecAnswerCallManager:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecAnswerCallManager:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;->onDestroy()V

    iput-object v1, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecAnswerCallManager:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;

    :cond_2
    return-void
.end method

.method private initializeFragmentManagers()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecCallCardManager:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;-><init>(Lcom/android/incallui/SecDrivelinkInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecCallCardManager:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecCallButtonManager:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;-><init>(Lcom/android/incallui/SecDrivelinkInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecCallButtonManager:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecAnswerCallManager:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;-><init>(Lcom/android/incallui/SecDrivelinkInCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mSecAnswerCallManager:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;

    :cond_2
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "received intent but it\'s not ACTION_MAIN, return"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    :cond_2
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    if-eqz v1, :cond_6

    invoke-direct {p0, v1}, Lcom/android/incallui/SecDrivelinkInCallActivity;->isEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    if-nez v6, :cond_6

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_6
    iput-boolean v8, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mIsNewOutgoingCall:Z

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- internalResolveIntent: mIsNewOutgoingCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mIsNewOutgoingCall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v6, "selectPhoneAccountAccounts"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    :goto_2
    new-instance v3, Lcom/android/incallui/SecDrivelinkInCallActivity$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecDrivelinkInCallActivity$1;-><init>(Lcom/android/incallui/SecDrivelinkInCallActivity;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0d017e

    invoke-static {v6, v7, v8, v5, v3}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->showAccountDialog(Landroid/app/FragmentManager;IZLjava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    goto/16 :goto_0

    :cond_7
    iput-boolean v7, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mIsNewOutgoingCall:Z

    goto :goto_1

    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method private isEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private setMultiWindowForDriveLinkNaviMode()V
    .locals 7

    const v6, 0x7f0a04b6

    const v5, 0x7f0a04b5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMultiWindowForDriveLinkNaviMode... Orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    goto :goto_0
.end method


# virtual methods
.method public forceFinish()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceFinish()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->destroyFragmentManagers()V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mPreviousLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mPreviousLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mPreviousLocale:Ljava/util/Locale;

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->finish()V

    return-void
.end method

.method public isForegroundActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "[MIRRORLINK] onBackPressed()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate()...  this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/BaseInCallActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0xc288400

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeNaviOn()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v0, v0, 0x80

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecDrivelinkInCallActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isConnectedMirrorLink()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mPreviousLocale:Ljava/util/Locale;

    :cond_2
    const v2, 0x7f040081

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecDrivelinkInCallActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->initializeFragmentManagers()V

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/SecDrivelinkInCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/BaseInCallComponent;)V

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->destroyFragmentManagers()V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mPreviousLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mPreviousLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mPreviousLocale:Ljava/util/Locale;

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/SecDrivelinkInCallActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecDrivelinkInCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "onPause()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onPause()V

    iput-boolean v1, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mIsNewOutgoingCall:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mIsForegroundActivity:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/BaseInCallComponent;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "onResume()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onResume()V

    iput-boolean v1, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mIsForegroundActivity:Z

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeNaviOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->setMultiWindowForDriveLinkNaviMode()V

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->refreshListeners()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecDrivelinkInCallActivity;->returnToNormalWindowMode()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    const-string v0, "onStart()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onStart()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/BaseInCallComponent;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const-string v0, "onStop()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseInCallActivity;->onStop()V

    return-void
.end method

.method returnToNormalWindowMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "returnToNormalWindowMode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecDrivelinkInCallActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->normalWindow()V

    :cond_0
    return-void
.end method
