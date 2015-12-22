.class Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
.super Ljava/lang/Object;
.source "AutoRejectPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoRejectModeInfo"
.end annotation


# instance fields
.field public mEnablePrefName:Ljava/lang/String;

.field public mModeSettingName:Ljava/lang/String;

.field public mPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/AutoRejectPreference$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/callsettings/AutoRejectPreference$1;

    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;-><init>()V

    return-void
.end method
