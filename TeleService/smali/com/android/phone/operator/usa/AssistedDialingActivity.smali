.class public Lcom/android/phone/operator/usa/AssistedDialingActivity;
.super Landroid/preference/PreferenceActivity;
.source "AssistedDialingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field private static final RESET_COUNTRY_DETAILS:Landroid/net/Uri;

.field private static final UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

.field public static area:Ljava/lang/String;

.field public static nationalnumberlength:Ljava/lang/String;


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field cr:Landroid/content/ContentResolver;

.field private mAreaCode:Landroid/preference/EditTextPreference;

.field private mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Landroid/preference/EditTextPreference;

.field private mIDD:Landroid/preference/EditTextPreference;

.field private mNDD:Landroid/preference/EditTextPreference;

.field private mNationalNumberLength:Landroid/preference/EditTextPreference;

.field private mReferenceText:Landroid/preference/PreferenceScreen;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const-string v0, "content://assisteddialing/mcc_otalookup/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    const-string v0, "content://assisteddialing/mcc_otalookup/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    sput-object v1, Lcom/android/phone/operator/usa/AssistedDialingActivity;->area:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/operator/usa/AssistedDialingActivity;->nationalnumberlength:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/usa/AssistedDialingActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/operator/usa/AssistedDialingActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private displayHelp()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a04c8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a04d6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a04d4

    new-instance v3, Lcom/android/phone/operator/usa/AssistedDialingActivity$2;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity$2;-><init>(Lcom/android/phone/operator/usa/AssistedDialingActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private getReferenceCountryAndSet()V
    .locals 15

    const/4 v2, 0x0

    const/4 v14, 0x3

    const-string v0, "AssistedDialingActivity"

    const-string v1, "getReferenceCountry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/operator/usa/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/operator/usa/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x9

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-nez v6, :cond_0

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v14, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v11, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    if-nez v12, :cond_1

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v14, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_3

    if-eqz v6, :cond_b

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_area_code"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_4

    if-eqz v9, :cond_c

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_idd"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_5

    if-eqz v13, :cond_d

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_ndd"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_6

    if-eqz v8, :cond_e

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_country_code"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_7

    if-eqz v12, :cond_f

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_nnl"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    :goto_6
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void

    :cond_9
    const-string v0, "AssistedDialingActivity"

    const-string v1, "mdn is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string v0, "AssistedDialingActivity"

    const-string v1, "mdn is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_area_code"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    const v1, 0x7f0a04da

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    const v1, 0x7f0a04d8

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    const v1, 0x7f0a04d9

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    const v1, 0x7f0a04d7

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_nnl"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    const v1, 0x7f0a04db

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_6
.end method

.method private resetDetails()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AssistedDialingActivity"

    const-string v1, "resetDetails"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/operator/usa/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/operator/usa/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getReferenceCountryAndSet()V

    return-void
.end method

.method private updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v1, "AssistedDialingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDetails uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "AssistedDialingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0681

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0683

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/16 v8, 0x10

    const/4 v9, -0x2

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f040007

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "AssistedDialingActivity"

    const-string v6, "support Zero UI"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f040009

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->setContentView(I)V

    const v5, 0x7f10001a

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v5, 0x7f10001b

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v5, 0x7f100019

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarView:Landroid/view/View;

    const/4 v2, 0x0

    const-string v5, "global_network_cdma_gsm_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/operator/usa/AssistedDialingEnabler;->isAssistedDialingOn(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarView:Landroid/view/View;

    new-instance v6, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;

    invoke-direct {v6, p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;-><init>(Lcom/android/phone/operator/usa/AssistedDialingActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string v5, "AssistedDialingActivity"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    move-object v1, p0

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "AssistedDialingActivity"

    const-string v6, "not support Zero UI"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7, v7, v3, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    new-instance v5, Lcom/android/phone/operator/usa/AssistedDialingEnabler;

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v5, v6, v7}, Lcom/android/phone/operator/usa/AssistedDialingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

    :cond_2
    const-string v5, "button_current_country_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    const-string v5, "Area_city_code"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    const-string v5, "IDD_prefix"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    const-string v5, "NDD_prefix"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    const-string v5, "country_code"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    const-string v5, "National_number_length"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    const-string v5, "config_hide_status_bar"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string v0, "AssistedDialingActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
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
    invoke-direct {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->resetDetails()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->displayHelp()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->onBackPressed()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f100200 -> :sswitch_0
        0x7f100201 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string v0, "AssistedDialingActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/AssistedDialingEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const-string v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange preference : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_reference_country"

    const/16 v5, 0xd4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_area_code"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "area_city_code"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x1

    return v3

    :cond_2
    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_idd"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "idd"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_ndd"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "ndd"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_country_code"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "countrycode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_nnl"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v3, Lcom/android/phone/operator/usa/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "national_num_len"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const-string v1, "AssistedDialingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick preference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_area_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_idd"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_ndd"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_nnl"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const v2, 0x7f100200

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200fb

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v2, 0x7f100201

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0200fa

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v0, "AssistedDialingActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getReferenceCountryAndSet()V

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/operator/usa/AssistedDialingEnabler;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/AssistedDialingEnabler;->resume()V

    :cond_0
    const-string v0, "menu_simplification"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0681

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0683

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
