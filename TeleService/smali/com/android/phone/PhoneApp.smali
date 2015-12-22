.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"


# static fields
.field private static sMe:Lcom/android/phone/PhoneApp;


# instance fields
.field mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

.field mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-void
.end method

.method public static getInstance()Lcom/android/phone/PhoneApp;
    .locals 2

    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No PhoneApp here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    const-string v0, "PhoneApp"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneGlobals;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->onCreate()V

    new-instance v0, Lcom/android/services/telephony/TelephonyGlobals;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyGlobals;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyGlobals;->onCreate()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->initialize(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeature(Landroid/content/Context;)V

    goto :goto_0
.end method
