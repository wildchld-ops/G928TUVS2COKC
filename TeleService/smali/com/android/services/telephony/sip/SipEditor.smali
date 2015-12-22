.class public Lcom/android/services/telephony/sip/SipEditor;
.super Landroid/preference/PreferenceActivity;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipEditor$3;,
        Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;,
        Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    }
.end annotation


# static fields
.field private static mOrientation:I


# instance fields
.field private mAdvancedSettings:Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

.field private mDisplayNameSet:Z

.field private mFinish:Z

.field private mHomeButtonClicked:Z

.field private mOldProfile:Landroid/net/sip/SipProfile;

.field private mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

.field private mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

.field private mUpdateRequired:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/services/telephony/sip/SipEditor;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/services/telephony/sip/SipEditor;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method private checkIfDisplayNameSet()V
    .locals 3

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mDisplayNameSet:Z

    iget-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mDisplayNameSet:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createSipProfile()Landroid/net/sip/SipProfile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->isAlwaysSendKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->stopSipService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getDefaultDisplayName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .locals 6

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    iget-object v4, v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not possible to reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlwaysSendKeepAlive()Z
    .locals 3

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v0, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    const v1, 0x7f0a003a

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isEditTextEmpty(Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V
    .locals 10

    if-eqz p1, :cond_4

    :try_start_0
    const-class v6, Landroid/net/sip/SipProfile;

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sget-object v8, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    if-ne v3, v8, :cond_1

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    const v8, 0x7f0a003a

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v8, 0x7f0a0039

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v8, ""

    :goto_3
    invoke-virtual {v3, v8}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadPreferencesFromProfile, can not load pref from profile, exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->checkIfDisplayNameSet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v0

    array-length v4, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_6

    aget-object v3, v0, v2

    iget-object v8, v3, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget v8, v3, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->initValue:I

    if-eqz v8, :cond_5

    iget v8, v3, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->initValue:I

    invoke-virtual {p0, v8}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/services/telephony/sip/SipEditor;->mDisplayNameSet:Z

    goto :goto_4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipEditor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/SipEditor$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/services/telephony/sip/SipEditor$2;-><init>(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    const-string v2, "SipEditor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static scramble(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private setRemovedProfileAndFinish()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/services/telephony/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    const v1, 0x7f0a000e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/services/telephony/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .locals 7

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    instance-of v5, p1, Landroid/preference/EditTextPreference;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Landroid/preference/EditTextPreference;

    const v6, 0x7f04007f

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setDialogLayoutResource(I)V

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    iget v5, v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object p1, v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mHomeButtonClicked:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$1;

    invoke-direct {v0, p0, p1}, Lcom/android/services/telephony/sip/SipEditor$1;-><init>(Lcom/android/services/telephony/sip/SipEditor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method private validateAndSetResult()V
    .locals 21

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v5

    array-length v12, v5

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v12, :cond_4

    aget-object v11, v5, v9

    iget-object v13, v11, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v0, v13, Landroid/preference/EditTextPreference;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v16, v13

    check-cast v16, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/services/telephony/sip/SipEditor;->isEditTextEmpty(Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;)Z

    move-result v7

    if-eqz v4, :cond_0

    if-nez v7, :cond_0

    const/4 v4, 0x0

    :cond_0
    if-eqz v7, :cond_2

    sget-object v18, Lcom/android/services/telephony/sip/SipEditor$3;->$SwitchMap$com$android$services$telephony$sip$SipEditor$PreferenceKey:[I

    invoke-virtual {v11}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    if-nez v8, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const v18, 0x7f0a0030

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v18, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-object/from16 v0, v18

    if-ne v11, v0, :cond_1

    sget-object v18, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual/range {v18 .. v18}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v18, 0x3e8

    cmp-long v18, v14, v18

    if-ltz v18, :cond_3

    const-wide/32 v18, 0xfffe

    cmp-long v18, v14, v18

    if-lez v18, :cond_1

    :cond_3
    const v18, 0x7f0a0035

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/sip/SipEditor;->finish()V

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_7

    const v18, 0x7f0a0034

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/services/telephony/sip/SipEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/sip/SipEditor;->createSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v17

    new-instance v10, Landroid/content/Intent;

    const-class v18, Lcom/android/services/telephony/sip/SipSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v18, "sip_profile"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/android/services/telephony/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    const v18, 0x7f0a000d

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "validateAndSetResult, can not create new SipProfile, exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    sget v3, Lcom/android/services/telephony/sip/SipEditor;->mOrientation:I

    if-eq v2, v3, :cond_0

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    sput v2, Lcom/android/services/telephony/sip/SipEditor;->mOrientation:I

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/sip/SipEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f04006d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipEditor;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x400

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "tablet_l_osup"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    new-instance v7, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-direct {v7, p0}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/services/telephony/sip/SipEditor;->mSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    new-instance v7, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v7, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/services/telephony/sip/SipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-static {}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;

    move-result-object v7

    iput-object v7, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    sput v7, Lcom/android/services/telephony/sip/SipEditor;->mOrientation:I

    const-string v7, "tablet_l_osup"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/services/telephony/sip/SipEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f04006d

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/sip/SipEditor;->setContentView(Landroid/view/View;)V

    :goto_0
    const v7, 0x7f07003c

    invoke-virtual {p0, v7}, Lcom/android/services/telephony/sip/SipEditor;->addPreferencesFromResource(I)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "sip_profile"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    :goto_1
    check-cast v7, Landroid/net/sip/SipProfile;

    move-object v5, v7

    check-cast v5, Landroid/net/sip/SipProfile;

    iput-object v5, p0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const/4 v1, 0x0

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_3

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/services/telephony/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const v7, 0x7f0400b3

    invoke-virtual {p0, v7}, Lcom/android/services/telephony/sip/SipEditor;->setContentView(I)V

    goto :goto_0

    :cond_2
    const-string v7, "profile"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    const v7, 0x7f0a0021

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    :cond_4
    new-instance v7, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

    invoke-direct {v7, p0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;-><init>(Lcom/android/services/telephony/sip/SipEditor;)V

    iput-object v7, p0, Lcom/android/services/telephony/sip/SipEditor;->mAdvancedSettings:Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

    invoke-direct {p0, v5}, Lcom/android/services/telephony/sip/SipEditor;->loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x2

    const v1, 0x7f0a0010

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0a000f

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f0a000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->validateAndSetResult()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->validateAndSetResult()V

    goto :goto_0

    :sswitch_1
    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->validateAndSetResult()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->finish()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->setRemovedProfileAndFinish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mHomeButtonClicked:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->invalidateOptionsMenu()V

    :goto_0
    return v2

    :cond_1
    if-nez p2, :cond_3

    const-string v0, ""

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    :goto_2
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    check-cast p1, Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->checkIfDisplayNameSet()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    invoke-static {v0}, Lcom/android/services/telephony/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iput-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mHomeButtonClicked:Z

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mAdvancedSettings:Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->show()V

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
